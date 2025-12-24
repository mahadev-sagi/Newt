; ModuleID = 'InorderTraversals/in_20_cps.cpp'
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
%struct.Node = type { i32, %struct.Node*, %struct.Node* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl" }
%"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl" = type { %"class.std::function"**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"class.std::function" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::_Deque_iterator" = type { %"class.std::function"*, %"class.std::function"*, %"class.std::function"*, %"class.std::function"** }
%"class.std::function.3" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*, %struct.Node**)* }
%class.anon = type { %"class.std::deque"*, %"class.std::function.3"*, %"class.std::vector"* }
%"struct.std::_Maybe_unary_or_binary_function.4" = type { i8 }
%"struct.std::_Maybe_unary_or_binary_function" = type { i8 }
%"class.std::allocator.0" = type { i8 }
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
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%class.anon.9 = type { %"class.std::function.3"*, %"class.std::vector"*, %struct.Node* }
%class.anon.10 = type { %"class.std::vector"*, %struct.Node* }
%class.anon.11 = type { %"class.std::function.3"*, %"class.std::vector"*, %struct.Node* }
%"struct.std::integral_constant.12" = type { i8 }
%"class.std::move_iterator" = type { i32* }
%"class.std::allocator.13" = type { i8 }
%"class.__gnu_cxx::new_allocator.14" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [18 x i8] c"../../numbers.txt\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
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
define void @_Z18in_order_traversalP4NodeRSt6vectorIiSaIiEE(%struct.Node* %root, %"class.std::vector"* %result) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %"class.std::vector"*, align 8
  %tasks = alloca %"class.std::deque", align 8
  %visit = alloca %"class.std::function.3", align 8
  %3 = alloca %class.anon, align 8
  %task = alloca %"class.std::function", align 8
  store %struct.Node* %root, %struct.Node** %1, align 8
  store %"class.std::vector"* %result, %"class.std::vector"** %2, align 8
  %4 = load %struct.Node** %1, align 8
  %5 = icmp ne %struct.Node* %4, null
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  br label %20

; <label>:7                                       ; preds = %0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EEC2Ev(%"class.std::deque"* %tasks)
  call void @_ZNSt8functionIFvP4NodeEEC2Ev(%"class.std::function.3"* %visit) #0
  %8 = getelementptr inbounds %class.anon* %3, i32 0, i32 0
  store %"class.std::deque"* %tasks, %"class.std::deque"** %8, align 8
  %9 = getelementptr inbounds %class.anon* %3, i32 0, i32 1
  store %"class.std::function.3"* %visit, %"class.std::function.3"** %9, align 8
  %10 = getelementptr inbounds %class.anon* %3, i32 0, i32 2
  %11 = load %"class.std::vector"** %2, align 8
  store %"class.std::vector"* %11, %"class.std::vector"** %10, align 8
  %12 = call %"class.std::function.3"* @"_ZNSt8functionIFvP4NodeEEaSIZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0EENSt9enable_ifIXsrNS3_9_CallableINSt5decayIT_E4typeENSt9result_ofIFSF_S1_EE4typeEEE5valueERS3_E4typeEOSD_"(%"class.std::function.3"* %visit, %class.anon* %3)
  %13 = load %struct.Node** %1, align 8
  call void @_ZNKSt8functionIFvP4NodeEEclES1_(%"class.std::function.3"* %visit, %struct.Node* %13)
  br label %14

; <label>:14                                      ; preds = %17, %7
  %15 = call zeroext i1 @_ZNKSt5dequeISt8functionIFvvEESaIS2_EE5emptyEv(%"class.std::deque"* %tasks) #0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %14
  %18 = call %"class.std::function"* @_ZNSt5dequeISt8functionIFvvEESaIS2_EE5frontEv(%"class.std::deque"* %tasks) #0
  call void @_ZNSt8functionIFvvEEC2ERKS1_(%"class.std::function"* %task, %"class.std::function"* %18)
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE9pop_frontEv(%"class.std::deque"* %tasks) #0
  call void @_ZNKSt8functionIFvvEEclEv(%"class.std::function"* %task)
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %task) #0
  br label %14

; <label>:19                                      ; preds = %14
  call void @_ZNSt8functionIFvP4NodeEED2Ev(%"class.std::function.3"* %visit) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EED2Ev(%"class.std::deque"* %tasks) #0
  br label %20

; <label>:20                                      ; preds = %19, %6
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EEC2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EEC2Ev(%"class.std::_Deque_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvP4NodeEEC2Ev(%"class.std::function.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  %2 = load %"class.std::function.3"** %1
  %3 = bitcast %"class.std::function.3"* %2 to %"struct.std::_Maybe_unary_or_binary_function.4"*
  %4 = bitcast %"class.std::function.3"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %"class.std::function.3"* @"_ZNSt8functionIFvP4NodeEEaSIZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0EENSt9enable_ifIXsrNS3_9_CallableINSt5decayIT_E4typeENSt9result_ofIFSF_S1_EE4typeEEE5valueERS3_E4typeEOSD_"(%"class.std::function.3"* %this, %class.anon* %__f) #3 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  %2 = alloca %class.anon*, align 8
  %3 = alloca %"class.std::function.3", align 8
  %4 = alloca %class.anon, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  store %class.anon* %__f, %class.anon** %2, align 8
  %5 = load %"class.std::function.3"** %1
  %6 = load %class.anon** %2, align 8
  %7 = call %class.anon* @"_ZSt7forwardIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EOT_RNSt16remove_referenceIS7_E4typeE"(%class.anon* %6) #0
  %8 = bitcast %class.anon* %4 to i8*
  %9 = bitcast %class.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  call void @"_ZNSt8functionIFvP4NodeEEC2IZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0vvEET_"(%"class.std::function.3"* %3, %class.anon* byval align 8 %4)
  call void @_ZNSt8functionIFvP4NodeEE4swapERS3_(%"class.std::function.3"* %3, %"class.std::function.3"* %5)
  call void @_ZNSt8functionIFvP4NodeEED2Ev(%"class.std::function.3"* %3) #0
  ret %"class.std::function.3"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8functionIFvP4NodeEEclES1_(%"class.std::function.3"* %this, %struct.Node* %__args) #3 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  %2 = alloca %struct.Node*, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  store %struct.Node* %__args, %struct.Node** %2, align 8
  %3 = load %"class.std::function.3"** %1
  %4 = bitcast %"class.std::function.3"* %3 to %"class.std::_Function_base"*
  %5 = call zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* %4)
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @_ZSt25__throw_bad_function_callv() #8
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"class.std::function.3"* %3, i32 0, i32 1
  %9 = load void (%"union.std::_Any_data"*, %struct.Node**)** %8, align 8
  %10 = bitcast %"class.std::function.3"* %3 to %"class.std::_Function_base"*
  %11 = getelementptr inbounds %"class.std::_Function_base"* %10, i32 0, i32 0
  %12 = call %struct.Node** @_ZSt7forwardIP4NodeEOT_RNSt16remove_referenceIS2_E4typeE(%struct.Node** %2) #0
  call void %9(%"union.std::_Any_data"* %11, %struct.Node** %12)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt5dequeISt8functionIFvvEESaIS2_EE5emptyEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %4, i32 0, i32 3
  %6 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %7, i32 0, i32 2
  %9 = call zeroext i1 @_ZSteqISt8functionIFvvEERS2_PS2_EbRKSt15_Deque_iteratorIT_T0_T1_ESB_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %8) #0
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvvEEC2ERKS1_(%"class.std::function"* %this, %"class.std::function"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  store %"class.std::function"* %__x, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"** %1
  %4 = bitcast %"class.std::function"* %3 to %"struct.std::_Maybe_unary_or_binary_function"*
  %5 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %5)
  %6 = load %"class.std::function"** %2, align 8
  %7 = call zeroext i1 @_ZNKSt8functionIFvvEEcvbEv(%"class.std::function"* %6) #0
  br i1 %7, label %8, label %29

; <label>:8                                       ; preds = %0
  %9 = load %"class.std::function"** %2, align 8
  %10 = bitcast %"class.std::function"* %9 to %"class.std::_Function_base"*
  %11 = getelementptr inbounds %"class.std::_Function_base"* %10, i32 0, i32 1
  %12 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %11, align 8
  %13 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  %14 = getelementptr inbounds %"class.std::_Function_base"* %13, i32 0, i32 0
  %15 = load %"class.std::function"** %2, align 8
  %16 = bitcast %"class.std::function"* %15 to %"class.std::_Function_base"*
  %17 = getelementptr inbounds %"class.std::_Function_base"* %16, i32 0, i32 0
  %18 = call zeroext i1 %12(%"union.std::_Any_data"* %14, %"union.std::_Any_data"* %17, i32 2)
  %19 = load %"class.std::function"** %2, align 8
  %20 = getelementptr inbounds %"class.std::function"* %19, i32 0, i32 1
  %21 = load void (%"union.std::_Any_data"*)** %20, align 8
  %22 = getelementptr inbounds %"class.std::function"* %3, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* %21, void (%"union.std::_Any_data"*)** %22, align 8
  %23 = load %"class.std::function"** %2, align 8
  %24 = bitcast %"class.std::function"* %23 to %"class.std::_Function_base"*
  %25 = getelementptr inbounds %"class.std::_Function_base"* %24, i32 0, i32 1
  %26 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %25, align 8
  %27 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  %28 = getelementptr inbounds %"class.std::_Function_base"* %27, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %26, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %28, align 8
  br label %29

; <label>:29                                      ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZNSt5dequeISt8functionIFvvEESaIS2_EE5frontEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %3) #0
  %4 = call %"class.std::function"* @_ZNKSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EdeEv(%"struct.std::_Deque_iterator"* %2) #0
  ret %"class.std::function"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE9pop_frontEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %4, i32 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::function"** %6, align 8
  %8 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %9 = getelementptr inbounds %"class.std::_Deque_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %9, i32 0, i32 2
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator"* %10, i32 0, i32 2
  %12 = load %"class.std::function"** %11, align 8
  %13 = getelementptr inbounds %"class.std::function"* %12, i64 -1
  %14 = icmp ne %"class.std::function"* %7, %13
  br i1 %14, label %15, label %30

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %17 to %"class.std::allocator.0"*
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load %"class.std::function"** %22, align 8
  call void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE7destroyIS2_EEvRS3_PT_(%"class.std::allocator.0"* %18, %"class.std::function"* %23)
  %24 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %25, i32 0, i32 2
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator"* %26, i32 0, i32 0
  %28 = load %"class.std::function"** %27, align 8
  %29 = getelementptr inbounds %"class.std::function"* %28, i32 1
  store %"class.std::function"* %29, %"class.std::function"** %27, align 8
  br label %31

; <label>:30                                      ; preds = %0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv(%"class.std::deque"* %2)
  br label %31

; <label>:31                                      ; preds = %30, %15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8functionIFvvEEclEv(%"class.std::function"* %this) #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1
  %3 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %4 = call zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* %3)
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  call void @_ZSt25__throw_bad_function_callv() #8
  unreachable

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"class.std::function"* %2, i32 0, i32 1
  %8 = load void (%"union.std::_Any_data"*)** %7, align 8
  %9 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %10 = getelementptr inbounds %"class.std::_Function_base"* %9, i32 0, i32 0
  call void %8(%"union.std::_Any_data"* %10)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1
  %3 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %3) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvP4NodeEED2Ev(%"class.std::function.3"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  %2 = load %"class.std::function.3"** %1
  %3 = bitcast %"class.std::function.3"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EED2Ev(%"class.std::deque"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %4 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE5beginEv(%"struct.std::_Deque_iterator"* sret %2, %"class.std::deque"* %4) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE3endEv(%"struct.std::_Deque_iterator"* sret %3, %"class.std::deque"* %4) #0
  %5 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  %6 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %5) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_(%"class.std::deque"* %4, %"struct.std::_Deque_iterator"* %2, %"struct.std::_Deque_iterator"* %3, %"class.std::allocator.0"* %6)
  %7 = bitcast %"class.std::deque"* %4 to %"class.std::_Deque_base"*
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EED2Ev(%"class.std::_Deque_base"* %7) #0
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
  %7 = call noalias i8* @_Znwm(i64 24) #9
  %8 = bitcast i8* %7 to %struct.Node*
  %9 = load i32* %3, align 4
  call void @_ZN4NodeC2Ei(%struct.Node* %8, i32 %9)
  store %struct.Node* %8, %struct.Node** %1
  br label %34

; <label>:10                                      ; preds = %0
  %11 = load i32* %3, align 4
  %12 = load %struct.Node** %2, align 8
  %13 = getelementptr inbounds %struct.Node* %12, i32 0, i32 0
  %14 = load i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %10
  %17 = load %struct.Node** %2, align 8
  %18 = getelementptr inbounds %struct.Node* %17, i32 0, i32 1
  %19 = load %struct.Node** %18, align 8
  %20 = load i32* %3, align 4
  %21 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %19, i32 %20)
  %22 = load %struct.Node** %2, align 8
  %23 = getelementptr inbounds %struct.Node* %22, i32 0, i32 1
  store %struct.Node* %21, %struct.Node** %23, align 8
  br label %32

; <label>:24                                      ; preds = %10
  %25 = load %struct.Node** %2, align 8
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 2
  %27 = load %struct.Node** %26, align 8
  %28 = load i32* %3, align 4
  %29 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %27, i32 %28)
  %30 = load %struct.Node** %2, align 8
  %31 = getelementptr inbounds %struct.Node* %30, i32 0, i32 2
  store %struct.Node* %29, %struct.Node** %31, align 8
  br label %32

