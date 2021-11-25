function varargout = HRM(varargin)
% HRM MATLAB code for HRM.fig
%      HRM, by itself, creates a new HRM or raises the existing
%      singleton*.
%
%      H = HRM returns the handle to a new HRM or the handle to
%      the existing singleton*.
%
%      HRM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HRM.M with the given input arguments.
%
%      HRM('Property','Value',...) creates a new HRM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HRM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HRM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HRM

% Last Modified by GUIDE v2.5 16-Oct-2021 08:42:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HRM_OpeningFcn, ...
                   'gui_OutputFcn',  @HRM_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before HRM is made visible.
function HRM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HRM (see VARARGIN)

% Choose default command line output for HRM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HRM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HRM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function myData_Callback(hObject, eventdata, handles)
% hObject    handle to myData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of myData as text
%        str2double(get(hObject,'String')) returns contents of myData as a double


% --- Executes during object creation, after setting all properties.
function myData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to myData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in send.
function send_Callback(hObject, eventdata, handles)
% hObject    handle to send (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global port;
data = get (handles.myData, 'string' );
fopen(port);
fprintf(port, data);
fclose(port);

% --- Executes on button press in read.
function read_Callback(hObject, eventdata, handles)
% hObject    handle to read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global port;
global timeClock;
global timeValue;
stopBit = 0;
port.BytesAvailableFcn ={@serialCallback};
fopen(port);
timeClock = duration(0,0,0,0);

% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global port;
fclose(port);
delete(port);
clc;

% --- Executes on button press in open.
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc; 
global port;
global timeValue;
global preVal;
global startTime;
global timeClock;
timeClock = duration(0,0,0,0);
startTime = datetime('now');
timeValue = 0;
preVal = 0;
figure(1);
port = serial('COM2', 'BaudRate', 9600);
