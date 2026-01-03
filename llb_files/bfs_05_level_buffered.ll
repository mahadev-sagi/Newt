; ModuleID = 'BFS/bfs_05_level_buffered.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%struct.Node = type { i32, %struct.Node*, %struct.Node*, %struct.Node* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl" }
%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl" = type { %struct.Node**, %struct.Node**, %struct.Node** }
%"class.__gnu_cxx::__normal_iterator" = type { %struct.Node** }
%"class.std::allocator.2" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.9" = type { %struct.Node** }
%"class.std::allocator" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.5" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.3" = type { i8 }
%"class.std::move_iterator" = type { i32* }
%"class.std::move_iterator.10" = type { %struct.Node** }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [12 x i8] c"numbers.txt\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [23 x i8] c"Error: Could not open \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #0
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define void @_Z18bfs_level_bufferedP4NodeRSt6vectorIiSaIiEE(%struct.Node* %root, %"class.std::vector"* %result) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %"class.std::vector"*, align 8
  %visit = alloca %"class.std::vector.0", align 8
  %visitNext = alloca %"class.std::vector.0", align 8
  %__range = alloca %"class.std::vector.0"*, align 8
  %__begin = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %u = alloca %struct.Node*, align 8
  store %struct.Node* %root, %struct.Node** %1, align 8
  store %"class.std::vector"* %result, %"class.std::vector"** %2, align 8
  %3 = load %struct.Node** %1, align 8
  %4 = icmp ne %struct.Node* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %0
  br label %47

; <label>:6                                       ; preds = %0
  call void @_ZNSt6vectorIP4NodeSaIS1_EEC2Ev(%"class.std::vector.0"* %visit) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EEC2Ev(%"class.std::vector.0"* %visitNext) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %visit, %struct.Node** %1)
  br label %7

; <label>:7                                       ; preds = %43, %6
  %8 = call zeroext i1 @_ZNKSt6vectorIP4NodeSaIS1_EE5emptyEv(%"class.std::vector.0"* %visit) #0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %46

; <label>:10                                      ; preds = %7
  store %"class.std::vector.0"* %visit, %"class.std::vector.0"** %__range, align 8
  %11 = load %"class.std::vector.0"** %__range, align 8
  %12 = call %struct.Node** @_ZNSt6vectorIP4NodeSaIS1_EE5beginEv(%"class.std::vector.0"* %11) #0
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__begin, i32 0, i32 0
  store %struct.Node** %12, %struct.Node*** %13
  %14 = load %"class.std::vector.0"** %__range, align 8
  %15 = call %struct.Node** @_ZNSt6vectorIP4NodeSaIS1_EE3endEv(%"class.std::vector.0"* %14) #0
  %16 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__end, i32 0, i32 0
  store %struct.Node** %15, %struct.Node*** %16
  br label %17

; <label>:17                                      ; preds = %41, %10
  %18 = call zeroext i1 @_ZN9__gnu_cxxneIPP4NodeSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* %__begin, %"class.__gnu_cxx::__normal_iterator"* %__end) #0
  br i1 %18, label %19, label %43

; <label>:19                                      ; preds = %17
  %20 = call %struct.Node** @_ZNK9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__begin) #0
  %21 = load %struct.Node** %20
  store %struct.Node* %21, %struct.Node** %u, align 8
  %22 = load %"class.std::vector"** %2, align 8
  %23 = load %struct.Node** %u, align 8
  %24 = getelementptr inbounds %struct.Node* %23, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %22, i32* %24)
  %25 = load %struct.Node** %u, align 8
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 1
  %27 = load %struct.Node** %26, align 8
  %28 = icmp ne %struct.Node* %27, null
  br i1 %28, label %29, label %32

; <label>:29                                      ; preds = %19
  %30 = load %struct.Node** %u, align 8
  %31 = getelementptr inbounds %struct.Node* %30, i32 0, i32 1
  call void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %visitNext, %struct.Node** %31)
  br label %32

; <label>:32                                      ; preds = %29, %19
  %33 = load %struct.Node** %u, align 8
  %34 = getelementptr inbounds %struct.Node* %33, i32 0, i32 2
  %35 = load %struct.Node** %34, align 8
  %36 = icmp ne %struct.Node* %35, null
  br i1 %36, label %37, label %40

; <label>:37                                      ; preds = %32
  %38 = load %struct.Node** %u, align 8
  %39 = getelementptr inbounds %struct.Node* %38, i32 0, i32 2
  call void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %visitNext, %struct.Node** %39)
  br label %40

; <label>:40                                      ; preds = %37, %32
  br label %41

; <label>:41                                      ; preds = %40
  %42 = call %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__begin) #0
  br label %17

; <label>:43                                      ; preds = %17
  %44 = call %"class.std::vector.0"* @_ZSt4moveIRSt6vectorIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::vector.0"* %visitNext) #0
  %45 = call %"class.std::vector.0"* @_ZNSt6vectorIP4NodeSaIS1_EEaSEOS3_(%"class.std::vector.0"* %visit, %"class.std::vector.0"* %44) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EE5clearEv(%"class.std::vector.0"* %visitNext) #0
  br label %7

; <label>:46                                      ; preds = %7
  call void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector.0"* %visitNext) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector.0"* %visit) #0
  br label %47