; <label>:32                                      ; preds = %24, %16
  %33 = load %struct.Node** %2, align 8
  store %struct.Node* %33, %struct.Node** %1
  br label %34

; <label>:34                                      ; preds = %32, %6
  %35 = load %struct.Node** %1
  ret %struct.Node* %35
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
  %num = alloca i32, align 4
  %root = alloca %struct.Node*, align 8
  %result = alloca %"class.std::vector", align 8
  %i = alloca i64, align 8
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.5"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.5"* %4)
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
  store %struct.Node* null, %struct.Node** %root, align 8
  br label %15

; <label>:15                                      ; preds = %27, %13
  %16 = bitcast %"class.std::basic_ifstream"* %file to %"class.std::basic_istream"*
  %17 = call %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %16, i32* %num)
  %18 = bitcast %"class.std::basic_istream"* %17 to i8**
  %19 = load i8** %18
  %20 = getelementptr i8* %19, i64 -24
  %21 = bitcast i8* %20 to i64*
  %22 = load i64* %21
  %23 = bitcast %"class.std::basic_istream"* %17 to i8*
  %24 = getelementptr inbounds i8* %23, i64 %22
  %25 = bitcast i8* %24 to %"class.std::basic_ios"*
  %26 = call zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* %25)
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %15
  %28 = load %struct.Node** %root, align 8
  %29 = load i32* %num, align 4
  %30 = call %struct.Node* @_Z6insertP4Nodei(%struct.Node* %28, i32 %29)
  store %struct.Node* %30, %struct.Node** %root, align 8
  br label %15

; <label>:31                                      ; preds = %15
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %result) #0
  %32 = load %struct.Node** %root, align 8
  call void @_Z18in_order_traversalP4NodeRSt6vectorIiSaIiEE(%struct.Node* %32, %"class.std::vector"* %result)
  store i64 0, i64* %i, align 8
  br label %33

; <label>:33                                      ; preds = %43, %31
  %34 = load i64* %i, align 8
  %35 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %result) #0
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %33
  %38 = load i64* %i, align 8
  %39 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %result, i64 %38) #0
  %40 = load i32* %39
  %41 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %40)
  %42 = call %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* %41, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  br label %43

; <label>:43                                      ; preds = %37
  %44 = load i64* %i, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %33

; <label>:46                                      ; preds = %33
  %47 = call %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, i32* %1
  store i32 1, i32* %5
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector"* %result) #0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %file) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %filename) #0
  %48 = load i32* %1
  ret i32 %48
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

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

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

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

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
define linkonce_odr zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %1, align 8
  %2 = load %"class.std::_Function_base"** %1
  %3 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 1
  %4 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %3, align 8
  %5 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %4, null
  %6 = xor i1 %5, true
  ret i1 %6
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() #7

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE7destroyIS2_EEvRS3_PT_(%"class.std::allocator.0"* %__a, %"class.std::function"* %__p) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load %"class.std::function"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE7destroyIS3_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %4, %"class.std::function"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE16_M_pop_front_auxEv(%"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %3) #0
  %5 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %6 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %6, i32 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %7, i32 0, i32 0
  %9 = load %"class.std::function"** %8, align 8
  call void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE7destroyIS2_EEvRS3_PT_(%"class.std::allocator.0"* %4, %"class.std::function"* %9)
  %10 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %11 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 1
  %15 = load %"class.std::function"** %14, align 8
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE18_M_deallocate_nodeEPS2_(%"class.std::_Deque_base"* %10, %"class.std::function"* %15) #0
  %16 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %17, i32 0, i32 2
  %19 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 3
  %23 = load %"class.std::function"*** %22, align 8
  %24 = getelementptr inbounds %"class.std::function"** %23, i64 1
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %18, %"class.std::function"** %24) #0
  %25 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %26 = getelementptr inbounds %"class.std::_Deque_base"* %25, i32 0, i32 0
  %27 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %26, i32 0, i32 2
  %28 = getelementptr inbounds %"struct.std::_Deque_iterator"* %27, i32 0, i32 1
  %29 = load %"class.std::function"** %28, align 8
  %30 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %31 = getelementptr inbounds %"class.std::_Deque_base"* %30, i32 0, i32 0
  %32 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %31, i32 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_iterator"* %32, i32 0, i32 0
  store %"class.std::function"* %29, %"class.std::function"** %33, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %3 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE18_M_deallocate_nodeEPS2_(%"class.std::_Deque_base"* %this, %"class.std::function"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  %3 = load %"class.std::_Deque_base"** %1
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %4 to %"class.std::allocator.0"*
  %6 = load %"class.std::function"** %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  call void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE10deallocateERS3_PS2_m(%"class.std::allocator.0"* %5, %"class.std::function"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %this, %"class.std::function"** %__new_node) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"class.std::function"**, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"class.std::function"** %__new_node, %"class.std::function"*** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = load %"class.std::function"*** %2, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  store %"class.std::function"** %4, %"class.std::function"*** %5, align 8
  %6 = load %"class.std::function"*** %2, align 8
  %7 = load %"class.std::function"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  store %"class.std::function"* %7, %"class.std::function"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %10 = load %"class.std::function"** %9, align 8
  %11 = call i64 @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E14_S_buffer_sizeEv() #0
  %12 = getelementptr inbounds %"class.std::function"* %10, i64 %11
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  store %"class.std::function"* %12, %"class.std::function"** %13, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E14_S_buffer_sizeEv() #3 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64 @_ZSt16__deque_buf_sizem(i64 %__size) #4 {
  %1 = alloca i64, align 8
  store i64 %__size, i64* %1, align 8
  %2 = load i64* %1, align 8
  %3 = icmp ult i64 %2, 512
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i64* %1, align 8
  %6 = udiv i64 512, %5
  br label %8

; <label>:7                                       ; preds = %0
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = phi i64 [ %6, %4 ], [ 1, %7 ]
  ret i64 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE10deallocateERS3_PS2_m(%"class.std::allocator.0"* %__a, %"class.std::function"* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.0"** %1, align 8
  %5 = bitcast %"class.std::allocator.0"* %4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = load %"class.std::function"** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.1"* %5, %"class.std::function"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE10deallocateEPS3_m(%"class.__gnu_cxx::new_allocator.1"* %this, %"class.std::function"* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load %"class.std::function"** %3, align 8
  %7 = bitcast %"class.std::function"* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE7destroyIS3_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %this, %"class.std::function"* %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %4 = load %"class.std::function"** %2, align 8
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %4) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %1, align 8
  %2 = load %"class.std::_Function_base"** %1
  %3 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt8functionIFvvEEcvbEv(%"class.std::function"* %this) #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1
  %3 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %4 = call zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* %3)
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE5beginEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %4, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2ERKS5_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZNKSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EdeEv(%"struct.std::_Deque_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  %4 = load %"class.std::function"** %3, align 8
  ret %"class.std::function"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2ERKS5_(%"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Deque_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::function"** %6, align 8
  store %"class.std::function"* %7, %"class.std::function"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 1
  %9 = load %"struct.std::_Deque_iterator"** %2, align 8
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 1
  %11 = load %"class.std::function"** %10, align 8
  store %"class.std::function"* %11, %"class.std::function"** %8, align 8
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 2
  %13 = load %"struct.std::_Deque_iterator"** %2, align 8
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 2
  %15 = load %"class.std::function"** %14, align 8
  store %"class.std::function"* %15, %"class.std::function"** %12, align 8
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 3
  %17 = load %"struct.std::_Deque_iterator"** %2, align 8
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %"class.std::function"*** %18, align 8
  store %"class.std::function"** %19, %"class.std::function"*** %16, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr zeroext i1 @_ZSteqISt8functionIFvvEERS2_PS2_EbRKSt15_Deque_iteratorIT_T0_T1_ESB_(%"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"* %__y) #4 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  %2 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %__x, %"struct.std::_Deque_iterator"** %1, align 8
  store %"struct.std::_Deque_iterator"* %__y, %"struct.std::_Deque_iterator"** %2, align 8
  %3 = load %"struct.std::_Deque_iterator"** %1, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %3, i32 0, i32 0
  %5 = load %"class.std::function"** %4, align 8
  %6 = load %"struct.std::_Deque_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %"class.std::function"** %7, align 8
  %9 = icmp eq %"class.std::function"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt8functionIFvP4NodeEEC2IZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0vvEET_"(%"class.std::function.3"* %this, %class.anon* byval align 8 %__f) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  %2 = load %"class.std::function.3"** %1
  %3 = bitcast %"class.std::function.3"* %2 to %"struct.std::_Maybe_unary_or_binary_function.4"*
  %4 = bitcast %"class.std::function.3"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %4)
  %5 = call zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E21_M_not_empty_functionIS7_EEbRKT_"(%class.anon* %__f)
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = bitcast %"class.std::function.3"* %2 to %"class.std::_Function_base"*
  %8 = getelementptr inbounds %"class.std::_Function_base"* %7, i32 0, i32 0
  %9 = call %class.anon* @"_ZSt4moveIRZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EONSt16remove_referenceIT_E4typeEOS9_"(%class.anon* %__f) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E15_M_init_functorERSt9_Any_dataOS7_"(%"union.std::_Any_data"* %8, %class.anon* %9)
  %10 = getelementptr inbounds %"class.std::function.3"* %2, i32 0, i32 1
  store void (%"union.std::_Any_data"*, %struct.Node**)* @"_ZNSt17_Function_handlerIFvP4NodeEZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", void (%"union.std::_Any_data"*, %struct.Node**)** %10, align 8
  %11 = bitcast %"class.std::function.3"* %2 to %"class.std::_Function_base"*
  %12 = getelementptr inbounds %"class.std::_Function_base"* %11, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8
  br label %13

; <label>:13                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon* @"_ZSt7forwardIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EOT_RNSt16remove_referenceIS7_E4typeE"(%class.anon* %__t) #3 {
  %1 = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %1, align 8
  %2 = load %class.anon** %1, align 8
  ret %class.anon* %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvP4NodeEE4swapERS3_(%"class.std::function.3"* %this, %"class.std::function.3"* %__x) #3 align 2 {
  %1 = alloca %"class.std::function.3"*, align 8
  %2 = alloca %"class.std::function.3"*, align 8
  store %"class.std::function.3"* %this, %"class.std::function.3"** %1, align 8
  store %"class.std::function.3"* %__x, %"class.std::function.3"** %2, align 8
  %3 = load %"class.std::function.3"** %1
  %4 = bitcast %"class.std::function.3"* %3 to %"class.std::_Function_base"*
  %5 = getelementptr inbounds %"class.std::_Function_base"* %4, i32 0, i32 0
  %6 = load %"class.std::function.3"** %2, align 8
  %7 = bitcast %"class.std::function.3"* %6 to %"class.std::_Function_base"*
  %8 = getelementptr inbounds %"class.std::_Function_base"* %7, i32 0, i32 0
  call void @_ZSt4swapISt9_Any_dataEvRT_S2_(%"union.std::_Any_data"* %5, %"union.std::_Any_data"* %8) #0
  %9 = bitcast %"class.std::function.3"* %3 to %"class.std::_Function_base"*
  %10 = getelementptr inbounds %"class.std::_Function_base"* %9, i32 0, i32 1
  %11 = load %"class.std::function.3"** %2, align 8
  %12 = bitcast %"class.std::function.3"* %11 to %"class.std::_Function_base"*
  %13 = getelementptr inbounds %"class.std::_Function_base"* %12, i32 0, i32 1
  call void @_ZSt4swapIPFbRSt9_Any_dataRKS0_St18_Manager_operationEEvRT_S8_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %13) #0
  %14 = getelementptr inbounds %"class.std::function.3"* %3, i32 0, i32 1
  %15 = load %"class.std::function.3"** %2, align 8
  %16 = getelementptr inbounds %"class.std::function.3"* %15, i32 0, i32 1
  call void @_ZSt4swapIPFvRKSt9_Any_dataOP4NodeEEvRT_S9_(void (%"union.std::_Any_data"*, %struct.Node**)** %14, void (%"union.std::_Any_data"*, %struct.Node**)** %16) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapISt9_Any_dataEvRT_S2_(%"union.std::_Any_data"* %__a, %"union.std::_Any_data"* %__b) #4 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %__tmp = alloca %"union.std::_Any_data", align 8
  store %"union.std::_Any_data"* %__a, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__b, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %"union.std::_Any_data"* @_ZSt4moveIRSt9_Any_dataEONSt16remove_referenceIT_E4typeEOS3_(%"union.std::_Any_data"* %3) #0
  %5 = bitcast %"union.std::_Any_data"* %__tmp to i8*
  %6 = bitcast %"union.std::_Any_data"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = load %"union.std::_Any_data"** %1, align 8
  %8 = load %"union.std::_Any_data"** %2, align 8
  %9 = call %"union.std::_Any_data"* @_ZSt4moveIRSt9_Any_dataEONSt16remove_referenceIT_E4typeEOS3_(%"union.std::_Any_data"* %8) #0
  %10 = bitcast %"union.std::_Any_data"* %7 to i8*
  %11 = bitcast %"union.std::_Any_data"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = load %"union.std::_Any_data"** %2, align 8
  %13 = call %"union.std::_Any_data"* @_ZSt4moveIRSt9_Any_dataEONSt16remove_referenceIT_E4typeEOS3_(%"union.std::_Any_data"* %__tmp) #0
  %14 = bitcast %"union.std::_Any_data"* %12 to i8*
  %15 = bitcast %"union.std::_Any_data"* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPFbRSt9_Any_dataRKS0_St18_Manager_operationEEvRT_S8_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__a, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__b) #4 {
  %1 = alloca i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**, align 8
  %2 = alloca i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**, align 8
  %__tmp = alloca i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, align 8
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__a, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %1, align 8
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__b, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %2, align 8
  %3 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %1, align 8
  %4 = call i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** @_ZSt4moveIRPFbRSt9_Any_dataRKS0_St18_Manager_operationEEONSt16remove_referenceIT_E4typeEOS9_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %3) #0
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__tmp, align 8
  %6 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %2, align 8
  %7 = call i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** @_ZSt4moveIRPFbRSt9_Any_dataRKS0_St18_Manager_operationEEONSt16remove_referenceIT_E4typeEOS9_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %6) #0
  %8 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7
  %9 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %1, align 8
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %8, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %9, align 8
  %10 = call i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** @_ZSt4moveIRPFbRSt9_Any_dataRKS0_St18_Manager_operationEEONSt16remove_referenceIT_E4typeEOS9_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__tmp) #0
  %11 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10
  %12 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %2, align 8
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %11, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPFvRKSt9_Any_dataOP4NodeEEvRT_S9_(void (%"union.std::_Any_data"*, %struct.Node**)** %__a, void (%"union.std::_Any_data"*, %struct.Node**)** %__b) #4 {
  %1 = alloca void (%"union.std::_Any_data"*, %struct.Node**)**, align 8
  %2 = alloca void (%"union.std::_Any_data"*, %struct.Node**)**, align 8
  %__tmp = alloca void (%"union.std::_Any_data"*, %struct.Node**)*, align 8
  store void (%"union.std::_Any_data"*, %struct.Node**)** %__a, void (%"union.std::_Any_data"*, %struct.Node**)*** %1, align 8
  store void (%"union.std::_Any_data"*, %struct.Node**)** %__b, void (%"union.std::_Any_data"*, %struct.Node**)*** %2, align 8
  %3 = load void (%"union.std::_Any_data"*, %struct.Node**)*** %1, align 8
  %4 = call void (%"union.std::_Any_data"*, %struct.Node**)** @_ZSt4moveIRPFvRKSt9_Any_dataOP4NodeEEONSt16remove_referenceIT_E4typeEOSA_(void (%"union.std::_Any_data"*, %struct.Node**)** %3) #0
  %5 = load void (%"union.std::_Any_data"*, %struct.Node**)** %4
  store void (%"union.std::_Any_data"*, %struct.Node**)* %5, void (%"union.std::_Any_data"*, %struct.Node**)** %__tmp, align 8
  %6 = load void (%"union.std::_Any_data"*, %struct.Node**)*** %2, align 8
  %7 = call void (%"union.std::_Any_data"*, %struct.Node**)** @_ZSt4moveIRPFvRKSt9_Any_dataOP4NodeEEONSt16remove_referenceIT_E4typeEOSA_(void (%"union.std::_Any_data"*, %struct.Node**)** %6) #0
  %8 = load void (%"union.std::_Any_data"*, %struct.Node**)** %7
  %9 = load void (%"union.std::_Any_data"*, %struct.Node**)*** %1, align 8
  store void (%"union.std::_Any_data"*, %struct.Node**)* %8, void (%"union.std::_Any_data"*, %struct.Node**)** %9, align 8
  %10 = call void (%"union.std::_Any_data"*, %struct.Node**)** @_ZSt4moveIRPFvRKSt9_Any_dataOP4NodeEEONSt16remove_referenceIT_E4typeEOSA_(void (%"union.std::_Any_data"*, %struct.Node**)** %__tmp) #0
  %11 = load void (%"union.std::_Any_data"*, %struct.Node**)** %10
  %12 = load void (%"union.std::_Any_data"*, %struct.Node**)*** %2, align 8
  store void (%"union.std::_Any_data"*, %struct.Node**)* %11, void (%"union.std::_Any_data"*, %struct.Node**)** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void (%"union.std::_Any_data"*, %struct.Node**)** @_ZSt4moveIRPFvRKSt9_Any_dataOP4NodeEEONSt16remove_referenceIT_E4typeEOSA_(void (%"union.std::_Any_data"*, %struct.Node**)** %__t) #3 {
  %1 = alloca void (%"union.std::_Any_data"*, %struct.Node**)**, align 8
  store void (%"union.std::_Any_data"*, %struct.Node**)** %__t, void (%"union.std::_Any_data"*, %struct.Node**)*** %1, align 8
  %2 = load void (%"union.std::_Any_data"*, %struct.Node**)*** %1, align 8
  ret void (%"union.std::_Any_data"*, %struct.Node**)** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** @_ZSt4moveIRPFbRSt9_Any_dataRKS0_St18_Manager_operationEEONSt16remove_referenceIT_E4typeEOS9_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__t) #3 {
  %1 = alloca i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)**, align 8
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %__t, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %1, align 8
  %2 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*** %1, align 8
  ret i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"union.std::_Any_data"* @_ZSt4moveIRSt9_Any_dataEONSt16remove_referenceIT_E4typeEOS3_(%"union.std::_Any_data"* %__t) #3 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__t, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  ret %"union.std::_Any_data"* %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E21_M_not_empty_functionIS7_EEbRKT_"(%class.anon*) #3 align 2 {
  %2 = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %2, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E15_M_init_functorERSt9_Any_dataOS7_"(%"union.std::_Any_data"* %__functor, %class.anon* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon* %__f, %class.anon** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = load %class.anon** %2, align 8
  %6 = call %class.anon* @"_ZSt4moveIRZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EONSt16remove_referenceIT_E4typeEOS9_"(%class.anon* %5) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E15_M_init_functorERSt9_Any_dataOS7_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %4, %class.anon* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon* @"_ZSt4moveIRZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EONSt16remove_referenceIT_E4typeEOS9_"(%class.anon* %__t) #3 {
  %1 = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %1, align 8
  %2 = load %class.anon** %1, align 8
  ret %class.anon* %2
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvP4NodeEZ18in_order_traversalS1_RSt6vectorIiSaIiEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(%"union.std::_Any_data"* %__functor, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %3)
  %5 = load %struct.Node*** %2, align 8
  %6 = call %struct.Node** @_ZSt7forwardIP4NodeEOT_RNSt16remove_referenceIS2_E4typeE(%struct.Node** %5) #0
  %7 = load %struct.Node** %6
  call void @"_ZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_"(%class.anon* %4, %struct.Node* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source, i32 %__op) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  store i32 %__op, i32* %3, align 4
  %6 = load i32* %3, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %15
  ]

