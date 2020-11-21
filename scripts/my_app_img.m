function varargout = my_app_img(varargin)
% MY_APP_IMG MATLAB code for my_app_img.fig
%      MY_APP_IMG, by itself, creates a new MY_APP_IMG or raises the existing
%      singleton*.
%
%      H = MY_APP_IMG returns the handle to a new MY_APP_IMG or the handle to
%      the existing singleton*.
%
%      MY_APP_IMG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_APP_IMG.M with the given input arguments.
%
%      MY_APP_IMG('Property','Value',...) creates a new MY_APP_IMG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_app_img_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_app_img_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_app_img

% Last Modified by GUIDE v2.5 08-Apr-2020 00:10:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_app_img_OpeningFcn, ...
                   'gui_OutputFcn',  @my_app_img_OutputFcn, ...
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


% --- Executes just before my_app_img is made visible.
function my_app_img_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_app_img (see VARARGIN)

% Choose default command line output for my_app_img
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes my_app_img wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_app_img_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function matrice_edit_Callback(hObject, eventdata, handles)
% hObject    handle to matrice_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matrice_edit as text
%        str2double(get(hObject,'String')) returns contents of matrice_edit as a double


% --- Executes during object creation, after setting all properties.
x   function matrice_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matrice_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function size_edit_Callback(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_edit as text
%        str2double(get(hObject,'String')) returns contents of size_edit as a double


% --- Executes during object creation, after setting all properties.
function size_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in validation.
function validation_Callback(hObject, eventdata, handles)
% hObject    handle to validation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
text = get(handles.matrice_edit,'string')
arr = str2double(split(text))
size = str2double(get(handles.size_edit,'string'))
carre_size=size*size
if (carre_size == length(arr))
    matrice=[]
    for i=1:size
    for j=1:size
        matrice(i,j) = arr(((i-1)*size)+j);
    end
    end

    s=lecture(matrice)
    set(handles.lecture,'string',s)
    axes(handles.axes1)
    imshow(matrice)
else
    error_matrix_size_msg
   %choice = menu('size and matrix values are not suitable. do you like to reinser them ?','yes','no')
   %if choice == 1
       %close(my_app_img)
       %my_app_img
   %else
   %    close(my_app_img)
   %end
end    

function lecture_Callback(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size_edit as text
%        str2double(get(hObject,'String')) returns contents of size_edit as a double


% --- Executes during object creation, after setting all properties.
function lecture_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in retour.
function retour_Callback(hObject, eventdata, handles)
% hObject    handle to retour (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(my_app_img)
my_app