; <label>:47                                      ; preds = %46, %5
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2Ev(%"struct.std::_Vector_base.1"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector.0"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"class.std::vector.0"** %1
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 1
  %7 = load %struct.Node*** %6, align 8
  %8 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %9, i32 0, i32 2
  %11 = load %struct.Node*** %10, align 8
  %12 = icmp ne %struct.Node** %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base.1"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %15 to %"class.std::allocator.2"*
  %17 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load %struct.Node*** %19, align 8
  %21 = load %struct.Node*** %2, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.2"* %16, %struct.Node** %20, %struct.Node** %21)
  %22 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base.1"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %23, i32 0, i32 1
  %25 = load %struct.Node*** %24, align 8
  %26 = getelementptr inbounds %struct.Node** %25, i32 1
  store %struct.Node** %26, %struct.Node*** %24, align 8
  br label %29

; <label>:27                                      ; preds = %0
  %28 = load %struct.Node*** %2, align 8
  call void @_ZNSt6vectorIP4NodeSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_(%"class.std::vector.0"* %3, %struct.Node** %28)
  br label %29

; <label>:29                                      ; preds = %27, %13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt6vectorIP4NodeSaIS1_EE5emptyEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %4 = load %"class.std::vector.0"** %1
  %5 = call %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EE5beginEv(%"class.std::vector.0"* %4) #0
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.9"* %2, i32 0, i32 0
  store %struct.Node** %5, %struct.Node*** %6
  %7 = call %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EE3endEv(%"class.std::vector.0"* %4) #0
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.9"* %3, i32 0, i32 0
  store %struct.Node** %7, %struct.Node*** %8
  %9 = call zeroext i1 @_ZN9__gnu_cxxeqIPKP4NodeSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(%"class.__gnu_cxx::__normal_iterator.9"* %2, %"class.__gnu_cxx::__normal_iterator.9"* %3) #0
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt6vectorIP4NodeSaIS1_EE5beginEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %2
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %1, %struct.Node*** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %struct.Node*** %7
  ret %struct.Node** %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt6vectorIP4NodeSaIS1_EE3endEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %3 = load %"class.std::vector.0"** %2
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %1, %struct.Node*** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load %struct.Node*** %7
  ret %struct.Node** %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxneIPP4NodeSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(%"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"* %__rhs) #4 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %4 = call %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %3) #0
  %5 = load %struct.Node*** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %7 = call %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %6) #0
  %8 = load %struct.Node*** %7
  %9 = icmp ne %struct.Node** %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNK9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %this, i32* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  %7 = load i32** %6, align 8
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 2
  %11 = load i32** %10, align 8
  %12 = icmp ne i32* %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %15 to %"class.std::allocator"*
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load i32** %19, align 8
  %21 = load i32** %2, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %16, i32* %20, i32* %21)
  %22 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %23, i32 0, i32 1
  %25 = load i32** %24, align 8
  %26 = getelementptr inbounds i32* %25, i32 1
  store i32* %26, i32** %24, align 8
  br label %29

; <label>:27                                      ; preds = %0
  %28 = load i32** %2, align 8
  call void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector"* %3, i32* %28)
  br label %29

; <label>:29                                      ; preds = %27, %13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  %5 = getelementptr inbounds %struct.Node** %4, i32 1
  store %struct.Node** %5, %struct.Node*** %3, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZNSt6vectorIP4NodeSaIS1_EEaSEOS3_(%"class.std::vector.0"* %this, %"class.std::vector.0"* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %__move_storage = alloca i8, align 1
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"** %1
  store i8 1, i8* %__move_storage, align 1
  %5 = load %"class.std::vector.0"** %2, align 8
  %6 = call %"class.std::vector.0"* @_ZSt4moveIRSt6vectorIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::vector.0"* %5) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE(%"class.std::vector.0"* %4, %"class.std::vector.0"* %6) #0
  ret %"class.std::vector.0"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.0"* @_ZSt4moveIRSt6vectorIP4NodeSaIS2_EEEONSt16remove_referenceIT_E4typeEOS7_(%"class.std::vector.0"* %__t) #3 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %__t, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1, align 8
  ret %"class.std::vector.0"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE5clearEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %5, align 8
  call void @_ZNSt6vectorIP4NodeSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.0"* %2, %struct.Node** %6) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load %struct.Node*** %9, align 8
  %11 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %12 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %11) #0
  call void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %6, %struct.Node** %10, %"class.std::allocator.2"* %12)
  %13 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %13) #0
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Node* @_Z6insertP4Nodei(%struct.Node* %root, i32 %val) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %struct.Node*, align 8
  %3 = alloca i32, align 4
  store %struct.Node* %root, %struct.Node** %2, align 8
  store i32 %val, i32* %3, align 4
  %4 = load %struct.Node** %2, align 8
  %5 = icmp ne %struct.Node* %4, null
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = call noalias i8* @_Znwm(i64 32) #8
  %8 = bitcast i8* %7 to %struct.Node*
  %9 = load i32* %3, align 4
  call void @_ZN4NodeC2Ei(%struct.Node* %8, i32 %9)
  store %struct.Node* %8, %struct.Node** %1
  br label %44

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

; <label>:16                                      ; preds = %10
  %17 = load %struct.Node** %2, align 8
  %18 = getelementptr inbounds %struct.Node* %17, i32 0, i32 1
  %19 = load %struct.Node** %18, align 8
  %20 = load i32* %3, align 4
  %21 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %19, i32 %20)
  %22 = load %struct.Node** %2, align 8
  %23 = getelementptr inbounds %struct.Node* %22, i32 0, i32 1
  store %struct.Node* %21, %struct.Node** %23, align 8
  %24 = load %struct.Node** %2, align 8
  %25 = load %struct.Node** %2, align 8
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 1
  %27 = load %struct.Node** %26, align 8
  %28 = getelementptr inbounds %struct.Node* %27, i32 0, i32 3
  store %struct.Node* %24, %struct.Node** %28, align 8
  br label %42

; <label>:29                                      ; preds = %10
  %30 = load %struct.Node** %2, align 8
  %31 = getelementptr inbounds %struct.Node* %30, i32 0, i32 2
  %32 = load %struct.Node** %31, align 8
  %33 = load i32* %3, align 4
  %34 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %32, i32 %33)
  %35 = load %struct.Node** %2, align 8
  %36 = getelementptr inbounds %struct.Node* %35, i32 0, i32 2
  store %struct.Node* %34, %struct.Node** %36, align 8
  %37 = load %struct.Node** %2, align 8
  %38 = load %struct.Node** %2, align 8
  %39 = getelementptr inbounds %struct.Node* %38, i32 0, i32 2
  %40 = load %struct.Node** %39, align 8
  %41 = getelementptr inbounds %struct.Node* %40, i32 0, i32 3
  store %struct.Node* %37, %struct.Node** %41, align 8
  br label %42

; <label>:42                                      ; preds = %29, %16
  %43 = load %struct.Node** %2, align 8
  store %struct.Node* %43, %struct.Node** %1
  br label %44

; <label>:44                                      ; preds = %42, %6
  %45 = load %struct.Node** %1
  ret %struct.Node* %45
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeC2Ei(%struct.Node* %this, i32 %v) unnamed_addr #3 align 2 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca i32, align 4
  store %struct.Node* %this, %struct.Node** %1, align 8
  store i32 %v, i32* %2, align 4
  %3 = load %struct.Node** %1
  %4 = getelementptr inbounds %struct.Node* %3, i32 0, i32 0
  %5 = load i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.Node* %3, i32 0, i32 1
  store %struct.Node* null, %struct.Node** %6, align 8
  %7 = getelementptr inbounds %struct.Node* %3, i32 0, i32 2
  store %struct.Node* null, %struct.Node** %7, align 8
  %8 = getelementptr inbounds %struct.Node* %3, i32 0, i32 3
  store %struct.Node* null, %struct.Node** %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator.5", align 1
  %file = alloca %"class.std::basic_ifstream", align 8
  %5 = alloca i32
  %num = alloca i32, align 4
  %root = alloca %struct.Node*, align 8
  %result = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.5"* %4)
  call void @_ZNSaIcED1Ev(%"class.std::allocator.5"* %4) #0
  %6 = load i32* %2, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %0
  %9 = load i8*** %3, align 8
  %10 = getelementptr inbounds i8** %9, i64 1
  %11 = load i8** %10, align 8
  %12 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"* %filename, i8* %11)
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %filename) #0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"* %file, i8* %14, i32 8)
  %15 = call zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(%"class.std::basic_ifstream"* %file)
  br i1 %15, label %20, label %16