; <label>:7                                       ; preds = %0
  %8 = load %"union.std::_Any_data"** %2, align 8
  %9 = call %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %8)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon* %9, %class.anon** %11
  br label %17

; <label>:12                                      ; preds = %0
  %13 = load %"union.std::_Any_data"** %1, align 8
  %14 = load %"union.std::_Any_data"** %2, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E8_M_cloneERSt9_Any_dataRKS9_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %13, %"union.std::_Any_data"* %14)
  br label %17

; <label>:15                                      ; preds = %0
  %16 = load %"union.std::_Any_data"** %1, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %16)
  br label %17

; <label>:17                                      ; preds = %0, %15, %12, %7
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %__ptr = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon** @"_ZNKSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERKT_v"(%"union.std::_Any_data"* %2)
  %4 = load %class.anon** %3
  store %class.anon* %4, %class.anon** %__ptr, align 8
  %5 = load %class.anon** %__ptr, align 8
  ret %class.anon* %5
}

; Function Attrs: nounwind uwtable
define internal %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon**
  ret %class.anon** %4
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E8_M_cloneERSt9_Any_dataRKS9_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon*
  %6 = load %"union.std::_Any_data"** %2, align 8
  %7 = call %class.anon** @"_ZNKSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERKT_v"(%"union.std::_Any_data"* %6)
  %8 = load %class.anon** %7
  %9 = bitcast %class.anon* %5 to i8*
  %10 = bitcast %class.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  %11 = load %"union.std::_Any_data"** %1, align 8
  %12 = call %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERT_v"(%"union.std::_Any_data"* %11)
  store %class.anon* %5, %class.anon** %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__victim) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %1, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERT_v"(%"union.std::_Any_data"* %3)
  %5 = load %class.anon** %4
  %6 = icmp eq %class.anon* %5, null
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast %class.anon* %5 to i8*
  call void @_ZdlPv(i8* %8) #10
  br label %9

; <label>:9                                       ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon** @"_ZNKSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERKT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon**
  ret %class.anon** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = bitcast %"union.std::_Any_data"* %2 to [16 x i8]*
  %4 = getelementptr inbounds [16 x i8]* %3, i32 0, i64 0
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = bitcast %"union.std::_Any_data"* %2 to [16 x i8]*
  %4 = getelementptr inbounds [16 x i8]* %3, i32 0, i64 0
  ret i8* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_"(%class.anon* %this, %struct.Node* %n) #4 align 2 {
  %1 = alloca %class.anon*, align 8
  %2 = alloca %struct.Node*, align 8
  %3 = alloca %"class.std::function", align 8
  %4 = alloca %class.anon.9, align 8
  %5 = alloca %"class.std::function", align 8
  %6 = alloca %class.anon.10, align 8
  %7 = alloca %"class.std::function", align 8
  %8 = alloca %class.anon.11, align 8
  store %class.anon* %this, %class.anon** %1, align 8
  store %struct.Node* %n, %struct.Node** %2, align 8
  %9 = load %class.anon** %1
  %10 = load %struct.Node** %2, align 8
  %11 = icmp ne %struct.Node* %10, null
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %0
  br label %46

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %class.anon* %9, i32 0, i32 0
  %15 = load %"class.std::deque"** %14, align 8
  %16 = getelementptr inbounds %class.anon.9* %4, i32 0, i32 0
  %17 = getelementptr inbounds %class.anon* %9, i32 0, i32 1
  %18 = load %"class.std::function.3"** %17, align 8
  store %"class.std::function.3"* %18, %"class.std::function.3"** %16, align 8
  %19 = getelementptr inbounds %class.anon.9* %4, i32 0, i32 1
  %20 = getelementptr inbounds %class.anon* %9, i32 0, i32 2
  %21 = load %"class.std::vector"** %20, align 8
  store %"class.std::vector"* %21, %"class.std::vector"** %19, align 8
  %22 = getelementptr inbounds %class.anon.9* %4, i32 0, i32 2
  %23 = load %struct.Node** %2, align 8
  store %struct.Node* %23, %struct.Node** %22, align 8
  call void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE_vvEET_"(%"class.std::function"* %3, %class.anon.9* byval align 8 %4)
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE10push_frontEOS2_(%"class.std::deque"* %15, %"class.std::function"* %3)
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %3) #0
  %24 = getelementptr inbounds %class.anon* %9, i32 0, i32 0
  %25 = load %"class.std::deque"** %24, align 8
  %26 = getelementptr inbounds %class.anon.10* %6, i32 0, i32 0
  %27 = getelementptr inbounds %class.anon* %9, i32 0, i32 2
  %28 = load %"class.std::vector"** %27, align 8
  store %"class.std::vector"* %28, %"class.std::vector"** %26, align 8
  %29 = getelementptr inbounds %class.anon.10* %6, i32 0, i32 1
  %30 = load %struct.Node** %2, align 8
  store %struct.Node* %30, %struct.Node** %29, align 8
  %31 = bitcast %class.anon.10* %6 to { %"class.std::vector"*, %struct.Node* }*
  %32 = getelementptr { %"class.std::vector"*, %struct.Node* }* %31, i32 0, i32 0
  %33 = load %"class.std::vector"** %32, align 1
  %34 = getelementptr { %"class.std::vector"*, %struct.Node* }* %31, i32 0, i32 1
  %35 = load %struct.Node** %34, align 1
  call void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE0_vvEET_"(%"class.std::function"* %5, %"class.std::vector"* %33, %struct.Node* %35)
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE10push_frontEOS2_(%"class.std::deque"* %25, %"class.std::function"* %5)
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %5) #0
  %36 = getelementptr inbounds %class.anon* %9, i32 0, i32 0
  %37 = load %"class.std::deque"** %36, align 8
  %38 = getelementptr inbounds %class.anon.11* %8, i32 0, i32 0
  %39 = getelementptr inbounds %class.anon* %9, i32 0, i32 1
  %40 = load %"class.std::function.3"** %39, align 8
  store %"class.std::function.3"* %40, %"class.std::function.3"** %38, align 8
  %41 = getelementptr inbounds %class.anon.11* %8, i32 0, i32 1
  %42 = getelementptr inbounds %class.anon* %9, i32 0, i32 2
  %43 = load %"class.std::vector"** %42, align 8
  store %"class.std::vector"* %43, %"class.std::vector"** %41, align 8
  %44 = getelementptr inbounds %class.anon.11* %8, i32 0, i32 2
  %45 = load %struct.Node** %2, align 8
  store %struct.Node* %45, %struct.Node** %44, align 8
  call void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE1_vvEET_"(%"class.std::function"* %7, %class.anon.11* byval align 8 %8)
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE10push_frontEOS2_(%"class.std::deque"* %37, %"class.std::function"* %7)
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %7) #0
  br label %46

