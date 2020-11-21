function varargout = my_app_fig_txt(varargin)
% MY_APP_FIG_TXT MATLAB code for my_app_fig_txt.fig
%      MY_APP_FIG_TXT, by itself, creates a new MY_APP_FIG_TXT or raises the existing
%      singleton*.
%
%      H = MY_APP_FIG_TXT returns the handle to a new MY_APP_FIG_TXT or the handle to
%      the existing singleton*.
%
%      MY_APP_FIG_TXT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_APP_FIG_TXT.M with the given input arguments.
%
%      MY_APP_FIG_TXT('Property','Value',...) creates a new MY_APP_FIG_TXT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_app_fig_txt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_app_fig_txt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_app_fig_txt

% Last Modified by GUIDE v2.5 07-Apr-2020 22:49:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_app_fig_txt_OpeningFcn, ...
                   'gui_OutputFcn',  @my_app_fig_txt_OutputFcn, ...
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


% --- Executes just before my_app_fig_txt is made visible.
function my_app_fig_txt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_app_fig_txt (see VARARGIN)

% Choose default command line output for my_app_fig_txt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes my_app_fig_txt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_app_fig_txt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function enter_text_edit_Callback(hObject, eventdata, handles)
% hObject    handle to enter_text_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enter_text_edit as text
%        str2double(get(hObject,'String')) returns contents of enter_text_edit as a double


% --- Executes during object creation, after setting all properties.
function enter_text_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enter_text_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in validation_button.
function validation_button_Callback(hObject, eventdata, handles)
% hObject    handle to validation_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
txt = get(handles.enter_text_edit,'string')
[code1,code2,result,tc1,rc1,tc2,rc2]=myapp_huffman_shannon(txt)
    set(handles.huffman,'string',code1)
    set(handles.shannon,'string',code2)
    set(handles.taux1,'string',tc1)
    set(handles.rapport1,'string',rc1)
    set(handles.taux2,'string',tc2)
    set(handles.rapport2,'string',rc2)
menu(result,'ok')

function huffman_Callback(hObject, eventdata, handles)
% hObject    handle to huffman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matrice_edit as text
%        str2double(get(hObject,'String')) returns contents of matrice_edit as a double


% --- Executes during object creation, after setting all properties.
function huffman_CreateFcn(hObject, eventdata, handles)
% hObject    handle to huffman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function shannon_Callback(hObject, eventdata, handles)
% hObject    handle to shannon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matrice_edit as text
%        str2double(get(hObject,'String')) returns contents of matrice_edit as a double


% --- Executes during object creation, after setting all properties.
function shannon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to shannon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taux1_Callback(hObject, eventdata, handles)
% hObject    handle to taux1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taux1 as text
%        str2double(get(hObject,'String')) returns contents of taux1 as a double


% --- Executes during object creation, after setting all properties.
function taux1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taux1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rapport1_Callback(hObject, eventdata, handles)
% hObject    handle to rapport1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rapport1 as text
%        str2double(get(hObject,'String')) returns contents of rapport1 as a double


% --- Executes during object creation, after setting all properties.
function rapport1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rapport1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taux2_Callback(hObject, eventdata, handles)
% hObject    handle to taux2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taux2 as text
%        str2double(get(hObject,'String')) returns contents of taux2 as a double


% --- Executes during object creation, after setting all properties.
function taux2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taux2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rapport2_Callback(hObject, eventdata, handles)
% hObject    handle to rapport2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rapport2 as text
%        str2double(get(hObject,'String')) returns contents of rapport2 as a double


% --- Executes during object creation, after setting all properties.
function rapport2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rapport2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in retour.
function retour_Callback(hObject, eventdata, handles)
% hObject    handle to retour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(my_app_fig_txt)
my_app