; <label>:16                                      ; preds = %13
  %17 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* @_ZSt4cerr, i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  %18 = call %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* %17, %"class.std::__cxx11::basic_string"* %filename)
  %19 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %18, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 1, i32* %1
  store i32 1, i32* %5
  br label %59

; <label>:20                                      ; preds = %13
  store %struct.Node* null, %struct.Node** %root, align 8
  br label %21

; <label>:21                                      ; preds = %33, %20
  %22 = bitcast %"class.std::basic_ifstream"* %file to %"class.std::basic_istream"*
  %23 = call %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %22, i32* %num)
  %24 = bitcast %"class.std::basic_istream"* %23 to i8**
  %25 = load i8** %24
  %26 = getelementptr i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64* %27
  %29 = bitcast %"class.std::basic_istream"* %23 to i8*
  %30 = getelementptr inbounds i8* %29, i64 %28
  %31 = bitcast i8* %30 to %"class.std::basic_ios"*
  %32 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* %31)
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %21
  %34 = load %struct.Node** %root, align 8
  %35 = load i32* %num, align 4
  %36 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %34, i32 %35)
  store %struct.Node* %36, %struct.Node** %root, align 8
  br label %21

; <label>:37                                      ; preds = %21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %result) #0
  %38 = load %struct.Node** %root, align 8
  call void @_Z18bfs_level_bufferedP4NodeRSt6vectorIiSaIiEE(%struct.Node* %38, %"class.std::vector"* %result)
  store i64 0, i64* %i, align 8
  br label %39

; <label>:39                                      ; preds = %54, %37
  %40 = load i64* %i, align 8
  %41 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %57

; <label>:43                                      ; preds = %39
  %44 = load i64* %i, align 8
  %45 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %result, i64 %44) #0
  %46 = load i32* %45
  %47 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %46)
  %48 = load i64* %i, align 8
  %49 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %50 = sub i64 %49, 1
  %51 = icmp eq i64 %48, %50
  %52 = select i1 %51, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)
  %53 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %47, i8* %52)
  br label %54

; <label>:54                                      ; preds = %43
  %55 = load i64* %i, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %i, align 8
  br label %39

; <label>:57                                      ; preds = %39
  %58 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %1
  store i32 1, i32* %5
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %result) #0
  br label %59

; <label>:59                                      ; preds = %57, %16
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %file) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %filename) #0
  %60 = load i32* %1
  ret i32 %60
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.5"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.5"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.5"*) #2

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(%"class.std::basic_ifstream"*) #1

declare %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"*, %"class.std::__cxx11::basic_string"*) #1

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i32** %9, align 8
  %11 = ptrtoint i32* %6 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  ret i64 %14
}