; <label>:46                                      ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIP4NodeEOT_RNSt16remove_referenceIS2_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE10push_frontEOS2_(%"class.std::deque"* %this, %"class.std::function"* %__x) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::function"* %__x, %"class.std::function"** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = load %"class.std::function"** %2, align 8
  %5 = call %"class.std::function"* @_ZSt4moveIRSt8functionIFvvEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::function"* %4) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE13emplace_frontIJS2_EEEvDpOT_(%"class.std::deque"* %3, %"class.std::function"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE_vvEET_"(%"class.std::function"* %this, %class.anon.9* byval align 8 %__f) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1
  %3 = bitcast %"class.std::function"* %2 to %"struct.std::_Maybe_unary_or_binary_function"*
  %4 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %4)
  %5 = call zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.9* %__f)
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %8 = getelementptr inbounds %"class.std::_Function_base"* %7, i32 0, i32 0
  %9 = call %class.anon.9* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.9* %__f) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %8, %class.anon.9* %9)
  %10 = getelementptr inbounds %"class.std::function"* %2, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E9_M_invokeERKSt9_Any_data", void (%"union.std::_Any_data"*)** %10, align 8
  %11 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %12 = getelementptr inbounds %"class.std::_Function_base"* %11, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8
  br label %13

; <label>:13                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE0_vvEET_"(%"class.std::function"* %this, %"class.std::vector"* %__f.coerce0, %struct.Node* %__f.coerce1) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  %__f = alloca %class.anon.10, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = bitcast %class.anon.10* %__f to { %"class.std::vector"*, %struct.Node* }*
  %3 = getelementptr { %"class.std::vector"*, %struct.Node* }* %2, i32 0, i32 0
  store %"class.std::vector"* %__f.coerce0, %"class.std::vector"** %3
  %4 = getelementptr { %"class.std::vector"*, %struct.Node* }* %2, i32 0, i32 1
  store %struct.Node* %__f.coerce1, %struct.Node** %4
  %5 = load %"class.std::function"** %1
  %6 = bitcast %"class.std::function"* %5 to %"struct.std::_Maybe_unary_or_binary_function"*
  %7 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %7)
  %8 = call zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.10* %__f)
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %0
  %10 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %11 = getelementptr inbounds %"class.std::_Function_base"* %10, i32 0, i32 0
  %12 = call %class.anon.10* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.10* %__f) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %11, %class.anon.10* %12)
  %13 = getelementptr inbounds %"class.std::function"* %5, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E9_M_invokeERKSt9_Any_data", void (%"union.std::_Any_data"*)** %13, align 8
  %14 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %15 = getelementptr inbounds %"class.std::_Function_base"* %14, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %15, align 8
  br label %16

; <label>:16                                      ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt8functionIFvvEEC2IZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES4_EUlvE1_vvEET_"(%"class.std::function"* %this, %class.anon.11* byval align 8 %__f) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1
  %3 = bitcast %"class.std::function"* %2 to %"struct.std::_Maybe_unary_or_binary_function"*
  %4 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %4)
  %5 = call zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.11* %__f)
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %8 = getelementptr inbounds %"class.std::_Function_base"* %7, i32 0, i32 0
  %9 = call %class.anon.11* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE1_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.11* %__f) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %8, %class.anon.11* %9)
  %10 = getelementptr inbounds %"class.std::function"* %2, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E9_M_invokeERKSt9_Any_data", void (%"union.std::_Any_data"*)** %10, align 8
  %11 = bitcast %"class.std::function"* %2 to %"class.std::_Function_base"*
  %12 = getelementptr inbounds %"class.std::_Function_base"* %11, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %12, align 8
  br label %13

; <label>:13                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.11*) #3 align 2 {
  %2 = alloca %class.anon.11*, align 8
  store %class.anon.11* %0, %class.anon.11** %2, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %__functor, %class.anon.11* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.11*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.11* %__f, %class.anon.11** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = load %class.anon.11** %2, align 8
  %6 = call %class.anon.11* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE1_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.11* %5) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %4, %class.anon.11* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.11* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE1_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.11* %__t) #3 {
  %1 = alloca %class.anon.11*, align 8
  store %class.anon.11* %__t, %class.anon.11** %1, align 8
  %2 = load %class.anon.11** %1, align 8
  ret %class.anon.11* %2
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* %__functor) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.11* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %2)
  call void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE1_clEv"(%class.anon.11* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source, i32 %__op) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  store i32 %__op, i32* %3, align 4
  %6 = load i32* %3, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %15
  ]

; <label>:7                                       ; preds = %0
  %8 = load %"union.std::_Any_data"** %2, align 8
  %9 = call %class.anon.11* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %8)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon.11** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon.11* %9, %class.anon.11** %11
  br label %17

; <label>:12                                      ; preds = %0
  %13 = load %"union.std::_Any_data"** %1, align 8
  %14 = load %"union.std::_Any_data"** %2, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %13, %"union.std::_Any_data"* %14)
  br label %17

; <label>:15                                      ; preds = %0
  %16 = load %"union.std::_Any_data"** %1, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %16)
  br label %17

; <label>:17                                      ; preds = %0, %15, %12, %7
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal %class.anon.11* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %__ptr = alloca %class.anon.11*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.11** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERKT_v"(%"union.std::_Any_data"* %2)
  %4 = load %class.anon.11** %3
  store %class.anon.11* %4, %class.anon.11** %__ptr, align 8
  %5 = load %class.anon.11** %__ptr, align 8
  ret %class.anon.11* %5
}

; Function Attrs: nounwind uwtable
define internal %class.anon.11** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.11**
  ret %class.anon.11** %4
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon.11*
  %6 = load %"union.std::_Any_data"** %2, align 8
  %7 = call %class.anon.11** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERKT_v"(%"union.std::_Any_data"* %6)
  %8 = load %class.anon.11** %7
  %9 = bitcast %class.anon.11* %5 to i8*
  %10 = bitcast %class.anon.11* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  %11 = load %"union.std::_Any_data"** %1, align 8
  %12 = call %class.anon.11** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERT_v"(%"union.std::_Any_data"* %11)
  store %class.anon.11* %5, %class.anon.11** %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__victim) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %1, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %class.anon.11** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERT_v"(%"union.std::_Any_data"* %3)
  %5 = load %class.anon.11** %4
  %6 = icmp eq %class.anon.11* %5, null
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast %class.anon.11* %5 to i8*
  call void @_ZdlPv(i8* %8) #10
  br label %9

; <label>:9                                       ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.11** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERKT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.11**
  ret %class.anon.11** %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE1_clEv"(%class.anon.11* %this) #4 align 2 {
  %1 = alloca %class.anon.11*, align 8
  store %class.anon.11* %this, %class.anon.11** %1, align 8
  %2 = load %class.anon.11** %1
  %3 = getelementptr inbounds %class.anon.11* %2, i32 0, i32 0
  %4 = load %"class.std::function.3"** %3, align 8
  %5 = getelementptr inbounds %class.anon.11* %2, i32 0, i32 2
  %6 = load %struct.Node** %5, align 8
  %7 = getelementptr inbounds %struct.Node* %6, i32 0, i32 1
  %8 = load %struct.Node** %7, align 8
  call void @_ZNKSt8functionIFvP4NodeEEclES1_(%"class.std::function.3"* %4, %struct.Node* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__functor, %class.anon.11* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.11*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.11* %__f, %class.anon.11** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon.11*
  %6 = load %class.anon.11** %2, align 8
  %7 = call %class.anon.11* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE1_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.11* %6) #0
  %8 = bitcast %class.anon.11* %5 to i8*
  %9 = bitcast %class.anon.11* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon.11** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE1_EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon.11* %5, %class.anon.11** %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.10*) #3 align 2 {
  %2 = alloca %class.anon.10*, align 8
  store %class.anon.10* %0, %class.anon.10** %2, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %__functor, %class.anon.10* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.10*, align 8
  %3 = alloca %"struct.std::integral_constant.12", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.10* %__f, %class.anon.10** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = load %class.anon.10** %2, align 8
  %6 = call %class.anon.10* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.10* %5) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* %4, %class.anon.10* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.10* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.10* %__t) #3 {
  %1 = alloca %class.anon.10*, align 8
  store %class.anon.10* %__t, %class.anon.10** %1, align 8
  %2 = load %class.anon.10** %1, align 8
  ret %class.anon.10* %2
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* %__functor) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.10* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %2)
  call void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE0_clEv"(%class.anon.10* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source, i32 %__op) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::integral_constant.12", align 1
  %5 = alloca %"struct.std::integral_constant.12", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  store i32 %__op, i32* %3, align 4
  %6 = load i32* %3, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %15
  ]

; <label>:7                                       ; preds = %0
  %8 = load %"union.std::_Any_data"** %2, align 8
  %9 = call %class.anon.10* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %8)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon.10** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon.10* %9, %class.anon.10** %11
  br label %17

; <label>:12                                      ; preds = %0
  %13 = load %"union.std::_Any_data"** %1, align 8
  %14 = load %"union.std::_Any_data"** %2, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* %13, %"union.std::_Any_data"* %14)
  br label %17

; <label>:15                                      ; preds = %0
  %16 = load %"union.std::_Any_data"** %1, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* %16)
  br label %17

; <label>:17                                      ; preds = %0, %15, %12, %7
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal %class.anon.10* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %__ptr = alloca %class.anon.10*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.10* @"_ZNKSt9_Any_data9_M_accessIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERKT_v"(%"union.std::_Any_data"* %2)
  %4 = call %class.anon.10* @"_ZSt11__addressofIKZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EPT_RS9_"(%class.anon.10* %3) #0
  store %class.anon.10* %4, %class.anon.10** %__ptr, align 8
  %5 = load %class.anon.10** %__ptr, align 8
  ret %class.anon.10* %5
}

; Function Attrs: nounwind uwtable
define internal %class.anon.10** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.10**
  ret %class.anon.10** %4
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %"struct.std::integral_constant.12", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %4)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast i8* %5 to %class.anon.10*
  %9 = load %"union.std::_Any_data"** %2, align 8
  %10 = call %class.anon.10* @"_ZNKSt9_Any_data9_M_accessIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERKT_v"(%"union.std::_Any_data"* %9)
  %11 = bitcast %class.anon.10* %8 to i8*
  %12 = bitcast %class.anon.10* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %7, %0
  %14 = phi %class.anon.10* [ %8, %7 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* %__victim) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"struct.std::integral_constant.12", align 1
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %1, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %class.anon.10* @"_ZNSt9_Any_data9_M_accessIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERT_v"(%"union.std::_Any_data"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.10* @"_ZNSt9_Any_data9_M_accessIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.10*
  ret %class.anon.10* %4
}

; Function Attrs: nounwind uwtable
define internal %class.anon.10* @"_ZNKSt9_Any_data9_M_accessIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_EERKT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.10*
  ret %class.anon.10* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal %class.anon.10* @"_ZSt11__addressofIKZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EPT_RS9_"(%class.anon.10* %__r) #4 {
  %1 = alloca %class.anon.10*, align 8
  store %class.anon.10* %__r, %class.anon.10** %1, align 8
  %2 = load %class.anon.10** %1, align 8
  %3 = bitcast %class.anon.10* %2 to i8*
  %4 = bitcast i8* %3 to %class.anon.10*
  ret %class.anon.10* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE0_clEv"(%class.anon.10* %this) #4 align 2 {
  %1 = alloca %class.anon.10*, align 8
  store %class.anon.10* %this, %class.anon.10** %1, align 8
  %2 = load %class.anon.10** %1
  %3 = getelementptr inbounds %class.anon.10* %2, i32 0, i32 0
  %4 = load %"class.std::vector"** %3, align 8
  %5 = getelementptr inbounds %class.anon.10* %2, i32 0, i32 1
  %6 = load %struct.Node** %5, align 8
  %7 = getelementptr inbounds %struct.Node* %6, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %4, i32* %7)
  ret void
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
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str2, i32 0, i32 0))
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
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #8
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
  call void @_ZSt17__throw_bad_allocv() #8
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
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE0_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* %__functor, %class.anon.10* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.10*, align 8
  %3 = alloca %"struct.std::integral_constant.12", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.10* %__f, %class.anon.10** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %4)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast i8* %5 to %class.anon.10*
  %9 = load %class.anon.10** %2, align 8
  %10 = call %class.anon.10* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE0_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.10* %9) #0
  %11 = bitcast %class.anon.10* %8 to i8*
  %12 = bitcast %class.anon.10* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 16, i32 8, i1 false)
  br label %13

; <label>:13                                      ; preds = %7, %0
  %14 = phi %class.anon.10* [ %8, %7 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E21_M_not_empty_functionIS8_EEbRKT_"(%class.anon.9*) #3 align 2 {
  %2 = alloca %class.anon.9*, align 8
  store %class.anon.9* %0, %class.anon.9** %2, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E15_M_init_functorERSt9_Any_dataOS8_"(%"union.std::_Any_data"* %__functor, %class.anon.9* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.9*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.9* %__f, %class.anon.9** %2, align 8
  %4 = load %"union.std::_Any_data"** %1, align 8
  %5 = load %class.anon.9** %2, align 8
  %6 = call %class.anon.9* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.9* %5) #0
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %4, %class.anon.9* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.9* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.9* %__t) #3 {
  %1 = alloca %class.anon.9*, align 8
  store %class.anon.9* %__t, %class.anon.9** %1, align 8
  %2 = load %class.anon.9** %1, align 8
  ret %class.anon.9* %2
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* %__functor) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.9* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %2)
  call void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE_clEv"(%class.anon.9* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source, i32 %__op) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  store i32 %__op, i32* %3, align 4
  %6 = load i32* %3, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %15
  ]

; <label>:7                                       ; preds = %0
  %8 = load %"union.std::_Any_data"** %2, align 8
  %9 = call %class.anon.9* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %8)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon.9** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon.9* %9, %class.anon.9** %11
  br label %17

; <label>:12                                      ; preds = %0
  %13 = load %"union.std::_Any_data"** %1, align 8
  %14 = load %"union.std::_Any_data"** %2, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %13, %"union.std::_Any_data"* %14)
  br label %17

