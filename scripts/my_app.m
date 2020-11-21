function varargout = my_app(varargin)
% MY_APP MATLAB code for my_app.fig
%      MY_APP, by itself, creates a new MY_APP or raises the existing
%      singleton*.
%
%      H = MY_APP returns the handle to a new MY_APP or the handle to
%      the existing singleton*.
%
%      MY_APP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_APP.M with the given input arguments.
%
%      MY_APP('Property','Value',...) creates a new MY_APP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_app_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_app_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_app

% Last Modified by GUIDE v2.5 07-Apr-2020 22:38:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_app_OpeningFcn, ...
                   'gui_OutputFcn',  @my_app_OutputFcn, ...
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


% --- Executes just before my_app is made visible.
function my_app_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_app (see VARARGIN)

% Choose default command line output for my_app
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes my_app wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_app_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function radio_off(handles)
set(handles.text_edit,'value',0)
set(handles.image_edit,'value',0)


% --- Executes on button press in text_edit.
function text_edit_Callback(hObject, eventdata, handles)
% hObject    handle to text_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of text_edit
radio_off(handles)
set(handles.text_edit,'value',1)
set(handles.image_edit,'value',0)

% --- Executes on button press in image_edit.
function image_edit_Callback(hObject, eventdata, handles)
% hObject    handle to image_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of image_edit
radio_off(handles)
set(handles.image_edit,'value',1)
set(handles.text_edit,'value',0)


% --- Executes on button press in validation_button.
function validation_button_Callback(hObject, eventdata, handles)
% hObject    handle to validation_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
text = get(handles.text_edit,'value')
image = get(handles.image_edit,'value')
if text == 1 
    close(my_app)
    my_app_fig_txt
end
if image == 1 
    close(my_app)
    my_app_img
end
