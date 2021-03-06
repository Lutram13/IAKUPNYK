function varargout = latres(varargin)
% LATRES MATLAB code for latres.fig
%      LATRES, by itself, creates a new LATRES or raises the existing
%      singleton*.
%
%      H = LATRES returns the handle to a new LATRES or the handle to
%      the existing singleton*.
%
%      LATRES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATRES.M with the given input arguments.
%
%      LATRES('Property','Value',...) creates a new LATRES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before latres_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to latres_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help latres

% Last Modified by GUIDE v2.5 22-Nov-2017 09:31:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @latres_OpeningFcn, ...
                   'gui_OutputFcn',  @latres_OutputFcn, ...
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


% --- Executes just before latres is made visible.
function latres_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to latres (see VARARGIN)

% Choose default command line output for latres
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes latres wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = latres_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pakaian_Callback(hObject, eventdata, handles)
% hObject    handle to pakaian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pakaian as text
%        str2double(get(hObject,'String')) returns contents of pakaian as a double


% --- Executes during object creation, after setting all properties.
function pakaian_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pakaian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kosmetik_Callback(hObject, eventdata, handles)
% hObject    handle to kosmetik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kosmetik as text
%        str2double(get(hObject,'String')) returns contents of kosmetik as a double


% --- Executes during object creation, after setting all properties.
function kosmetik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kosmetik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aksesoris_Callback(hObject, eventdata, handles)
% hObject    handle to aksesoris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aksesoris as text
%        str2double(get(hObject,'String')) returns contents of aksesoris as a double


% --- Executes during object creation, after setting all properties.
function aksesoris_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aksesoris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function makanan_Callback(hObject, eventdata, handles)
% hObject    handle to makanan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of makanan as text
%        str2double(get(hObject,'String')) returns contents of makanan as a double


% --- Executes during object creation, after setting all properties.
function makanan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to makanan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputPakaian = get(handles.pakaian,'String');
inputKosmetik = get(handles.kosmetik,'String');
inputAksesoris = get(handles.aksesoris,'String');
inputMakanan = get(handles.makanan,'String');

inputPakaian2 = str2num(inputPakaian);
inputKosmetik2 = str2num(inputKosmetik);
inputAksesoris2 = str2num(inputAksesoris);
inputMakanan2 = str2num(inputMakanan);

gabung = [inputPakaian2 inputKosmetik2 inputAksesoris2 inputMakanan2];
a = readfis('latres');
e = evalfis(gabung,a);
h = num2str(e);
if (h>70)
    set(handles.output,'String','Sangat Diminati');
else if (h>=50 && h<=70)
        set(handles.output,'String','Cukup Diminati');
    else if h<50
        set(handles.output,'String','Kurang Diminati');
        end
    end
end

%%set(handles.output,'String',h);


function output_Callback(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of output as text
%        str2double(get(hObject,'String')) returns contents of output as a double


% --- Executes during object creation, after setting all properties.
function output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