; <label>:15                                      ; preds = %0
  %16 = load %"union.std::_Any_data"** %1, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %16)
  br label %17

; <label>:17                                      ; preds = %0, %15, %12, %7
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal %class.anon.9* @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %__ptr = alloca %class.anon.9*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1, align 8
  %3 = call %class.anon.9** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERKT_v"(%"union.std::_Any_data"* %2)
  %4 = load %class.anon.9** %3
  store %class.anon.9* %4, %class.anon.9** %__ptr, align 8
  %5 = load %class.anon.9** %__ptr, align 8
  ret %class.anon.9* %5
}

; Function Attrs: nounwind uwtable
define internal %class.anon.9** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.9**
  ret %class.anon.9** %4
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E8_M_cloneERSt9_Any_dataRKSA_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__dest, %"union.std::_Any_data"* %__source) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %1, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon.9*
  %6 = load %"union.std::_Any_data"** %2, align 8
  %7 = call %class.anon.9** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERKT_v"(%"union.std::_Any_data"* %6)
  %8 = load %class.anon.9** %7
  %9 = bitcast %class.anon.9* %5 to i8*
  %10 = bitcast %class.anon.9* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  %11 = load %"union.std::_Any_data"** %1, align 8
  %12 = call %class.anon.9** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERT_v"(%"union.std::_Any_data"* %11)
  store %class.anon.9* %5, %class.anon.9** %12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__victim) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %1, align 8
  %3 = load %"union.std::_Any_data"** %1, align 8
  %4 = call %class.anon.9** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERT_v"(%"union.std::_Any_data"* %3)
  %5 = load %class.anon.9** %4
  %6 = icmp eq %class.anon.9* %5, null
  br i1 %6, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast %class.anon.9* %5 to i8*
  call void @_ZdlPv(i8* %8) #10
  br label %9

; <label>:9                                       ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal %class.anon.9** @"_ZNKSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERKT_v"(%"union.std::_Any_data"* %this) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %1, align 8
  %2 = load %"union.std::_Any_data"** %1
  %3 = call i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* %2)
  %4 = bitcast i8* %3 to %class.anon.9**
  ret %class.anon.9** %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES0_ENKUlvE_clEv"(%class.anon.9* %this) #4 align 2 {
  %1 = alloca %class.anon.9*, align 8
  store %class.anon.9* %this, %class.anon.9** %1, align 8
  %2 = load %class.anon.9** %1
  %3 = getelementptr inbounds %class.anon.9* %2, i32 0, i32 0
  %4 = load %"class.std::function.3"** %3, align 8
  %5 = getelementptr inbounds %class.anon.9* %2, i32 0, i32 2
  %6 = load %struct.Node** %5, align 8
  %7 = getelementptr inbounds %struct.Node* %6, i32 0, i32 2
  %8 = load %struct.Node** %7, align 8
  call void @_ZNKSt8functionIFvP4NodeEEclES1_(%"class.std::function.3"* %4, %struct.Node* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_E15_M_init_functorERSt9_Any_dataOS8_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__functor, %class.anon.9* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon.9*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon.9* %__f, %class.anon.9** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon.9*
  %6 = load %class.anon.9** %2, align 8
  %7 = call %class.anon.9* @"_ZSt4moveIRZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES1_EUlvE_EONSt16remove_referenceIT_E4typeEOSA_"(%class.anon.9* %6) #0
  %8 = bitcast %class.anon.9* %5 to i8*
  %9 = bitcast %class.anon.9* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon.9** @"_ZNSt9_Any_data9_M_accessIPZZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEENK3$_0clES2_EUlvE_EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon.9* %5, %class.anon.9** %11
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE13emplace_frontIJS2_EEEvDpOT_(%"class.std::deque"* %this, %"class.std::function"* %__args) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::function"* %__args, %"class.std::function"** %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = getelementptr inbounds %"class.std::_Deque_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %5, i32 0, i32 2
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator"* %6, i32 0, i32 0
  %8 = load %"class.std::function"** %7, align 8
  %9 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %10 = getelementptr inbounds %"class.std::_Deque_base"* %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %10, i32 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_iterator"* %11, i32 0, i32 1
  %13 = load %"class.std::function"** %12, align 8
  %14 = icmp ne %"class.std::function"* %8, %13
  br i1 %14, label %15, label %33

; <label>:15                                      ; preds = %0
  %16 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %16, i32 0, i32 0
  %18 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %17 to %"class.std::allocator.0"*
  %19 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %19, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %20, i32 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Deque_iterator"* %21, i32 0, i32 0
  %23 = load %"class.std::function"** %22, align 8
  %24 = getelementptr inbounds %"class.std::function"* %23, i64 -1
  %25 = load %"class.std::function"** %2, align 8
  %26 = call %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %25) #0
  call void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(%"class.std::allocator.0"* %18, %"class.std::function"* %24, %"class.std::function"* %26)
  %27 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %28 = getelementptr inbounds %"class.std::_Deque_base"* %27, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %28, i32 0, i32 2
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator"* %29, i32 0, i32 0
  %31 = load %"class.std::function"** %30, align 8
  %32 = getelementptr inbounds %"class.std::function"* %31, i32 -1
  store %"class.std::function"* %32, %"class.std::function"** %30, align 8
  br label %36

; <label>:33                                      ; preds = %0
  %34 = load %"class.std::function"** %2, align 8
  %35 = call %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %34) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE17_M_push_front_auxIJS2_EEEvDpOT_(%"class.std::deque"* %3, %"class.std::function"* %35)
  br label %36

; <label>:36                                      ; preds = %33, %15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZSt4moveIRSt8functionIFvvEEEONSt16remove_referenceIT_E4typeEOS5_(%"class.std::function"* %__t) #3 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__t, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1, align 8
  ret %"class.std::function"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(%"class.std::allocator.0"* %__a, %"class.std::function"* %__p, %"class.std::function"* %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  %3 = alloca %"class.std::function"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  store %"class.std::function"* %__args, %"class.std::function"** %3, align 8
  %4 = load %"class.std::allocator.0"** %1, align 8
  %5 = bitcast %"class.std::allocator.0"* %4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = load %"class.std::function"** %2, align 8
  %7 = load %"class.std::function"** %3, align 8
  %8 = call %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE9constructIS3_JS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %5, %"class.std::function"* %6, %"class.std::function"* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %__t) #3 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__t, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1, align 8
  ret %"class.std::function"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE17_M_push_front_auxIJS2_EEEvDpOT_(%"class.std::deque"* %this, %"class.std::function"* %__args) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store %"class.std::function"* %__args, %"class.std::function"** %2, align 8
  %3 = load %"class.std::deque"** %1
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE23_M_reserve_map_at_frontEm(%"class.std::deque"* %3, i64 1)
  %4 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %5 = call %"class.std::function"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %6 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %7, i32 0, i32 2
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %"class.std::function"*** %9, align 8
  %11 = getelementptr inbounds %"class.std::function"** %10, i64 -1
  store %"class.std::function"* %5, %"class.std::function"** %11, align 8
  %12 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %13 = getelementptr inbounds %"class.std::_Deque_base"* %12, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %13, i32 0, i32 2
  %15 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %15, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %16, i32 0, i32 2
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator"* %17, i32 0, i32 3
  %19 = load %"class.std::function"*** %18, align 8
  %20 = getelementptr inbounds %"class.std::function"** %19, i64 -1
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %14, %"class.std::function"** %20) #0
  %21 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %22, i32 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator"* %23, i32 0, i32 2
  %25 = load %"class.std::function"** %24, align 8
  %26 = getelementptr inbounds %"class.std::function"* %25, i64 -1
  %27 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %28 = getelementptr inbounds %"class.std::_Deque_base"* %27, i32 0, i32 0
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %28, i32 0, i32 2
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator"* %29, i32 0, i32 0
  store %"class.std::function"* %26, %"class.std::function"** %30, align 8
  %31 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %32 = getelementptr inbounds %"class.std::_Deque_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %32 to %"class.std::allocator.0"*
  %34 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %35 = getelementptr inbounds %"class.std::_Deque_base"* %34, i32 0, i32 0
  %36 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %35, i32 0, i32 2
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator"* %36, i32 0, i32 0
  %38 = load %"class.std::function"** %37, align 8
  %39 = load %"class.std::function"** %2, align 8
  %40 = call %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %39) #0
  call void @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_(%"class.std::allocator.0"* %33, %"class.std::function"* %38, %"class.std::function"* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE23_M_reserve_map_at_frontEm(%"class.std::deque"* %this, i64 %__nodes_to_add) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %3 = load %"class.std::deque"** %1
  %4 = load i64* %2, align 8
  %5 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %6 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %6, i32 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %7, i32 0, i32 3
  %9 = load %"class.std::function"*** %8, align 8
  %10 = bitcast %"class.std::deque"* %3 to %"class.std::_Deque_base"*
  %11 = getelementptr inbounds %"class.std::_Deque_base"* %10, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %11, i32 0, i32 0
  %13 = load %"class.std::function"*** %12, align 8
  %14 = ptrtoint %"class.std::function"** %9 to i64
  %15 = ptrtoint %"class.std::function"** %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 8
  %18 = icmp ugt i64 %4, %17
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %0
  %20 = load i64* %2, align 8
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE17_M_reallocate_mapEmb(%"class.std::deque"* %3, i64 %20, i1 zeroext true)
  br label %21

; <label>:21                                      ; preds = %19, %0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %3 to %"class.std::allocator.0"*
  %5 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  %6 = call %"class.std::function"* @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE8allocateERS3_m(%"class.std::allocator.0"* %4, i64 %5)
  ret %"class.std::function"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZNSt16allocator_traitsISaISt8functionIFvvEEEE8allocateERS3_m(%"class.std::allocator.0"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load i64* %2, align 8
  %6 = call %"class.std::function"* @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %4, i64 %5, i8* null)
  ret %"class.std::function"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt8functionIFvvEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #8
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 32
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"class.std::function"*
  ret %"class.std::function"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt8functionIFvvEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret i64 576460752303423487
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE17_M_reallocate_mapEmb(%"class.std::deque"* %this, i64 %__nodes_to_add, i1 zeroext %__add_at_front) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %__old_num_nodes = alloca i64, align 8
  %__new_num_nodes = alloca i64, align 8
  %__new_nstart = alloca %"class.std::function"**, align 8
  %__new_map_size = alloca i64, align 8
  %__new_map = alloca %"class.std::function"**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  store i64 %__nodes_to_add, i64* %2, align 8
  %4 = zext i1 %__add_at_front to i8
  store i8 %4, i8* %3, align 1
  %5 = load %"class.std::deque"** %1
  %6 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %7 = getelementptr inbounds %"class.std::_Deque_base"* %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %7, i32 0, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_iterator"* %8, i32 0, i32 3
  %10 = load %"class.std::function"*** %9, align 8
  %11 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %12, i32 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %"class.std::function"*** %14, align 8
  %16 = ptrtoint %"class.std::function"** %10 to i64
  %17 = ptrtoint %"class.std::function"** %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %__old_num_nodes, align 8
  %21 = load i64* %__old_num_nodes, align 8
  %22 = load i64* %2, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %__new_num_nodes, align 8
  %24 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %24, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__new_num_nodes, align 8
  %29 = mul i64 2, %28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %90

; <label>:31                                      ; preds = %0
  %32 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %33 = getelementptr inbounds %"class.std::_Deque_base"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %33, i32 0, i32 0
  %35 = load %"class.std::function"*** %34, align 8
  %36 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %37, i32 0, i32 1
  %39 = load i64* %38, align 8
  %40 = load i64* %__new_num_nodes, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 2
  %43 = getelementptr inbounds %"class.std::function"** %35, i64 %42
  %44 = load i8* %3, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %31
  %47 = load i64* %2, align 8
  br label %49

; <label>:48                                      ; preds = %31
  br label %49

; <label>:49                                      ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds %"class.std::function"** %43, i64 %50
  store %"class.std::function"** %51, %"class.std::function"*** %__new_nstart, align 8
  %52 = load %"class.std::function"*** %__new_nstart, align 8
  %53 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %54 = getelementptr inbounds %"class.std::_Deque_base"* %53, i32 0, i32 0
  %55 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %54, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator"* %55, i32 0, i32 3
  %57 = load %"class.std::function"*** %56, align 8
  %58 = icmp ult %"class.std::function"** %52, %57
  br i1 %58, label %59, label %73

; <label>:59                                      ; preds = %49
  %60 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %61 = getelementptr inbounds %"class.std::_Deque_base"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %61, i32 0, i32 2
  %63 = getelementptr inbounds %"struct.std::_Deque_iterator"* %62, i32 0, i32 3
  %64 = load %"class.std::function"*** %63, align 8
  %65 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %66 = getelementptr inbounds %"class.std::_Deque_base"* %65, i32 0, i32 0
  %67 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %66, i32 0, i32 3
  %68 = getelementptr inbounds %"struct.std::_Deque_iterator"* %67, i32 0, i32 3
  %69 = load %"class.std::function"*** %68, align 8
  %70 = getelementptr inbounds %"class.std::function"** %69, i64 1
  %71 = load %"class.std::function"*** %__new_nstart, align 8
  %72 = call %"class.std::function"** @_ZSt4copyIPPSt8functionIFvvEES4_ET0_T_S6_S5_(%"class.std::function"** %64, %"class.std::function"** %70, %"class.std::function"** %71)
  br label %89

; <label>:73                                      ; preds = %49
  %74 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %75 = getelementptr inbounds %"class.std::_Deque_base"* %74, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %75, i32 0, i32 2
  %77 = getelementptr inbounds %"struct.std::_Deque_iterator"* %76, i32 0, i32 3
  %78 = load %"class.std::function"*** %77, align 8
  %79 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %80 = getelementptr inbounds %"class.std::_Deque_base"* %79, i32 0, i32 0
  %81 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %80, i32 0, i32 3
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator"* %81, i32 0, i32 3
  %83 = load %"class.std::function"*** %82, align 8
  %84 = getelementptr inbounds %"class.std::function"** %83, i64 1
  %85 = load %"class.std::function"*** %__new_nstart, align 8
  %86 = load i64* %__old_num_nodes, align 8
  %87 = getelementptr inbounds %"class.std::function"** %85, i64 %86
  %88 = call %"class.std::function"** @_ZSt13copy_backwardIPPSt8functionIFvvEES4_ET0_T_S6_S5_(%"class.std::function"** %78, %"class.std::function"** %84, %"class.std::function"** %87)
  br label %89

; <label>:89                                      ; preds = %73, %59
  br label %149

; <label>:90                                      ; preds = %0
  %91 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %92 = getelementptr inbounds %"class.std::_Deque_base"* %91, i32 0, i32 0
  %93 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %92, i32 0, i32 1
  %94 = load i64* %93, align 8
  %95 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %96 = getelementptr inbounds %"class.std::_Deque_base"* %95, i32 0, i32 0
  %97 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %96, i32 0, i32 1
  %98 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %97, i64* %2)
  %99 = load i64* %98
  %100 = add i64 %94, %99
  %101 = add i64 %100, 2
  store i64 %101, i64* %__new_map_size, align 8
  %102 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %103 = load i64* %__new_map_size, align 8
  %104 = call %"class.std::function"** @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %102, i64 %103)
  store %"class.std::function"** %104, %"class.std::function"*** %__new_map, align 8
  %105 = load %"class.std::function"*** %__new_map, align 8
  %106 = load i64* %__new_map_size, align 8
  %107 = load i64* %__new_num_nodes, align 8
  %108 = sub i64 %106, %107
  %109 = udiv i64 %108, 2
  %110 = getelementptr inbounds %"class.std::function"** %105, i64 %109
  %111 = load i8* %3, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %90
  %114 = load i64* %2, align 8
  br label %116