declare %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i32* %7, i64 %8
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load i32** %9, align 8
  %11 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %12 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %6, i32* %10, %"class.std::allocator"* %12)
  %13 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %13) #0
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator"*) #4 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load i32** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load i32** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load i32** %10, align 8
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %2, i32* %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %this, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.std::allocator"*
  %10 = load i32** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* %__a, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load i32** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %5, i32* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = load i32** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32*, i32*) #3 align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE15_M_erase_at_endEPS1_(%"class.std::vector.0"* %this, %struct.Node** %__pos) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %struct.Node** %__pos, %struct.Node*** %2, align 8
  %3 = load %"class.std::vector.0"** %1
  %4 = load %struct.Node*** %2, align 8
  %5 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %struct.Node*** %7, align 8
  %9 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %10 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %9) #0
  call void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %4, %struct.Node** %8, %"class.std::allocator.2"* %10)
  %11 = load %struct.Node*** %2, align 8
  %12 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %13, i32 0, i32 1
  store %struct.Node** %11, %struct.Node*** %14, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %__first, %struct.Node** %__last, %"class.std::allocator.2"*) #4 {
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  store %struct.Node** %__first, %struct.Node*** %2, align 8
  store %struct.Node** %__last, %struct.Node*** %3, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %4, align 8
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node*** %3, align 8
  call void @_ZSt8_DestroyIPP4NodeEvT_S3_(%struct.Node** %5, %struct.Node** %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPP4NodeEvT_S3_(%struct.Node** %__first, %struct.Node** %__last) #4 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  %3 = load %struct.Node*** %1, align 8
  %4 = load %struct.Node*** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP4NodeEEvT_S5_(%struct.Node** %3, %struct.Node** %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP4NodeEEvT_S5_(%struct.Node**, %struct.Node**) #3 align 2 {
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %struct.Node**, align 8
  store %struct.Node** %0, %struct.Node*** %3, align 8
  store %struct.Node** %1, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE(%"class.std::vector.0"* %this, %"class.std::vector.0"* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  %__tmp = alloca %"class.std::vector.0", align 8
  %4 = alloca %"class.std::allocator.2", align 1
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::vector.0"* %__x, %"class.std::vector.0"** %2, align 8
  %5 = load %"class.std::vector.0"** %1
  %6 = bitcast %"class.std::vector.0"* %5 to %"struct.std::_Vector_base.1"*
  call void @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE13get_allocatorEv(%"class.std::allocator.2"* sret %4, %"struct.std::_Vector_base.1"* %6) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EEC2ERKS2_(%"class.std::vector.0"* %__tmp, %"class.std::allocator.2"* %4) #0
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.2"* %4) #0
  %7 = bitcast %"class.std::vector.0"* %5 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = bitcast %"class.std::vector.0"* %__tmp to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_impl12_M_swap_dataERS4_(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %10) #0
  %11 = bitcast %"class.std::vector.0"* %5 to %"struct.std::_Vector_base.1"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base.1"* %11, i32 0, i32 0
  %13 = load %"class.std::vector.0"** %2, align 8
  %14 = bitcast %"class.std::vector.0"* %13 to %"struct.std::_Vector_base.1"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base.1"* %14, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_impl12_M_swap_dataERS4_(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %12, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %15) #0
  %16 = bitcast %"class.std::vector.0"* %5 to %"struct.std::_Vector_base.1"*
  %17 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %16) #0
  %18 = load %"class.std::vector.0"** %2, align 8
  %19 = bitcast %"class.std::vector.0"* %18 to %"struct.std::_Vector_base.1"*
  %20 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %19) #0
  call void @_ZSt15__alloc_on_moveISaIP4NodeEEvRT_S4_(%"class.std::allocator.2"* %17, %"class.std::allocator.2"* %20)
  call void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector.0"* %__tmp) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EEC2ERKS2_(%"class.std::vector.0"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::vector.0"** %1
  %4 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %5 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2ERKS2_(%"struct.std::_Vector_base.1"* %4, %"class.std::allocator.2"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE13get_allocatorEv(%"class.std::allocator.2"* noalias sret %agg.result, %"struct.std::_Vector_base.1"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = call %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %2) #0
  call void @_ZNSaIP4NodeEC2ERKS1_(%"class.std::allocator.2"* %agg.result, %"class.std::allocator.2"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_impl12_M_swap_dataERS4_(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  %2 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %__x, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZSt4swapIPP4NodeEvRT_S4_(%struct.Node*** %4, %struct.Node*** %6) #0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 1
  %8 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %2, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, i32 0, i32 1
  call void @_ZSt4swapIPP4NodeEvRT_S4_(%struct.Node*** %7, %struct.Node*** %9) #0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 2
  %11 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %2, align 8
  %12 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %11, i32 0, i32 2
  call void @_ZSt4swapIPP4NodeEvRT_S4_(%struct.Node*** %10, %struct.Node*** %12) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt15__alloc_on_moveISaIP4NodeEEvRT_S4_(%"class.std::allocator.2"* %__one, %"class.std::allocator.2"* %__two) #4 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::allocator.2"* %__one, %"class.std::allocator.2"** %1, align 8
  store %"class.std::allocator.2"* %__two, %"class.std::allocator.2"** %2, align 8
  %4 = load %"class.std::allocator.2"** %1, align 8
  %5 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZSt18__do_alloc_on_moveISaIP4NodeEEvRT_S4_St17integral_constantIbLb1EE(%"class.std::allocator.2"* %4, %"class.std::allocator.2"* %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt18__do_alloc_on_moveISaIP4NodeEEvRT_S4_St17integral_constantIbLb1EE(%"class.std::allocator.2"* %__one, %"class.std::allocator.2"* %__two) #4 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::allocator.2"* %__one, %"class.std::allocator.2"** %1, align 8
  store %"class.std::allocator.2"* %__two, %"class.std::allocator.2"** %2, align 8
  %4 = load %"class.std::allocator.2"** %1, align 8
  %5 = load %"class.std::allocator.2"** %2, align 8
  %6 = call %"class.std::allocator.2"* @_ZSt4moveIRSaIP4NodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.2"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZSt4moveIRSaIP4NodeEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::allocator.2"* %__t) #3 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__t, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1, align 8
  ret %"class.std::allocator.2"* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPP4NodeEvRT_S4_(%struct.Node*** %__a, %struct.Node*** %__b) #4 {
  %1 = alloca %struct.Node***, align 8
  %2 = alloca %struct.Node***, align 8
  %__tmp = alloca %struct.Node**, align 8
  store %struct.Node*** %__a, %struct.Node**** %1, align 8
  store %struct.Node*** %__b, %struct.Node**** %2, align 8
  %3 = load %struct.Node**** %1, align 8
  %4 = call %struct.Node*** @_ZSt4moveIRPP4NodeEONSt16remove_referenceIT_E4typeEOS5_(%struct.Node*** %3) #0
  %5 = load %struct.Node*** %4
  store %struct.Node** %5, %struct.Node*** %__tmp, align 8
  %6 = load %struct.Node**** %2, align 8
  %7 = call %struct.Node*** @_ZSt4moveIRPP4NodeEONSt16remove_referenceIT_E4typeEOS5_(%struct.Node*** %6) #0
  %8 = load %struct.Node*** %7
  %9 = load %struct.Node**** %1, align 8
  store %struct.Node** %8, %struct.Node*** %9, align 8
  %10 = call %struct.Node*** @_ZSt4moveIRPP4NodeEONSt16remove_referenceIT_E4typeEOS5_(%struct.Node*** %__tmp) #0
  %11 = load %struct.Node*** %10
  %12 = load %struct.Node**** %2, align 8
  store %struct.Node** %11, %struct.Node*** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZSt4moveIRPP4NodeEONSt16remove_referenceIT_E4typeEOS5_(%struct.Node*** %__t) #3 {
  %1 = alloca %struct.Node***, align 8
  store %struct.Node*** %__t, %struct.Node**** %1, align 8
  %2 = load %struct.Node**** %1, align 8
  ret %struct.Node*** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2ERKS1_(%"class.std::allocator.2"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"class.std::allocator.2"** %1
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load %"class.std::allocator.2"** %2, align 8
  %6 = bitcast %"class.std::allocator.2"* %5 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.3"* %4, %"class.__gnu_cxx::new_allocator.3"* %6) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2ERKS3_(%"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %0, %"class.__gnu_cxx::new_allocator.3"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2ERKS2_(%"struct.std::_Vector_base.1"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"struct.std::_Vector_base.1"** %1
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, %"class.std::allocator.2"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2ERKS2_(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"class.std::allocator.2"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  %2 = alloca %"class.std::allocator.2"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %2, align 8
  %3 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %4 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3 to %"class.std::allocator.2"*
  %5 = load %"class.std::allocator.2"** %2, align 8
  call void @_ZNSaIP4NodeEC2ERKS1_(%"class.std::allocator.2"* %4, %"class.std::allocator.2"* %5) #0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 0
  store %struct.Node** null, %struct.Node*** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 1
  store %struct.Node** null, %struct.Node*** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 2
  store %struct.Node** null, %struct.Node*** %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %__a, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %5, i32* %6, i32* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector"* %this, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i32*, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i32* %__args, i32** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  store i64 %4, i64* %__len, align 8
  %5 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %6 = load i64* %__len, align 8
  %7 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %5, i64 %6)
  store i32* %7, i32** %__new_start, align 8
  %8 = load i32** %__new_start, align 8
  store i32* %8, i32** %__new_finish, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10 to %"class.std::allocator"*
  %12 = load i32** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %3) #0
  %14 = getelementptr inbounds i32* %12, i64 %13
  %15 = load i32** %2, align 8
  %16 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %15) #0
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* %11, i32* %14, i32* %16)
  store i32* null, i32** %__new_finish, align 8
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 0
  %20 = load i32** %19, align 8
  %21 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i32** %23, align 8
  %25 = load i32** %__new_start, align 8
  %26 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %27 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %26) #0
  %28 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %20, i32* %24, i32* %25, %"class.std::allocator"* %27)
  store i32* %28, i32** %__new_finish, align 8
  %29 = load i32** %__new_finish, align 8
  %30 = getelementptr inbounds i32* %29, i32 1
  store i32* %30, i32** %__new_finish, align 8
  %31 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %32, i32 0, i32 0
  %34 = load i32** %33, align 8
  %35 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %36, i32 0, i32 1
  %38 = load i32** %37, align 8
  %39 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %40 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %39) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %34, i32* %38, %"class.std::allocator"* %40)
  %41 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %42 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %43, i32 0, i32 0
  %45 = load i32** %44, align 8
  %46 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base"* %46, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %47, i32 0, i32 2
  %49 = load i32** %48, align 8
  %50 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %51, i32 0, i32 0
  %53 = load i32** %52, align 8
  %54 = ptrtoint i32* %49 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %41, i32* %45, i64 %57)
  %58 = load i32** %__new_start, align 8
  %59 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  %62 = load i32** %__new_finish, align 8
  %63 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load i32** %__new_start, align 8
  %67 = load i64* %__len, align 8
  %68 = getelementptr inbounds i32* %66, i64 %67
  %69 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #9
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %5) #0
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %5) #0
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.std::allocator"*
  %9 = load i64* %2, align 8
  %10 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i32* [ %10, %6 ], [ null, %11 ]
  ret i32* %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %__t) #3 {
  %1 = alloca i32*, align 8
  store i32* %__t, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator"* %__alloc) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %"class.std::move_iterator", align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %7 = load i32** %1, align 8
  %8 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %7)
  %9 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  store i32* %8, i32** %9
  %10 = load i32** %2, align 8
  %11 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %10)
  %12 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  store i32* %11, i32** %12
  %13 = load i32** %3, align 8
  %14 = load %"class.std::allocator"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  %18 = load i32** %17
  %19 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %16, i32* %18, i32* %13, %"class.std::allocator"* %14)
  ret i32* %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator"*) #4 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %2, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  %8 = bitcast %"class.std::move_iterator"* %4 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.std::move_iterator"* %5 to i8*
  %11 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i32** %2, align 8
  %13 = getelementptr %"class.std::move_iterator"* %4, i32 0, i32 0
  %14 = load i32** %13
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %14, i32* %16, i32* %12)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %__i) #4 {
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = alloca i32*, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load i32** %2, align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %1, i32* %3)
  %4 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %5 = load i32** %4
  ret i32* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator"* %this, i32* %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load %"class.std::move_iterator"** %1
  %4 = getelementptr inbounds %"class.std::move_iterator"* %3, i32 0, i32 0
  %5 = load i32** %2, align 8
  store i32* %5, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #4 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 align 2 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #4 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %9 = load i32** %8
  %10 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %9)
  %11 = bitcast %"class.std::move_iterator"* %3 to i8*
  %12 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %14)
  %16 = load i32** %1, align 8
  %17 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %10, i32* %15, i32* %16)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %1, align 8
  %5 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %4)
  %6 = load i32** %2, align 8
  %7 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %6)
  %8 = load i32** %3, align 8
  %9 = call i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %8)
  %10 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %5, i32* %7, i32* %9)
  ret i32* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %__it.coerce) #4 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.std::move_iterator"* %1 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %6 = load i32** %5
  %7 = call i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %__it.coerce) #3 align 2 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %1
  %2 = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %__it)
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  %2 = load %"class.std::move_iterator"** %1
  %3 = getelementptr inbounds %"class.std::move_iterator"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #4 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %__simple = alloca i8, align 1
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i32** %1, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  %7 = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %4, i32* %5, i32* %6)
  ret i32* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #4 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  %3 = call i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %2)
  ret i32* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_(i32* %__it) #3 align 2 {
  %1 = alloca i32*, align 8
  store i32* %__it, i32** %1, align 8
  %2 = load i32** %1, align 8
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #3 align 2 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %_Num = alloca i64, align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  %4 = load i32** %2, align 8
  %5 = load i32** %1, align 8
  %6 = ptrtoint i32* %4 to i64
  %7 = ptrtoint i32* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 4
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i32** %3, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32** %1, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 4, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 4, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i32** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i32* %20, i64 %21
  ret i32* %22
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load i64* %2, align 8
  %6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %4, i64 %5, i8* null)
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* %4) #0
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #4 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__a, i64** %2, align 8
  store i64* %__b, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64* %4, align 8
  %6 = load i64** %3, align 8
  %7 = load i64* %6, align 8
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %0
  %10 = load i64** %3, align 8
  store i64* %10, i64** %1
  br label %13