; <label>:115                                     ; preds = %90
  br label %116

; <label>:116                                     ; preds = %115, %113
  %117 = phi i64 [ %114, %113 ], [ 0, %115 ]
  %118 = getelementptr inbounds %"class.std::function"** %110, i64 %117
  store %"class.std::function"** %118, %"class.std::function"*** %__new_nstart, align 8
  %119 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %120 = getelementptr inbounds %"class.std::_Deque_base"* %119, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %120, i32 0, i32 2
  %122 = getelementptr inbounds %"struct.std::_Deque_iterator"* %121, i32 0, i32 3
  %123 = load %"class.std::function"*** %122, align 8
  %124 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %125 = getelementptr inbounds %"class.std::_Deque_base"* %124, i32 0, i32 0
  %126 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %125, i32 0, i32 3
  %127 = getelementptr inbounds %"struct.std::_Deque_iterator"* %126, i32 0, i32 3
  %128 = load %"class.std::function"*** %127, align 8
  %129 = getelementptr inbounds %"class.std::function"** %128, i64 1
  %130 = load %"class.std::function"*** %__new_nstart, align 8
  %131 = call %"class.std::function"** @_ZSt4copyIPPSt8functionIFvvEES4_ET0_T_S6_S5_(%"class.std::function"** %123, %"class.std::function"** %129, %"class.std::function"** %130)
  %132 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %133 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %134 = getelementptr inbounds %"class.std::_Deque_base"* %133, i32 0, i32 0
  %135 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %134, i32 0, i32 0
  %136 = load %"class.std::function"*** %135, align 8
  %137 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %138 = getelementptr inbounds %"class.std::_Deque_base"* %137, i32 0, i32 0
  %139 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %138, i32 0, i32 1
  %140 = load i64* %139, align 8
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE17_M_deallocate_mapEPPS2_m(%"class.std::_Deque_base"* %132, %"class.std::function"** %136, i64 %140) #0
  %141 = load %"class.std::function"*** %__new_map, align 8
  %142 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %143 = getelementptr inbounds %"class.std::_Deque_base"* %142, i32 0, i32 0
  %144 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %143, i32 0, i32 0
  store %"class.std::function"** %141, %"class.std::function"*** %144, align 8
  %145 = load i64* %__new_map_size, align 8
  %146 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %147 = getelementptr inbounds %"class.std::_Deque_base"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

; <label>:149                                     ; preds = %116, %89
  %150 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %151 = getelementptr inbounds %"class.std::_Deque_base"* %150, i32 0, i32 0
  %152 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %151, i32 0, i32 2
  %153 = load %"class.std::function"*** %__new_nstart, align 8
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %152, %"class.std::function"** %153) #0
  %154 = bitcast %"class.std::deque"* %5 to %"class.std::_Deque_base"*
  %155 = getelementptr inbounds %"class.std::_Deque_base"* %154, i32 0, i32 0
  %156 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %155, i32 0, i32 3
  %157 = load %"class.std::function"*** %__new_nstart, align 8
  %158 = load i64* %__old_num_nodes, align 8
  %159 = getelementptr inbounds %"class.std::function"** %157, i64 %158
  %160 = getelementptr inbounds %"class.std::function"** %159, i64 -1
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %156, %"class.std::function"** %160) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt4copyIPPSt8functionIFvvEES4_ET0_T_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %1, align 8
  %5 = call %"class.std::function"** @_ZSt12__miter_baseIPPSt8functionIFvvEEENSt11_Miter_baseIT_E13iterator_typeES6_(%"class.std::function"** %4)
  %6 = load %"class.std::function"*** %2, align 8
  %7 = call %"class.std::function"** @_ZSt12__miter_baseIPPSt8functionIFvvEEENSt11_Miter_baseIT_E13iterator_typeES6_(%"class.std::function"** %6)
  %8 = load %"class.std::function"*** %3, align 8
  %9 = call %"class.std::function"** @_ZSt14__copy_move_a2ILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %5, %"class.std::function"** %7, %"class.std::function"** %8)
  ret %"class.std::function"** %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt13copy_backwardIPPSt8functionIFvvEES4_ET0_T_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %1, align 8
  %5 = call %"class.std::function"** @_ZSt12__miter_baseIPPSt8functionIFvvEEENSt11_Miter_baseIT_E13iterator_typeES6_(%"class.std::function"** %4)
  %6 = load %"class.std::function"*** %2, align 8
  %7 = call %"class.std::function"** @_ZSt12__miter_baseIPPSt8functionIFvvEEENSt11_Miter_baseIT_E13iterator_typeES6_(%"class.std::function"** %6)
  %8 = load %"class.std::function"*** %3, align 8
  %9 = call %"class.std::function"** @_ZSt23__copy_move_backward_a2ILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %5, %"class.std::function"** %7, %"class.std::function"** %8)
  ret %"class.std::function"** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.13", align 1
  %3 = alloca i32
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseISt8functionIFvvEESaIS2_EE20_M_get_map_allocatorEv(%"class.std::allocator.13"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load i64* %2, align 8
  %6 = call %"class.std::function"** @_ZNSt16allocator_traitsISaIPSt8functionIFvvEEEE8allocateERS4_m(%"class.std::allocator.13"* %__map_alloc, i64 %5)
  store i32 1, i32* %3
  call void @_ZNSaIPSt8functionIFvvEEED2Ev(%"class.std::allocator.13"* %__map_alloc) #0
  ret %"class.std::function"** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE17_M_deallocate_mapEPPS2_m(%"class.std::_Deque_base"* %this, %"class.std::function"** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca i64, align 8
  %__map_alloc = alloca %"class.std::allocator.13", align 1
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::function"** %__p, %"class.std::function"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  call void @_ZNKSt11_Deque_baseISt8functionIFvvEESaIS2_EE20_M_get_map_allocatorEv(%"class.std::allocator.13"* sret %__map_alloc, %"class.std::_Deque_base"* %4) #0
  %5 = load %"class.std::function"*** %2, align 8
  %6 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIPSt8functionIFvvEEEE10deallocateERS4_PS3_m(%"class.std::allocator.13"* %__map_alloc, %"class.std::function"** %5, i64 %6)
  call void @_ZNSaIPSt8functionIFvvEEED2Ev(%"class.std::allocator.13"* %__map_alloc) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt11_Deque_baseISt8functionIFvvEESaIS2_EE20_M_get_map_allocatorEv(%"class.std::allocator.13"* noalias sret %agg.result, %"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = call %"class.std::allocator.0"* @_ZNKSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %2) #0
  call void @_ZNSaIPSt8functionIFvvEEEC2IS1_EERKSaIT_E(%"class.std::allocator.13"* %agg.result, %"class.std::allocator.0"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIPSt8functionIFvvEEEE10deallocateERS4_PS3_m(%"class.std::allocator.13"* %__a, %"class.std::function"** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.13"* %__a, %"class.std::allocator.13"** %1, align 8
  store %"class.std::function"** %__p, %"class.std::function"*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.13"** %1, align 8
  %5 = bitcast %"class.std::allocator.13"* %4 to %"class.__gnu_cxx::new_allocator.14"*
  %6 = load %"class.std::function"*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.14"* %5, %"class.std::function"** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPSt8functionIFvvEEED2Ev(%"class.std::allocator.13"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  store %"class.std::allocator.13"* %this, %"class.std::allocator.13"** %1, align 8
  %2 = load %"class.std::allocator.13"** %1
  %3 = bitcast %"class.std::allocator.13"* %2 to %"class.__gnu_cxx::new_allocator.14"*
  call void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEED2Ev(%"class.__gnu_cxx::new_allocator.14"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEED2Ev(%"class.__gnu_cxx::new_allocator.14"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE10deallocateEPS4_m(%"class.__gnu_cxx::new_allocator.14"* %this, %"class.std::function"** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %3 = alloca %"class.std::function"**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  store %"class.std::function"** %__p, %"class.std::function"*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.14"** %2
  %6 = load %"class.std::function"*** %3, align 8
  %7 = bitcast %"class.std::function"** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIPSt8functionIFvvEEEC2IS1_EERKSaIT_E(%"class.std::allocator.13"* %this, %"class.std::allocator.0"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::allocator.13"*, align 8
  %3 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.13"* %this, %"class.std::allocator.13"** %2, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  %4 = load %"class.std::allocator.13"** %2
  %5 = bitcast %"class.std::allocator.13"* %4 to %"class.__gnu_cxx::new_allocator.14"*
  call void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEEC2Ev(%"class.__gnu_cxx::new_allocator.14"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNKSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %3 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEEC2Ev(%"class.__gnu_cxx::new_allocator.14"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZNSt16allocator_traitsISaIPSt8functionIFvvEEEE8allocateERS4_m(%"class.std::allocator.13"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.13"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.13"* %__a, %"class.std::allocator.13"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.13"** %1, align 8
  %4 = bitcast %"class.std::allocator.13"* %3 to %"class.__gnu_cxx::new_allocator.14"*
  %5 = load i64* %2, align 8
  %6 = call %"class.std::function"** @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"* %4, i64 %5, i8* null)
  ret %"class.std::function"** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZN9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.14"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.14"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #8
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"class.std::function"**
  ret %"class.std::function"** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIPSt8functionIFvvEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.14"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.14"*, align 8
  store %"class.__gnu_cxx::new_allocator.14"* %this, %"class.__gnu_cxx::new_allocator.14"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.14"** %1
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt23__copy_move_backward_a2ILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %1, align 8
  %5 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %4)
  %6 = load %"class.std::function"*** %2, align 8
  %7 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %6)
  %8 = load %"class.std::function"*** %3, align 8
  %9 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %8)
  %10 = call %"class.std::function"** @_ZSt22__copy_move_backward_aILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %5, %"class.std::function"** %7, %"class.std::function"** %9)
  ret %"class.std::function"** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt12__miter_baseIPPSt8functionIFvvEEENSt11_Miter_baseIT_E13iterator_typeES6_(%"class.std::function"** %__it) #4 {
  %1 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__it, %"class.std::function"*** %1, align 8
  %2 = load %"class.std::function"*** %1, align 8
  %3 = call %"class.std::function"** @_ZNSt10_Iter_baseIPPSt8functionIFvvEELb0EE7_S_baseES4_(%"class.std::function"** %2)
  ret %"class.std::function"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZNSt10_Iter_baseIPPSt8functionIFvvEELb0EE7_S_baseES4_(%"class.std::function"** %__it) #3 align 2 {
  %1 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__it, %"class.std::function"*** %1, align 8
  %2 = load %"class.std::function"*** %1, align 8
  ret %"class.std::function"** %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt22__copy_move_backward_aILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %__simple = alloca i8, align 1
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %"class.std::function"*** %1, align 8
  %5 = load %"class.std::function"*** %2, align 8
  %6 = load %"class.std::function"*** %3, align 8
  %7 = call %"class.std::function"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt8functionIFvvEEEEPT_PKS7_SA_S8_(%"class.std::function"** %4, %"class.std::function"** %5, %"class.std::function"** %6)
  ret %"class.std::function"** %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %__it) #4 {
  %1 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__it, %"class.std::function"*** %1, align 8
  %2 = load %"class.std::function"*** %1, align 8
  %3 = call %"class.std::function"** @_ZNSt10_Iter_baseIPPSt8functionIFvvEELb0EE7_S_baseES4_(%"class.std::function"** %2)
  ret %"class.std::function"** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt8functionIFvvEEEEPT_PKS7_SA_S8_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #3 align 2 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %_Num = alloca i64, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %2, align 8
  %5 = load %"class.std::function"*** %1, align 8
  %6 = ptrtoint %"class.std::function"** %4 to i64
  %7 = ptrtoint %"class.std::function"** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

; <label>:12                                      ; preds = %0
  %13 = load %"class.std::function"*** %3, align 8
  %14 = load i64* %_Num, align 8
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %"class.std::function"** %13, i64 %15
  %17 = bitcast %"class.std::function"** %16 to i8*
  %18 = load %"class.std::function"*** %1, align 8
  %19 = bitcast %"class.std::function"** %18 to i8*
  %20 = load i64* %_Num, align 8
  %21 = mul i64 8, %20
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %21, i32 8, i1 false)
  br label %22

; <label>:22                                      ; preds = %12, %0
  %23 = load %"class.std::function"*** %3, align 8
  %24 = load i64* %_Num, align 8
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds %"class.std::function"** %23, i64 %25
  ret %"class.std::function"** %26
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt14__copy_move_a2ILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %1, align 8
  %5 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %4)
  %6 = load %"class.std::function"*** %2, align 8
  %7 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %6)
  %8 = load %"class.std::function"*** %3, align 8
  %9 = call %"class.std::function"** @_ZSt12__niter_baseIPPSt8functionIFvvEEENSt11_Niter_baseIT_E13iterator_typeES6_(%"class.std::function"** %8)
  %10 = call %"class.std::function"** @_ZSt13__copy_move_aILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %5, %"class.std::function"** %7, %"class.std::function"** %9)
  ret %"class.std::function"** %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZSt13__copy_move_aILb0EPPSt8functionIFvvEES4_ET1_T0_S6_S5_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #4 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %__simple = alloca i8, align 1
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load %"class.std::function"*** %1, align 8
  %5 = load %"class.std::function"*** %2, align 8
  %6 = load %"class.std::function"*** %3, align 8
  %7 = call %"class.std::function"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt8functionIFvvEEEEPT_PKS7_SA_S8_(%"class.std::function"** %4, %"class.std::function"** %5, %"class.std::function"** %6)
  ret %"class.std::function"** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::function"** @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt8functionIFvvEEEEPT_PKS7_SA_S8_(%"class.std::function"** %__first, %"class.std::function"** %__last, %"class.std::function"** %__result) #3 align 2 {
  %1 = alloca %"class.std::function"**, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %_Num = alloca i64, align 8
  store %"class.std::function"** %__first, %"class.std::function"*** %1, align 8
  store %"class.std::function"** %__last, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__result, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::function"*** %2, align 8
  %5 = load %"class.std::function"*** %1, align 8
  %6 = ptrtoint %"class.std::function"** %4 to i64
  %7 = ptrtoint %"class.std::function"** %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load %"class.std::function"*** %3, align 8
  %14 = bitcast %"class.std::function"** %13 to i8*
  %15 = load %"class.std::function"*** %1, align 8
  %16 = bitcast %"class.std::function"** %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %"class.std::function"*** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds %"class.std::function"** %20, i64 %21
  ret %"class.std::function"** %22
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEE9constructIS3_JS3_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %this, %"class.std::function"* %__p, %"class.std::function"* %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  %3 = alloca %"class.std::function"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %"class.std::function"* %__p, %"class.std::function"** %2, align 8
  store %"class.std::function"* %__args, %"class.std::function"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %5 = load %"class.std::function"** %2, align 8
  %6 = bitcast %"class.std::function"* %5 to i8*
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to %"class.std::function"*
  %10 = load %"class.std::function"** %3, align 8
  %11 = call %"class.std::function"* @_ZSt7forwardISt8functionIFvvEEEOT_RNSt16remove_referenceIS3_E4typeE(%"class.std::function"* %10) #0
  call void @_ZNSt8functionIFvvEEC2EOS1_(%"class.std::function"* %9, %"class.std::function"* %11)
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi %"class.std::function"* [ %9, %8 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvvEEC2EOS1_(%"class.std::function"* %this, %"class.std::function"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  store %"class.std::function"* %__x, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"** %1
  %4 = bitcast %"class.std::function"* %3 to %"struct.std::_Maybe_unary_or_binary_function"*
  %5 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* %5)
  %6 = load %"class.std::function"** %2, align 8
  call void @_ZNSt8functionIFvvEE4swapERS1_(%"class.std::function"* %6, %"class.std::function"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8functionIFvvEE4swapERS1_(%"class.std::function"* %this, %"class.std::function"* %__x) #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %1, align 8
  store %"class.std::function"* %__x, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"** %1
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  %5 = getelementptr inbounds %"class.std::_Function_base"* %4, i32 0, i32 0
  %6 = load %"class.std::function"** %2, align 8
  %7 = bitcast %"class.std::function"* %6 to %"class.std::_Function_base"*
  %8 = getelementptr inbounds %"class.std::_Function_base"* %7, i32 0, i32 0
  call void @_ZSt4swapISt9_Any_dataEvRT_S2_(%"union.std::_Any_data"* %5, %"union.std::_Any_data"* %8) #0
  %9 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  %10 = getelementptr inbounds %"class.std::_Function_base"* %9, i32 0, i32 1
  %11 = load %"class.std::function"** %2, align 8
  %12 = bitcast %"class.std::function"* %11 to %"class.std::_Function_base"*
  %13 = getelementptr inbounds %"class.std::_Function_base"* %12, i32 0, i32 1
  call void @_ZSt4swapIPFbRSt9_Any_dataRKS0_St18_Manager_operationEEvRT_S8_(i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %10, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %13) #0
  %14 = getelementptr inbounds %"class.std::function"* %3, i32 0, i32 1
  %15 = load %"class.std::function"** %2, align 8
  %16 = getelementptr inbounds %"class.std::function"* %15, i32 0, i32 1
  call void @_ZSt4swapIPFvRKSt9_Any_dataEEvRT_S6_(void (%"union.std::_Any_data"*)** %14, void (%"union.std::_Any_data"*)** %16) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt4swapIPFvRKSt9_Any_dataEEvRT_S6_(void (%"union.std::_Any_data"*)** %__a, void (%"union.std::_Any_data"*)** %__b) #4 {
  %1 = alloca void (%"union.std::_Any_data"*)**, align 8
  %2 = alloca void (%"union.std::_Any_data"*)**, align 8
  %__tmp = alloca void (%"union.std::_Any_data"*)*, align 8
  store void (%"union.std::_Any_data"*)** %__a, void (%"union.std::_Any_data"*)*** %1, align 8
  store void (%"union.std::_Any_data"*)** %__b, void (%"union.std::_Any_data"*)*** %2, align 8
  %3 = load void (%"union.std::_Any_data"*)*** %1, align 8
  %4 = call void (%"union.std::_Any_data"*)** @_ZSt4moveIRPFvRKSt9_Any_dataEEONSt16remove_referenceIT_E4typeEOS7_(void (%"union.std::_Any_data"*)** %3) #0
  %5 = load void (%"union.std::_Any_data"*)** %4
  store void (%"union.std::_Any_data"*)* %5, void (%"union.std::_Any_data"*)** %__tmp, align 8
  %6 = load void (%"union.std::_Any_data"*)*** %2, align 8
  %7 = call void (%"union.std::_Any_data"*)** @_ZSt4moveIRPFvRKSt9_Any_dataEEONSt16remove_referenceIT_E4typeEOS7_(void (%"union.std::_Any_data"*)** %6) #0
  %8 = load void (%"union.std::_Any_data"*)** %7
  %9 = load void (%"union.std::_Any_data"*)*** %1, align 8
  store void (%"union.std::_Any_data"*)* %8, void (%"union.std::_Any_data"*)** %9, align 8
  %10 = call void (%"union.std::_Any_data"*)** @_ZSt4moveIRPFvRKSt9_Any_dataEEONSt16remove_referenceIT_E4typeEOS7_(void (%"union.std::_Any_data"*)** %__tmp) #0
  %11 = load void (%"union.std::_Any_data"*)** %10
  %12 = load void (%"union.std::_Any_data"*)*** %2, align 8
  store void (%"union.std::_Any_data"*)* %11, void (%"union.std::_Any_data"*)** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void (%"union.std::_Any_data"*)** @_ZSt4moveIRPFvRKSt9_Any_dataEEONSt16remove_referenceIT_E4typeEOS7_(void (%"union.std::_Any_data"*)** %__t) #3 {
  %1 = alloca void (%"union.std::_Any_data"*)**, align 8
  store void (%"union.std::_Any_data"*)** %__t, void (%"union.std::_Any_data"*)*** %1, align 8
  %2 = load void (%"union.std::_Any_data"*)*** %1, align 8
  ret void (%"union.std::_Any_data"*)** %2
}

; Function Attrs: nounwind uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0E15_M_init_functorERSt9_Any_dataOS7_St17integral_constantIbLb0EE"(%"union.std::_Any_data"* %__functor, %class.anon* %__f) #3 align 2 {
  %1 = alloca %"union.std::_Any_data"*, align 8
  %2 = alloca %class.anon*, align 8
  %3 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %1, align 8
  store %class.anon* %__f, %class.anon** %2, align 8
  %4 = call noalias i8* @_Znwm(i64 24) #9
  %5 = bitcast i8* %4 to %class.anon*
  %6 = load %class.anon** %2, align 8
  %7 = call %class.anon* @"_ZSt4moveIRZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EONSt16remove_referenceIT_E4typeEOS9_"(%class.anon* %6) #0
  %8 = bitcast %class.anon* %5 to i8*
  %9 = bitcast %class.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %"union.std::_Any_data"** %1, align 8
  %11 = call %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ18in_order_traversalP4NodeRSt6vectorIiSaIiEEE3$_0EERT_v"(%"union.std::_Any_data"* %10)
  store %class.anon* %5, %class.anon** %11
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last, %"class.std::allocator.0"*) #3 align 2 {
  %2 = alloca %"class.std::deque"*, align 8
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %2, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %3, align 8
  %6 = load %"class.std::deque"** %2
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2ERKS5_(%"struct.std::_Deque_iterator"* %4, %"struct.std::_Deque_iterator"* %__first) #0
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2ERKS5_(%"struct.std::_Deque_iterator"* %5, %"struct.std::_Deque_iterator"* %__last) #0
  call void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(%"class.std::deque"* %6, %"struct.std::_Deque_iterator"* %4, %"struct.std::_Deque_iterator"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE3endEv(%"struct.std::_Deque_iterator"* noalias sret %agg.result, %"class.std::deque"* %this) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %4 = getelementptr inbounds %"class.std::_Deque_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %4, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2ERKS5_(%"struct.std::_Deque_iterator"* %agg.result, %"struct.std::_Deque_iterator"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EED2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %3, i32 0, i32 0
  %5 = load %"class.std::function"*** %4, align 8
  %6 = icmp ne %"class.std::function"** %5, null
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %8, i32 0, i32 2
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator"* %9, i32 0, i32 3
  %11 = load %"class.std::function"*** %10, align 8
  %12 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %12, i32 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Deque_iterator"* %13, i32 0, i32 3
  %15 = load %"class.std::function"*** %14, align 8
  %16 = getelementptr inbounds %"class.std::function"** %15, i64 1
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_(%"class.std::_Deque_base"* %2, %"class.std::function"** %11, %"class.std::function"** %16) #0
  %17 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %18 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %17, i32 0, i32 0
  %19 = load %"class.std::function"*** %18, align 8
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %20, i32 0, i32 1
  %22 = load i64* %21, align 8
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE17_M_deallocate_mapEPPS2_m(%"class.std::_Deque_base"* %2, %"class.std::function"** %19, i64 %22) #0
  br label %23

; <label>:23                                      ; preds = %7, %0
  %24 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %24) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_destroy_nodesEPPS2_S6_(%"class.std::_Deque_base"* %this, %"class.std::function"** %__nstart, %"class.std::function"** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %__n = alloca %"class.std::function"**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::function"** %__nstart, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__nfinish, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %"class.std::function"*** %2, align 8
  store %"class.std::function"** %5, %"class.std::function"*** %__n, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %"class.std::function"*** %__n, align 8
  %8 = load %"class.std::function"*** %3, align 8
  %9 = icmp ult %"class.std::function"** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = load %"class.std::function"*** %__n, align 8
  %12 = load %"class.std::function"** %11, align 8
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE18_M_deallocate_nodeEPS2_(%"class.std::_Deque_base"* %4, %"class.std::function"* %12) #0
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %"class.std::function"*** %__n, align 8
  %15 = getelementptr inbounds %"class.std::function"** %14, i32 1
  store %"class.std::function"** %15, %"class.std::function"*** %__n, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE11_Deque_implD2Ev(%"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %this) unnamed_addr #4 align 2 {
  %1 = alloca %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %this, %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt8functionIFvvEEED2Ev(%"class.std::allocator.0"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt8functionIFvvEEED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt8functionIFvvEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(%"class.std::deque"* %this, %"struct.std::_Deque_iterator"* %__first, %"struct.std::_Deque_iterator"* %__last) #3 align 2 {
  %1 = alloca %"class.std::deque"*, align 8
  %__node = alloca %"class.std::function"**, align 8
  store %"class.std::deque"* %this, %"class.std::deque"** %1, align 8
  %2 = load %"class.std::deque"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__first, i32 0, i32 3
  %4 = load %"class.std::function"*** %3, align 8
  %5 = getelementptr inbounds %"class.std::function"** %4, i64 1
  store %"class.std::function"** %5, %"class.std::function"*** %__node, align 8
  br label %6

; <label>:6                                       ; preds = %20, %0
  %7 = load %"class.std::function"*** %__node, align 8
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__last, i32 0, i32 3
  %9 = load %"class.std::function"*** %8, align 8
  %10 = icmp ult %"class.std::function"** %7, %9
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %6
  %12 = load %"class.std::function"*** %__node, align 8
  %13 = load %"class.std::function"** %12, align 8
  %14 = load %"class.std::function"*** %__node, align 8
  %15 = load %"class.std::function"** %14, align 8
  %16 = call i64 @_ZNSt5dequeISt8functionIFvvEESaIS2_EE14_S_buffer_sizeEv() #0
  %17 = getelementptr inbounds %"class.std::function"* %15, i64 %16
  %18 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %19 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %18) #0
  call void @_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E(%"class.std::function"* %13, %"class.std::function"* %17, %"class.std::allocator.0"* %19)
  br label %20

; <label>:20                                      ; preds = %11
  %21 = load %"class.std::function"*** %__node, align 8
  %22 = getelementptr inbounds %"class.std::function"** %21, i32 1
  store %"class.std::function"** %22, %"class.std::function"*** %__node, align 8
  br label %6

; <label>:23                                      ; preds = %6
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__first, i32 0, i32 3
  %25 = load %"class.std::function"*** %24, align 8
  %26 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__last, i32 0, i32 3
  %27 = load %"class.std::function"*** %26, align 8
  %28 = icmp ne %"class.std::function"** %25, %27
  br i1 %28, label %29, label %42

; <label>:29                                      ; preds = %23
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__first, i32 0, i32 0
  %31 = load %"class.std::function"** %30, align 8
  %32 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__first, i32 0, i32 2
  %33 = load %"class.std::function"** %32, align 8
  %34 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %35 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %34) #0
  call void @_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E(%"class.std::function"* %31, %"class.std::function"* %33, %"class.std::allocator.0"* %35)
  %36 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__last, i32 0, i32 1
  %37 = load %"class.std::function"** %36, align 8
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__last, i32 0, i32 0
  %39 = load %"class.std::function"** %38, align 8
  %40 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %41 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %40) #0
  call void @_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E(%"class.std::function"* %37, %"class.std::function"* %39, %"class.std::allocator.0"* %41)
  br label %49

; <label>:42                                      ; preds = %23
  %43 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__first, i32 0, i32 0
  %44 = load %"class.std::function"** %43, align 8
  %45 = getelementptr inbounds %"struct.std::_Deque_iterator"* %__last, i32 0, i32 0
  %46 = load %"class.std::function"** %45, align 8
  %47 = bitcast %"class.std::deque"* %2 to %"class.std::_Deque_base"*
  %48 = call %"class.std::allocator.0"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE19_M_get_Tp_allocatorEv(%"class.std::_Deque_base"* %47) #0
  call void @_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E(%"class.std::function"* %44, %"class.std::function"* %46, %"class.std::allocator.0"* %48)
  br label %49

; <label>:49                                      ; preds = %42, %29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt8functionIFvvEES2_EvT_S4_RSaIT0_E(%"class.std::function"* %__first, %"class.std::function"* %__last, %"class.std::allocator.0"*) #4 {
  %2 = alloca %"class.std::function"*, align 8
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::function"* %__first, %"class.std::function"** %2, align 8
  store %"class.std::function"* %__last, %"class.std::function"** %3, align 8
  store %"class.std::allocator.0"* %0, %"class.std::allocator.0"** %4, align 8
  %5 = load %"class.std::function"** %2, align 8
  %6 = load %"class.std::function"** %3, align 8
  call void @_ZSt8_DestroyIPSt8functionIFvvEEEvT_S4_(%"class.std::function"* %5, %"class.std::function"* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt5dequeISt8functionIFvvEESaIS2_EE14_S_buffer_sizeEv() #3 align 2 {
  %1 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  ret i64 %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt8functionIFvvEEEvT_S4_(%"class.std::function"* %__first, %"class.std::function"* %__last) #4 {
  %1 = alloca %"class.std::function"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__first, %"class.std::function"** %1, align 8
  store %"class.std::function"* %__last, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"** %1, align 8
  %4 = load %"class.std::function"** %2, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvvEEEEvT_S6_(%"class.std::function"* %3, %"class.std::function"* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvvEEEEvT_S6_(%"class.std::function"* %__first, %"class.std::function"* %__last) #3 align 2 {
  %1 = alloca %"class.std::function"*, align 8
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__first, %"class.std::function"** %1, align 8
  store %"class.std::function"* %__last, %"class.std::function"** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load %"class.std::function"** %1, align 8
  %5 = load %"class.std::function"** %2, align 8
  %6 = icmp ne %"class.std::function"* %4, %5
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = load %"class.std::function"** %1, align 8
  %9 = call %"class.std::function"* @_ZSt11__addressofISt8functionIFvvEEEPT_RS3_(%"class.std::function"* %8) #0
  call void @_ZSt8_DestroyISt8functionIFvvEEEvPT_(%"class.std::function"* %9)
  br label %10

; <label>:10                                      ; preds = %7
  %11 = load %"class.std::function"** %1, align 8
  %12 = getelementptr inbounds %"class.std::function"* %11, i32 1
  store %"class.std::function"* %12, %"class.std::function"** %1, align 8
  br label %3

; <label>:13                                      ; preds = %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyISt8functionIFvvEEEvPT_(%"class.std::function"* %__pointer) #4 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__pointer, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1, align 8
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* %2) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %"class.std::function"* @_ZSt11__addressofISt8functionIFvvEEEPT_RS3_(%"class.std::function"* %__r) #4 {
  %1 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %__r, %"class.std::function"** %1, align 8
  %2 = load %"class.std::function"** %1, align 8
  %3 = bitcast %"class.std::function"* %2 to i8*
  %4 = bitcast i8* %3 to %"class.std::function"*
  ret %"class.std::function"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EEC2Ev(%"class.std::_Deque_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  %2 = load %"class.std::_Deque_base"** %1
  %3 = getelementptr inbounds %"class.std::_Deque_base"* %2, i32 0, i32 0
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %3)
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %2, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE11_Deque_implC2Ev(%"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"*, align 8
  store %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %this, %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"** %1, align 8
  %2 = load %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"** %1
  %3 = bitcast %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt8functionIFvvEEEC2Ev(%"class.std::allocator.0"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2, i32 0, i32 0
  store %"class.std::function"** null, %"class.std::function"*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2, i32 0, i32 2
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2Ev(%"struct.std::_Deque_iterator"* %6) #0
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %2, i32 0, i32 3
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2Ev(%"struct.std::_Deque_iterator"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE17_M_initialize_mapEm(%"class.std::_Deque_base"* %this, i64 %__num_elements) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca i64, align 8
  %__num_nodes = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %__nstart = alloca %"class.std::function"**, align 8
  %__nfinish = alloca %"class.std::function"**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store i64 %__num_elements, i64* %2, align 8
  %5 = load %"class.std::_Deque_base"** %1
  %6 = load i64* %2, align 8
  %7 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  %8 = udiv i64 %6, %7
  %9 = add i64 %8, 1
  store i64 %9, i64* %__num_nodes, align 8
  store i64 8, i64* %3
  %10 = load i64* %__num_nodes, align 8
  %11 = add i64 %10, 2
  store i64 %11, i64* %4
  %12 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %3, i64* %4)
  %13 = load i64* %12
  %14 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %17 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %16, i32 0, i32 1
  %18 = load i64* %17, align 8
  %19 = call %"class.std::function"** @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE15_M_allocate_mapEm(%"class.std::_Deque_base"* %5, i64 %18)
  %20 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %20, i32 0, i32 0
  store %"class.std::function"** %19, %"class.std::function"*** %21, align 8
  %22 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %22, i32 0, i32 0
  %24 = load %"class.std::function"*** %23, align 8
  %25 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %25, i32 0, i32 1
  %27 = load i64* %26, align 8
  %28 = load i64* %__num_nodes, align 8
  %29 = sub i64 %27, %28
  %30 = udiv i64 %29, 2
  %31 = getelementptr inbounds %"class.std::function"** %24, i64 %30
  store %"class.std::function"** %31, %"class.std::function"*** %__nstart, align 8
  %32 = load %"class.std::function"*** %__nstart, align 8
  %33 = load i64* %__num_nodes, align 8
  %34 = getelementptr inbounds %"class.std::function"** %32, i64 %33
  store %"class.std::function"** %34, %"class.std::function"*** %__nfinish, align 8
  %35 = load %"class.std::function"*** %__nstart, align 8
  %36 = load %"class.std::function"*** %__nfinish, align 8
  call void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE15_M_create_nodesEPPS2_S6_(%"class.std::_Deque_base"* %5, %"class.std::function"** %35, %"class.std::function"** %36)
  %37 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %37, i32 0, i32 2
  %39 = load %"class.std::function"*** %__nstart, align 8
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %38, %"class.std::function"** %39) #0
  %40 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %40, i32 0, i32 3
  %42 = load %"class.std::function"*** %__nfinish, align 8
  %43 = getelementptr inbounds %"class.std::function"** %42, i64 -1
  call void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_E11_M_set_nodeEPS4_(%"struct.std::_Deque_iterator"* %41, %"class.std::function"** %43) #0
  %44 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %44, i32 0, i32 2
  %46 = getelementptr inbounds %"struct.std::_Deque_iterator"* %45, i32 0, i32 1
  %47 = load %"class.std::function"** %46, align 8
  %48 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %48, i32 0, i32 2
  %50 = getelementptr inbounds %"struct.std::_Deque_iterator"* %49, i32 0, i32 0
  store %"class.std::function"* %47, %"class.std::function"** %50, align 8
  %51 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %51, i32 0, i32 3
  %53 = getelementptr inbounds %"struct.std::_Deque_iterator"* %52, i32 0, i32 1
  %54 = load %"class.std::function"** %53, align 8
  %55 = load i64* %2, align 8
  %56 = call i64 @_ZSt16__deque_buf_sizem(i64 32)
  %57 = urem i64 %55, %56
  %58 = getelementptr inbounds %"class.std::function"* %54, i64 %57
  %59 = getelementptr inbounds %"class.std::_Deque_base"* %5, i32 0, i32 0
  %60 = getelementptr inbounds %"struct.std::_Deque_base<std::function<void ()>, std::allocator<std::function<void ()> > >::_Deque_impl"* %59, i32 0, i32 3
  %61 = getelementptr inbounds %"struct.std::_Deque_iterator"* %60, i32 0, i32 0
  store %"class.std::function"* %58, %"class.std::function"** %61, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE15_M_create_nodesEPPS2_S6_(%"class.std::_Deque_base"* %this, %"class.std::function"** %__nstart, %"class.std::function"** %__nfinish) #3 align 2 {
  %1 = alloca %"class.std::_Deque_base"*, align 8
  %2 = alloca %"class.std::function"**, align 8
  %3 = alloca %"class.std::function"**, align 8
  %__cur = alloca %"class.std::function"**, align 8
  store %"class.std::_Deque_base"* %this, %"class.std::_Deque_base"** %1, align 8
  store %"class.std::function"** %__nstart, %"class.std::function"*** %2, align 8
  store %"class.std::function"** %__nfinish, %"class.std::function"*** %3, align 8
  %4 = load %"class.std::_Deque_base"** %1
  %5 = load %"class.std::function"*** %2, align 8
  store %"class.std::function"** %5, %"class.std::function"*** %__cur, align 8
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load %"class.std::function"*** %__cur, align 8
  %8 = load %"class.std::function"*** %3, align 8
  %9 = icmp ult %"class.std::function"** %7, %8
  br i1 %9, label %10, label %16

; <label>:10                                      ; preds = %6
  %11 = call %"class.std::function"* @_ZNSt11_Deque_baseISt8functionIFvvEESaIS2_EE16_M_allocate_nodeEv(%"class.std::_Deque_base"* %4)
  %12 = load %"class.std::function"*** %__cur, align 8
  store %"class.std::function"* %11, %"class.std::function"** %12, align 8
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load %"class.std::function"*** %__cur, align 8
  %15 = getelementptr inbounds %"class.std::function"** %14, i32 1
  store %"class.std::function"** %15, %"class.std::function"*** %__cur, align 8
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt8functionIFvvEEEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt15_Deque_iteratorISt8functionIFvvEERS2_PS2_EC2Ev(%"struct.std::_Deque_iterator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Deque_iterator"*, align 8
  store %"struct.std::_Deque_iterator"* %this, %"struct.std::_Deque_iterator"** %1, align 8
  %2 = load %"struct.std::_Deque_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 0
  store %"class.std::function"* null, %"class.std::function"** %3, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 1
  store %"class.std::function"* null, %"class.std::function"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 2
  store %"class.std::function"* null, %"class.std::function"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator"* %2, i32 0, i32 3
  store %"class.std::function"** null, %"class.std::function"*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt8functionIFvvEEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %1, align 8
  %2 = load %"class.std::_Function_base"** %1
  %3 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 1
  %4 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %3, align 8
  %5 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %4, null
  br i1 %5, label %6, label %12

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 1
  %8 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8
  %9 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_Function_base"* %2, i32 0, i32 0
  %11 = call zeroext i1 %8(%"union.std::_Any_data"* %9, %"union.std::_Any_data"* %10, i32 3)
  br label %12

; <label>:12                                      ; preds = %6, %0
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
attributes #8 = { noreturn }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