; <label>:11                                      ; preds = %0
  %12 = load i64** %2, align 8
  store i64* %12, i64** %1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = load i64** %1
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
  %5 = load i32** %2, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i32*
  %10 = load i32** %3, align 8
  %11 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %10) #0
  %12 = load i32* %11
  store i32 %12, i32* %9, align 4
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = phi i32* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret %struct.Node*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS3_(%"class.__gnu_cxx::__normal_iterator"* %this, %struct.Node*** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca %struct.Node***, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store %struct.Node*** %__i, %struct.Node**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %struct.Node**** %2, align 8
  %6 = load %struct.Node*** %5, align 8
  store %struct.Node** %6, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZN9__gnu_cxxeqIPKP4NodeSt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(%"class.__gnu_cxx::__normal_iterator.9"* %__lhs, %"class.__gnu_cxx::__normal_iterator.9"* %__rhs) #4 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.9"*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.9"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.9"* %__lhs, %"class.__gnu_cxx::__normal_iterator.9"** %1, align 8
  store %"class.__gnu_cxx::__normal_iterator.9"* %__rhs, %"class.__gnu_cxx::__normal_iterator.9"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.9"** %1, align 8
  %4 = call %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.9"* %3) #0
  %5 = load %struct.Node*** %4
  %6 = load %"class.__gnu_cxx::__normal_iterator.9"** %2, align 8
  %7 = call %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.9"* %6) #0
  %8 = load %struct.Node*** %7
  %9 = icmp eq %struct.Node** %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EE5beginEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"** %2
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load %struct.Node*** %7, align 8
  store %struct.Node** %8, %struct.Node*** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.9"* %1, %struct.Node*** %3) #0
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.9"* %1, i32 0, i32 0
  %10 = load %struct.Node*** %9
  ret %struct.Node** %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EE3endEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.9", align 8
  %2 = alloca %"class.std::vector.0"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %2, align 8
  %4 = load %"class.std::vector.0"** %2
  %5 = bitcast %"class.std::vector.0"* %4 to %"struct.std::_Vector_base.1"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load %struct.Node*** %7, align 8
  store %struct.Node** %8, %struct.Node*** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.9"* %1, %struct.Node*** %3) #0
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.9"* %1, i32 0, i32 0
  %10 = load %struct.Node*** %9
  ret %struct.Node** %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEEC2ERKS4_(%"class.__gnu_cxx::__normal_iterator.9"* %this, %struct.Node*** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.9"*, align 8
  %2 = alloca %struct.Node***, align 8
  store %"class.__gnu_cxx::__normal_iterator.9"* %this, %"class.__gnu_cxx::__normal_iterator.9"** %1, align 8
  store %struct.Node*** %__i, %struct.Node**** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.9"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9"* %3, i32 0, i32 0
  %5 = load %struct.Node**** %2, align 8
  %6 = load %struct.Node*** %5, align 8
  store %struct.Node** %6, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node*** @_ZNK9__gnu_cxx17__normal_iteratorIPKP4NodeSt6vectorIS2_SaIS2_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.9"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.9"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.9"* %this, %"class.__gnu_cxx::__normal_iterator.9"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.9"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.9"* %2, i32 0, i32 0
  ret %struct.Node*** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.2"* %__a, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.std::allocator.2"** %1, align 8
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.3"* %5, %struct.Node** %6, %struct.Node** %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_(%"class.std::vector.0"* %this, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca %struct.Node**, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca %struct.Node**, align 8
  %__new_finish = alloca %struct.Node**, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %3 = load %"class.std::vector.0"** %1
  %4 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  store i64 %4, i64* %__len, align 8
  %5 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %6 = load i64* %__len, align 8
  %7 = call %struct.Node** @_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %5, i64 %6)
  store %struct.Node** %7, %struct.Node*** %__new_start, align 8
  %8 = load %struct.Node*** %__new_start, align 8
  store %struct.Node** %8, %struct.Node*** %__new_finish, align 8
  %9 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.1"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %10 to %"class.std::allocator.2"*
  %12 = load %struct.Node*** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %3) #0
  %14 = getelementptr inbounds %struct.Node** %12, i64 %13
  %15 = load %struct.Node*** %2, align 8
  %16 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %15) #0
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator.2"* %11, %struct.Node** %14, %struct.Node** %16)
  store %struct.Node** null, %struct.Node*** %__new_finish, align 8
  %17 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.1"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %18, i32 0, i32 0
  %20 = load %struct.Node*** %19, align 8
  %21 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.1"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %struct.Node*** %23, align 8
  %25 = load %struct.Node*** %__new_start, align 8
  %26 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %27 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %26) #0
  %28 = call %struct.Node** @_ZSt34__uninitialized_move_if_noexcept_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_(%struct.Node** %20, %struct.Node** %24, %struct.Node** %25, %"class.std::allocator.2"* %27)
  store %struct.Node** %28, %struct.Node*** %__new_finish, align 8
  %29 = load %struct.Node*** %__new_finish, align 8
  %30 = getelementptr inbounds %struct.Node** %29, i32 1
  store %struct.Node** %30, %struct.Node*** %__new_finish, align 8
  %31 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base.1"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %32, i32 0, i32 0
  %34 = load %struct.Node*** %33, align 8
  %35 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base.1"* %35, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %36, i32 0, i32 1
  %38 = load %struct.Node*** %37, align 8
  %39 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %40 = call %"class.std::allocator.2"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %39) #0
  call void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %34, %struct.Node** %38, %"class.std::allocator.2"* %40)
  %41 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %42 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base.1"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %43, i32 0, i32 0
  %45 = load %struct.Node*** %44, align 8
  %46 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base.1"* %46, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %47, i32 0, i32 2
  %49 = load %struct.Node*** %48, align 8
  %50 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base.1"* %50, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %51, i32 0, i32 0
  %53 = load %struct.Node*** %52, align 8
  %54 = ptrtoint %struct.Node** %49 to i64
  %55 = ptrtoint %struct.Node** %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %41, %struct.Node** %45, i64 %57)
  %58 = load %struct.Node*** %__new_start, align 8
  %59 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base.1"* %59, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %60, i32 0, i32 0
  store %struct.Node** %58, %struct.Node*** %61, align 8
  %62 = load %struct.Node*** %__new_finish, align 8
  %63 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.1"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %64, i32 0, i32 1
  store %struct.Node** %62, %struct.Node*** %65, align 8
  %66 = load %struct.Node*** %__new_start, align 8
  %67 = load i64* %__len, align 8
  %68 = getelementptr inbounds %struct.Node** %66, i64 %67
  %69 = bitcast %"class.std::vector.0"* %3 to %"struct.std::_Vector_base.1"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.1"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %70, i32 0, i32 2
  store %struct.Node** %68, %struct.Node*** %71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.0"** %1
  %6 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5) #0
  %7 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %5) #0
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #9
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %5) #0
  %15 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %5) #0
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %5) #0
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5) #0
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %5) #0
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.1"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %7 to %"class.std::allocator.2"*
  %9 = load i64* %2, align 8
  %10 = call %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator.2"* %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %struct.Node** [ %10, %6 ], [ null, %11 ]
  ret %struct.Node** %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %struct.Node*** %5, align 8
  %7 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %struct.Node*** %9, align 8
  %11 = ptrtoint %struct.Node** %6 to i64
  %12 = ptrtoint %struct.Node** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt34__uninitialized_move_if_noexcept_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result, %"class.std::allocator.2"* %__alloc) #4 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"class.std::allocator.2"*, align 8
  %5 = alloca %"class.std::move_iterator.10", align 8
  %6 = alloca %"class.std::move_iterator.10", align 8
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  store %struct.Node** %__result, %struct.Node*** %3, align 8
  store %"class.std::allocator.2"* %__alloc, %"class.std::allocator.2"** %4, align 8
  %7 = load %struct.Node*** %1, align 8
  %8 = call %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %7)
  %9 = getelementptr %"class.std::move_iterator.10"* %5, i32 0, i32 0
  store %struct.Node** %8, %struct.Node*** %9
  %10 = load %struct.Node*** %2, align 8
  %11 = call %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %10)
  %12 = getelementptr %"class.std::move_iterator.10"* %6, i32 0, i32 0
  store %struct.Node** %11, %struct.Node*** %12
  %13 = load %struct.Node*** %3, align 8
  %14 = load %"class.std::allocator.2"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator.10"* %5, i32 0, i32 0
  %16 = load %struct.Node*** %15
  %17 = getelementptr %"class.std::move_iterator.10"* %6, i32 0, i32 0
  %18 = load %struct.Node*** %17
  %19 = call %struct.Node** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4NodeES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct.Node** %16, %struct.Node** %18, %struct.Node** %13, %"class.std::allocator.2"* %14)
  ret %struct.Node** %19
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %this, %struct.Node** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.1"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = icmp ne %struct.Node** %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8 to %"class.std::allocator.2"*
  %10 = load %struct.Node*** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator.2"* %9, %struct.Node** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator.2"* %__a, %struct.Node** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.2"** %1, align 8
  %5 = bitcast %"class.std::allocator.2"* %4 to %"class.__gnu_cxx::new_allocator.3"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.3"* %5, %struct.Node** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator.3"* %this, %struct.Node** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store %struct.Node** %__p, %struct.Node*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"** %2
  %6 = load %struct.Node*** %3, align 8
  %7 = bitcast %struct.Node** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4NodeES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result, %"class.std::allocator.2"*) #4 {
  %__first = alloca %"class.std::move_iterator.10", align 8
  %__last = alloca %"class.std::move_iterator.10", align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %"class.std::allocator.2"*, align 8
  %4 = alloca %"class.std::move_iterator.10", align 8
  %5 = alloca %"class.std::move_iterator.10", align 8
  %6 = getelementptr %"class.std::move_iterator.10"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %6
  %7 = getelementptr %"class.std::move_iterator.10"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %7
  store %struct.Node** %__result, %struct.Node*** %2, align 8
  store %"class.std::allocator.2"* %0, %"class.std::allocator.2"** %3, align 8
  %8 = bitcast %"class.std::move_iterator.10"* %4 to i8*
  %9 = bitcast %"class.std::move_iterator.10"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.std::move_iterator.10"* %5 to i8*
  %11 = bitcast %"class.std::move_iterator.10"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load %struct.Node*** %2, align 8
  %13 = getelementptr %"class.std::move_iterator.10"* %4, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = getelementptr %"class.std::move_iterator.10"* %5, i32 0, i32 0
  %16 = load %struct.Node*** %15
  %17 = call %struct.Node** @_ZSt18uninitialized_copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %14, %struct.Node** %16, %struct.Node** %12)
  ret %struct.Node** %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %__i) #4 {
  %1 = alloca %"class.std::move_iterator.10", align 8
  %2 = alloca %struct.Node**, align 8
  store %struct.Node** %__i, %struct.Node*** %2, align 8
  %3 = load %struct.Node*** %2, align 8
  call void @_ZNSt13move_iteratorIPP4NodeEC2ES2_(%"class.std::move_iterator.10"* %1, %struct.Node** %3)
  %4 = getelementptr %"class.std::move_iterator.10"* %1, i32 0, i32 0
  %5 = load %struct.Node*** %4
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13move_iteratorIPP4NodeEC2ES2_(%"class.std::move_iterator.10"* %this, %struct.Node** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::move_iterator.10"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::move_iterator.10"* %this, %"class.std::move_iterator.10"** %1, align 8
  store %struct.Node** %__i, %struct.Node*** %2, align 8
  %3 = load %"class.std::move_iterator.10"** %1
  %4 = getelementptr inbounds %"class.std::move_iterator.10"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %2, align 8
  store %struct.Node** %5, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt18uninitialized_copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #4 {
  %__first = alloca %"class.std::move_iterator.10", align 8
  %__last = alloca %"class.std::move_iterator.10", align 8
  %1 = alloca %struct.Node**, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.std::move_iterator.10", align 8
  %3 = alloca %"class.std::move_iterator.10", align 8
  %4 = getelementptr %"class.std::move_iterator.10"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator.10"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.std::move_iterator.10"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.10"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator.10"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator.10"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %struct.Node*** %1, align 8
  %11 = getelementptr %"class.std::move_iterator.10"* %2, i32 0, i32 0
  %12 = load %struct.Node*** %11
  %13 = getelementptr %"class.std::move_iterator.10"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4NodeES5_EET0_T_S8_S7_(%struct.Node** %12, %struct.Node** %14, %struct.Node** %10)
  ret %struct.Node** %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4NodeES5_EET0_T_S8_S7_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #3 align 2 {
  %__first = alloca %"class.std::move_iterator.10", align 8
  %__last = alloca %"class.std::move_iterator.10", align 8
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %"class.std::move_iterator.10", align 8
  %3 = alloca %"class.std::move_iterator.10", align 8
  %4 = getelementptr %"class.std::move_iterator.10"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator.10"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  %6 = bitcast %"class.std::move_iterator.10"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.10"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator.10"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator.10"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %struct.Node*** %1, align 8
  %11 = getelementptr %"class.std::move_iterator.10"* %2, i32 0, i32 0
  %12 = load %struct.Node*** %11
  %13 = getelementptr %"class.std::move_iterator.10"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZSt4copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %12, %struct.Node** %14, %struct.Node** %10)
  ret %struct.Node** %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt4copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #4 {
  %__first = alloca %"class.std::move_iterator.10", align 8
  %__last = alloca %"class.std::move_iterator.10", align 8
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %"class.std::move_iterator.10", align 8
  %3 = alloca %"class.std::move_iterator.10", align 8
  %4 = getelementptr %"class.std::move_iterator.10"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator.10"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  %6 = bitcast %"class.std::move_iterator.10"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.10"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.std::move_iterator.10"* %2, i32 0, i32 0
  %9 = load %struct.Node*** %8
  %10 = call %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %9)
  %11 = bitcast %"class.std::move_iterator.10"* %3 to i8*
  %12 = bitcast %"class.std::move_iterator.10"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.std::move_iterator.10"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %14)
  %16 = load %struct.Node*** %1, align 8
  %17 = call %struct.Node** @_ZSt14__copy_move_a2ILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %10, %struct.Node** %15, %struct.Node** %16)
  ret %struct.Node** %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt14__copy_move_a2ILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result) #4 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  store %struct.Node** %__result, %struct.Node*** %3, align 8
  %4 = load %struct.Node*** %1, align 8
  %5 = call %struct.Node** @_ZSt12__niter_baseIPP4NodeENSt11_Niter_baseIT_E13iterator_typeES4_(%struct.Node** %4)
  %6 = load %struct.Node*** %2, align 8
  %7 = call %struct.Node** @_ZSt12__niter_baseIPP4NodeENSt11_Niter_baseIT_E13iterator_typeES4_(%struct.Node** %6)
  %8 = load %struct.Node*** %3, align 8
  %9 = call %struct.Node** @_ZSt12__niter_baseIPP4NodeENSt11_Niter_baseIT_E13iterator_typeES4_(%struct.Node** %8)
  %10 = call %struct.Node** @_ZSt13__copy_move_aILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %5, %struct.Node** %7, %struct.Node** %9)
  ret %struct.Node** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %__it.coerce) #4 {
  %__it = alloca %"class.std::move_iterator.10", align 8
  %1 = alloca %"class.std::move_iterator.10", align 8
  %2 = getelementptr %"class.std::move_iterator.10"* %__it, i32 0, i32 0
  store %struct.Node** %__it.coerce, %struct.Node*** %2
  %3 = bitcast %"class.std::move_iterator.10"* %1 to i8*
  %4 = bitcast %"class.std::move_iterator.10"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.std::move_iterator.10"* %1, i32 0, i32 0
  %6 = load %struct.Node*** %5
  %7 = call %struct.Node** @_ZNSt10_Iter_baseISt13move_iteratorIPP4NodeELb1EE7_S_baseES4_(%struct.Node** %6)
  ret %struct.Node** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt10_Iter_baseISt13move_iteratorIPP4NodeELb1EE7_S_baseES4_(%struct.Node** %__it.coerce) #3 align 2 {
  %__it = alloca %"class.std::move_iterator.10", align 8
  %1 = getelementptr %"class.std::move_iterator.10"* %__it, i32 0, i32 0
  store %struct.Node** %__it.coerce, %struct.Node*** %1
  %2 = call %struct.Node** @_ZNKSt13move_iteratorIPP4NodeE4baseEv(%"class.std::move_iterator.10"* %__it)
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt13move_iteratorIPP4NodeE4baseEv(%"class.std::move_iterator.10"* %this) #3 align 2 {
  %1 = alloca %"class.std::move_iterator.10"*, align 8
  store %"class.std::move_iterator.10"* %this, %"class.std::move_iterator.10"** %1, align 8
  %2 = load %"class.std::move_iterator.10"** %1
  %3 = getelementptr inbounds %"class.std::move_iterator.10"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  ret %struct.Node** %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt13__copy_move_aILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result) #4 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %__simple = alloca i8, align 1
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  store %struct.Node** %__result, %struct.Node*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %struct.Node*** %1, align 8
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node*** %3, align 8
  %7 = call %struct.Node** @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4NodeEEPT_PKS5_S8_S6_(%struct.Node** %4, %struct.Node** %5, %struct.Node** %6)
  ret %struct.Node** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt12__niter_baseIPP4NodeENSt11_Niter_baseIT_E13iterator_typeES4_(%struct.Node** %__it) #4 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__it, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  %3 = call %struct.Node** @_ZNSt10_Iter_baseIPP4NodeLb0EE7_S_baseES2_(%struct.Node** %2)
  ret %struct.Node** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt10_Iter_baseIPP4NodeLb0EE7_S_baseES2_(%struct.Node** %__it) #3 align 2 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__it, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP4NodeEEPT_PKS5_S8_S6_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result) #3 align 2 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %_Num = alloca i64, align 8
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  store %struct.Node** %__result, %struct.Node*** %3, align 8
  %4 = load %struct.Node*** %2, align 8
  %5 = load %struct.Node*** %1, align 8
  %6 = ptrtoint %struct.Node** %4 to i64
  %7 = ptrtoint %struct.Node** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %struct.Node*** %3, align 8
  %14 = bitcast %struct.Node** %13 to i8*
  %15 = load %struct.Node*** %1, align 8
  %16 = bitcast %struct.Node** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %struct.Node*** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds %struct.Node** %20, i64 %21
  ret %struct.Node** %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator.2"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.2"** %1, align 8
  %4 = bitcast %"class.std::allocator.2"* %3 to %"class.__gnu_cxx::new_allocator.3"*
  %5 = load i64* %2, align 8
  %6 = call %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %4, i64 %5, i8* null)
  ret %struct.Node** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.3"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.3"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #9
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.Node**
  ret %struct.Node** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector.0"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.0"*, align 8
  store %"class.std::vector.0"* %this, %"class.std::vector.0"** %1, align 8
  %2 = load %"class.std::vector.0"** %1
  %3 = bitcast %"class.std::vector.0"* %2 to %"struct.std::_Vector_base.1"*
  %4 = call %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIP4NodeEE8max_sizeERKS2_(%"class.std::allocator.2"* %4) #0
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIP4NodeEE8max_sizeERKS2_(%"class.std::allocator.2"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %__a, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1, align 8
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator.3"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.3"* %this, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.3"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = bitcast %struct.Node** %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %struct.Node**
  %10 = load %struct.Node*** %3, align 8
  %11 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %10) #0
  %12 = load %struct.Node** %11
  store %struct.Node* %12, %struct.Node** %9, align 8
  br label %13

; <label>:13                                      ; preds = %8, %0
  %14 = phi %struct.Node** [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load %struct.Node*** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load %struct.Node*** %10, align 8
  %12 = ptrtoint %struct.Node** %8 to i64
  %13 = ptrtoint %struct.Node** %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base.1"* %2, %struct.Node** %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator.2"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.1"*, align 8
  store %"struct.std::_Vector_base.1"* %this, %"struct.std::_Vector_base.1"** %1, align 8
  %2 = load %"struct.std::_Vector_base.1"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2 to %"class.std::allocator.2"*
  call void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator.2"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 0
  store %struct.Node** null, %struct.Node*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 1
  store %struct.Node** null, %struct.Node*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 2
  store %struct.Node** null, %struct.Node*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.2"*, align 8
  store %"class.std::allocator.2"* %this, %"class.std::allocator.2"** %1, align 8
  %2 = load %"class.std::allocator.2"** %1
  %3 = bitcast %"class.std::allocator.2"* %2 to %"class.__gnu_cxx::new_allocator.3"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.3"*, align 8
  store %"class.__gnu_cxx::new_allocator.3"* %this, %"class.__gnu_cxx::new_allocator.3"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.3"** %1
  ret void
}

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
