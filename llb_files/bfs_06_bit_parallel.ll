; ModuleID = 'BFS/bfs_06_bit_parallel.cpp'
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
%"struct.std::piecewise_construct_t" = type { i8 }
%struct.Node = type { i32, %struct.Node*, %struct.Node*, %struct.Node* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl" }
%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl" = type { %struct.Node**, %struct.Node**, %struct.Node** }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl" = type { i64*, i64*, i64* }
%"class.std::allocator.10" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { i64* }
%"class.__gnu_cxx::new_allocator.11" = type { i8 }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %struct.Node** }
%"class.std::tuple.19" = type { i8 }
%"struct.std::pair" = type { %struct.Node*, i32 }
%"class.std::allocator.5" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.17" = type { i64* }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.13" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.<anonymous union>::__pthread_mutex_s" }
%"struct.<anonymous union>::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type { %struct._IO_FILE*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.16 }
%union.anon.16 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base" = type { %"class.std::locale::facet" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.__gnu_cxx::new_allocator.6" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"class.__gnu_cxx::new_allocator.1" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.std::move_iterator" = type { %struct.Node** }
%"class.std::move_iterator.18" = type { i32* }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"struct.std::pair.20" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::_Index_tuple.21" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [12 x i8] c"numbers.txt\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream"
@.str1 = private unnamed_addr constant [23 x i8] c"Error: Could not open \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" undef, align 1
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
define void @_Z16bfs_bit_parallelP4NodeRKSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEERS1_IiSaIiEE(%struct.Node* %root, %"class.std::vector"* %all_nodes, %"class.std::map"* %node_to_idx, %"class.std::vector.3"* %result) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %"class.std::map"*, align 8
  %4 = alloca %"class.std::vector.3"*, align 8
  %n = alloca i32, align 4
  %visited = alloca %"class.std::vector.8", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %frontier = alloca %"class.std::vector.8", align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::allocator.10", align 1
  %next_frontier = alloca %"class.std::vector.8", align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.std::allocator.10", align 1
  %source_mask = alloca i64, align 8
  %root_idx = alloca i32, align 4
  %active = alloca i8, align 1
  %u_idx = alloca i32, align 4
  %u = alloca %struct.Node*, align 8
  %neighbors = alloca [2 x %struct.Node*], align 16
  %__range = alloca [2 x %struct.Node*]*, align 8
  %__begin = alloca %struct.Node**, align 8
  %__end = alloca %struct.Node**, align 8
  %v = alloca %struct.Node*, align 8
  %v_idx = alloca i32, align 4
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca i32, align 4
  store %struct.Node* %root, %struct.Node** %1, align 8
  store %"class.std::vector"* %all_nodes, %"class.std::vector"** %2, align 8
  store %"class.std::map"* %node_to_idx, %"class.std::map"** %3, align 8
  store %"class.std::vector.3"* %result, %"class.std::vector.3"** %4, align 8
  %14 = load %struct.Node** %1, align 8
  %15 = icmp ne %struct.Node* %14, null
  br i1 %15, label %17, label %16

; <label>:16                                      ; preds = %0
  br label %134

; <label>:17                                      ; preds = %0
  %18 = load %"class.std::vector"** %2, align 8
  %19 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %18) #0
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %n, align 4
  %21 = load i32* %n, align 4
  %22 = sext i32 %21 to i64
  store i64 0, i64* %5
  call void @_ZNSaImEC2Ev(%"class.std::allocator.10"* %6) #0
  call void @_ZNSt6vectorImSaImEEC2EmRKmRKS0_(%"class.std::vector.8"* %visited, i64 %22, i64* %5, %"class.std::allocator.10"* %6)
  call void @_ZNSaImED2Ev(%"class.std::allocator.10"* %6) #0
  %23 = load i32* %n, align 4
  %24 = sext i32 %23 to i64
  store i64 0, i64* %7
  call void @_ZNSaImEC2Ev(%"class.std::allocator.10"* %8) #0
  call void @_ZNSt6vectorImSaImEEC2EmRKmRKS0_(%"class.std::vector.8"* %frontier, i64 %24, i64* %7, %"class.std::allocator.10"* %8)
  call void @_ZNSaImED2Ev(%"class.std::allocator.10"* %8) #0
  %25 = load i32* %n, align 4
  %26 = sext i32 %25 to i64
  store i64 0, i64* %9
  call void @_ZNSaImEC2Ev(%"class.std::allocator.10"* %10) #0
  call void @_ZNSt6vectorImSaImEEC2EmRKmRKS0_(%"class.std::vector.8"* %next_frontier, i64 %26, i64* %9, %"class.std::allocator.10"* %10)
  call void @_ZNSaImED2Ev(%"class.std::allocator.10"* %10) #0
  store i64 1, i64* %source_mask, align 8
  %27 = load %"class.std::map"** %3, align 8
  %28 = call i32* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %27, %struct.Node** %1)
  %29 = load i32* %28
  store i32 %29, i32* %root_idx, align 4
  %30 = load i64* %source_mask, align 8
  %31 = load i32* %root_idx, align 4
  %32 = sext i32 %31 to i64
  %33 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %visited, i64 %32) #0
  %34 = load i64* %33
  %35 = or i64 %34, %30
  store i64 %35, i64* %33
  %36 = load i64* %source_mask, align 8
  %37 = load i32* %root_idx, align 4
  %38 = sext i32 %37 to i64
  %39 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %frontier, i64 %38) #0
  %40 = load i64* %39
  %41 = or i64 %40, %36
  store i64 %41, i64* %39
  store i8 1, i8* %active, align 1
  br label %42

; <label>:42                                      ; preds = %123, %17
  %43 = load i8* %active, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %133

; <label>:45                                      ; preds = %42
  store i8 0, i8* %active, align 1
  store i32 0, i32* %u_idx, align 4
  br label %46

; <label>:46                                      ; preds = %120, %45
  %47 = load i32* %u_idx, align 4
  %48 = load i32* %n, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %123

; <label>:50                                      ; preds = %46
  %51 = load i32* %u_idx, align 4
  %52 = sext i32 %51 to i64
  %53 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %frontier, i64 %52) #0
  %54 = load i64* %53
  %55 = load i64* %source_mask, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %119

; <label>:58                                      ; preds = %50
  %59 = load %"class.std::vector"** %2, align 8
  %60 = load i32* %u_idx, align 4
  %61 = sext i32 %60 to i64
  %62 = call %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EEixEm(%"class.std::vector"* %59, i64 %61) #0
  %63 = load %struct.Node** %62
  store %struct.Node* %63, %struct.Node** %u, align 8
  %64 = load %"class.std::vector.3"** %4, align 8
  %65 = load %struct.Node** %u, align 8
  %66 = getelementptr inbounds %struct.Node* %65, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.3"* %64, i32* %66)
  %67 = getelementptr inbounds [2 x %struct.Node*]* %neighbors, i64 0, i64 0
  %68 = load %struct.Node** %u, align 8
  %69 = getelementptr inbounds %struct.Node* %68, i32 0, i32 1
  %70 = load %struct.Node** %69, align 8
  store %struct.Node* %70, %struct.Node** %67
  %71 = getelementptr inbounds %struct.Node** %67, i64 1
  %72 = load %struct.Node** %u, align 8
  %73 = getelementptr inbounds %struct.Node* %72, i32 0, i32 2
  %74 = load %struct.Node** %73, align 8
  store %struct.Node* %74, %struct.Node** %71
  store [2 x %struct.Node*]* %neighbors, [2 x %struct.Node*]** %__range, align 8
  %75 = load [2 x %struct.Node*]** %__range, align 8
  %76 = getelementptr inbounds [2 x %struct.Node*]* %75, i32 0, i32 0
  store %struct.Node** %76, %struct.Node*** %__begin, align 8
  %77 = load [2 x %struct.Node*]** %__range, align 8
  %78 = getelementptr inbounds [2 x %struct.Node*]* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.Node** %78, i64 2
  store %struct.Node** %79, %struct.Node*** %__end, align 8
  br label %80

; <label>:80                                      ; preds = %115, %58
  %81 = load %struct.Node*** %__begin, align 8
  %82 = load %struct.Node*** %__end, align 8
  %83 = icmp ne %struct.Node** %81, %82
  br i1 %83, label %84, label %118

; <label>:84                                      ; preds = %80
  %85 = load %struct.Node*** %__begin, align 8
  %86 = load %struct.Node** %85, align 8
  store %struct.Node* %86, %struct.Node** %v, align 8
  %87 = load %struct.Node** %v, align 8
  %88 = icmp ne %struct.Node* %87, null
  br i1 %88, label %89, label %114

; <label>:89                                      ; preds = %84
  %90 = load %"class.std::map"** %3, align 8
  %91 = call i32* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %90, %struct.Node** %v)
  %92 = load i32* %91
  store i32 %92, i32* %v_idx, align 4
  %93 = load i32* %v_idx, align 4
  %94 = sext i32 %93 to i64
  %95 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %visited, i64 %94) #0
  %96 = load i64* %95
  %97 = load i64* %source_mask, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %113, label %100

; <label>:100                                     ; preds = %89
  %101 = load i64* %source_mask, align 8
  %102 = load i32* %v_idx, align 4
  %103 = sext i32 %102 to i64
  %104 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %visited, i64 %103) #0
  %105 = load i64* %104
  %106 = or i64 %105, %101
  store i64 %106, i64* %104
  %107 = load i64* %source_mask, align 8
  %108 = load i32* %v_idx, align 4
  %109 = sext i32 %108 to i64
  %110 = call i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %next_frontier, i64 %109) #0
  %111 = load i64* %110
  %112 = or i64 %111, %107
  store i64 %112, i64* %110
  store i8 1, i8* %active, align 1
  br label %113

; <label>:113                                     ; preds = %100, %89
  br label %114

; <label>:114                                     ; preds = %113, %84
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load %struct.Node*** %__begin, align 8
  %117 = getelementptr inbounds %struct.Node** %116, i32 1
  store %struct.Node** %117, %struct.Node*** %__begin, align 8
  br label %80

; <label>:118                                     ; preds = %80
  br label %119

; <label>:119                                     ; preds = %118, %50
  br label %120

; <label>:120                                     ; preds = %119
  %121 = load i32* %u_idx, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %u_idx, align 4
  br label %46

; <label>:123                                     ; preds = %46
  %124 = call %"class.std::vector.8"* @_ZNSt6vectorImSaImEEaSERKS1_(%"class.std::vector.8"* %frontier, %"class.std::vector.8"* %next_frontier)
  %125 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %next_frontier) #0
  %126 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  store i64* %125, i64** %126
  %127 = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %next_frontier) #0
  %128 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  store i64* %127, i64** %128
  store i32 0, i32* %13
  %129 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %130 = load i64** %129
  %131 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %132 = load i64** %131
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_RKT0_(i64* %130, i64* %132, i32* %13)
  br label %42

; <label>:133                                     ; preds = %42
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.8"* %next_frontier) #0
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.8"* %frontier) #0
  call void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.8"* %visited) #0
  br label %134

; <label>:134                                     ; preds = %133, %16
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load %struct.Node*** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load %struct.Node*** %9, align 8
  %11 = ptrtoint %struct.Node** %6 to i64
  %12 = ptrtoint %struct.Node** %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEEC2EmRKmRKS0_(%"class.std::vector.8"* %this, i64 %__n, i64* %__value, %"class.std::allocator.10"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__value, i64** %3, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %4, align 8
  %5 = load %"class.std::vector.8"** %1
  %6 = bitcast %"class.std::vector.8"* %5 to %"struct.std::_Vector_base.9"*
  %7 = load i64* %2, align 8
  %8 = load %"class.std::allocator.10"** %4, align 8
  call void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(%"struct.std::_Vector_base.9"* %6, i64 %7, %"class.std::allocator.10"* %8)
  %9 = load i64* %2, align 8
  %10 = load i64** %3, align 8
  call void @_ZNSt6vectorImSaImEE18_M_fill_initializeEmRKm(%"class.std::vector.8"* %5, i64 %9, i64* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImEC2Ev(%"class.std::allocator.10"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"** %1
  %3 = bitcast %"class.std::allocator.10"* %2 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.11"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImED2Ev(%"class.std::allocator.10"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  %2 = load %"class.std::allocator.10"** %1
  %3 = bitcast %"class.std::allocator.10"* %2 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.11"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"class.std::map"*, align 8
  %2 = alloca %struct.Node**, align 8
  %__i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.19", align 1
  store %"class.std::map"* %this, %"class.std::map"** %1, align 8
  store %struct.Node** %__k, %struct.Node*** %2, align 8
  %9 = load %"class.std::map"** %1
  %10 = load %struct.Node*** %2, align 8
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_(%"class.std::map"* %9, %struct.Node** %10)
  %12 = getelementptr %"struct.std::_Rb_tree_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12
  %13 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %9) #0
  %14 = getelementptr %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"** %14
  %15 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %__i, %"struct.std::_Rb_tree_iterator"* %3) #0
  br i1 %15, label %21, label %16

; <label>:16                                      ; preds = %0
  call void @_ZNKSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE8key_compEv(%"class.std::map"* %9)
  %17 = load %struct.Node*** %2, align 8
  %18 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i) #0
  %19 = getelementptr inbounds %"struct.std::pair"* %18, i32 0, i32 0
  %20 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %4, %struct.Node** %17, %struct.Node** %19)
  br i1 %20, label %21, label %30

; <label>:21                                      ; preds = %16, %0
  %22 = getelementptr inbounds %"class.std::map"* %9, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKP4NodeiEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_const_iterator"* %6, %"struct.std::_Rb_tree_iterator"* %__i) #0
  %23 = load %struct.Node*** %2, align 8
  call void @_ZNSt5tupleIJRKP4NodeEEC2ES3_(%"class.std::tuple"* %7, %struct.Node** %23)
  %24 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"** %24
  %26 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(%"class.std::_Rb_tree"* %22, %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::piecewise_construct_t"* @_ZStL19piecewise_construct, %"class.std::tuple"* %7, %"class.std::tuple.19"* %8)
  %27 = getelementptr %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %26, %"struct.std::_Rb_tree_node_base"** %27
  %28 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %29 = bitcast %"struct.std::_Rb_tree_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 8, i1 false)
  br label %30

; <label>:30                                      ; preds = %21, %16
  %31 = call %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i) #0
  %32 = getelementptr inbounds %"struct.std::pair"* %31, i32 0, i32 1
  ret i32* %32
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEEixEm(%"class.std::vector.8"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.8"** %1
  %4 = bitcast %"class.std::vector.8"* %3 to %"struct.std::_Vector_base.9"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.9"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i64** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i64* %7, i64 %8
  ret i64* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt6vectorIP4NodeSaIS1_EEixEm(%"class.std::vector"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load %struct.Node*** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds %struct.Node** %7, i64 %8
  ret %struct.Node** %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector.3"* %this, i32* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  store i32* %__x, i32** %2, align 8
  %3 = load %"class.std::vector.3"** %1
  %4 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.4"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 1
  %7 = load i32** %6, align 8
  %8 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base.4"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 2
  %11 = load i32** %10, align 8
  %12 = icmp ne i32* %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base.4"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %15 to %"class.std::allocator.5"*
  %17 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.4"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load i32** %19, align 8
  %21 = load i32** %2, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.5"* %16, i32* %20, i32* %21)
  %22 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base.4"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %23, i32 0, i32 1
  %25 = load i32** %24, align 8
  %26 = getelementptr inbounds i32* %25, i32 1
  store i32* %26, i32** %24, align 8
  br label %29

; <label>:27                                      ; preds = %0
  %28 = load i32** %2, align 8
  call void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector.3"* %3, i32* %28)
  br label %29

; <label>:29                                      ; preds = %27, %13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::vector.8"* @_ZNSt6vectorImSaImEEaSERKS1_(%"class.std::vector.8"* %this, %"class.std::vector.8"* %__x) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  %2 = alloca %"class.std::vector.8"*, align 8
  %__xlen = alloca i64, align 8
  %__tmp = alloca i64*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  store %"class.std::vector.8"* %__x, %"class.std::vector.8"** %2, align 8
  %10 = load %"class.std::vector.8"** %1
  %11 = load %"class.std::vector.8"** %2, align 8
  %12 = icmp ne %"class.std::vector.8"* %11, %10
  br i1 %12, label %13, label %149

; <label>:13                                      ; preds = %0
  %14 = load %"class.std::vector.8"** %2, align 8
  %15 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.8"* %14) #0
  store i64 %15, i64* %__xlen, align 8
  %16 = load i64* %__xlen, align 8
  %17 = call i64 @_ZNKSt6vectorImSaImEE8capacityEv(%"class.std::vector.8"* %10) #0
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %72

; <label>:19                                      ; preds = %13
  %20 = load i64* %__xlen, align 8
  %21 = load %"class.std::vector.8"** %2, align 8
  %22 = call i64* @_ZNKSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %21) #0
  %23 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  store i64* %22, i64** %23
  %24 = load %"class.std::vector.8"** %2, align 8
  %25 = call i64* @_ZNKSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %24) #0
  %26 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  store i64* %25, i64** %26
  %27 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %28 = load i64** %27
  %29 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %30 = load i64** %29
  %31 = call i64* @_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_(%"class.std::vector.8"* %10, i64 %20, i64* %28, i64* %30)
  store i64* %31, i64** %__tmp, align 8
  %32 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %33 = getelementptr inbounds %"struct.std::_Vector_base.9"* %32, i32 0, i32 0
  %34 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %33, i32 0, i32 0
  %35 = load i64** %34, align 8
  %36 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %37 = getelementptr inbounds %"struct.std::_Vector_base.9"* %36, i32 0, i32 0
  %38 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %37, i32 0, i32 1
  %39 = load i64** %38, align 8
  %40 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %41 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %40) #0
  call void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %35, i64* %39, %"class.std::allocator.10"* %41)
  %42 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %43 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %44 = getelementptr inbounds %"struct.std::_Vector_base.9"* %43, i32 0, i32 0
  %45 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %44, i32 0, i32 0
  %46 = load i64** %45, align 8
  %47 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %48 = getelementptr inbounds %"struct.std::_Vector_base.9"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %48, i32 0, i32 2
  %50 = load i64** %49, align 8
  %51 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %52 = getelementptr inbounds %"struct.std::_Vector_base.9"* %51, i32 0, i32 0
  %53 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %52, i32 0, i32 0
  %54 = load i64** %53, align 8
  %55 = ptrtoint i64* %50 to i64
  %56 = ptrtoint i64* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.9"* %42, i64* %46, i64 %58)
  %59 = load i64** %__tmp, align 8
  %60 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %61 = getelementptr inbounds %"struct.std::_Vector_base.9"* %60, i32 0, i32 0
  %62 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %61, i32 0, i32 0
  store i64* %59, i64** %62, align 8
  %63 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.9"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %64, i32 0, i32 0
  %66 = load i64** %65, align 8
  %67 = load i64* %__xlen, align 8
  %68 = getelementptr inbounds i64* %66, i64 %67
  %69 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.9"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %70, i32 0, i32 2
  store i64* %68, i64** %71, align 8
  br label %139

; <label>:72                                      ; preds = %13
  %73 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.8"* %10) #0
  %74 = load i64* %__xlen, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %101

; <label>:76                                      ; preds = %72
  %77 = load %"class.std::vector.8"** %2, align 8
  %78 = call i64* @_ZNKSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %77) #0
  %79 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %6, i32 0, i32 0
  store i64* %78, i64** %79
  %80 = load %"class.std::vector.8"** %2, align 8
  %81 = call i64* @_ZNKSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %80) #0
  %82 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %7, i32 0, i32 0
  store i64* %81, i64** %82
  %83 = call i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %10) #0
  %84 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store i64* %83, i64** %84
  %85 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %6, i32 0, i32 0
  %86 = load i64** %85
  %87 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %7, i32 0, i32 0
  %88 = load i64** %87
  %89 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %90 = load i64** %89
  %91 = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_(i64* %86, i64* %88, i64* %90)
  %92 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store i64* %91, i64** %92
  %93 = call i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %10) #0
  %94 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store i64* %93, i64** %94
  %95 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %96 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %95) #0
  %97 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %98 = load i64** %97
  %99 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %100 = load i64** %99
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RSaIT0_E(i64* %98, i64* %100, %"class.std::allocator.10"* %96)
  br label %138

; <label>:101                                     ; preds = %72
  %102 = load %"class.std::vector.8"** %2, align 8
  %103 = bitcast %"class.std::vector.8"* %102 to %"struct.std::_Vector_base.9"*
  %104 = getelementptr inbounds %"struct.std::_Vector_base.9"* %103, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %104, i32 0, i32 0
  %106 = load i64** %105, align 8
  %107 = load %"class.std::vector.8"** %2, align 8
  %108 = bitcast %"class.std::vector.8"* %107 to %"struct.std::_Vector_base.9"*
  %109 = getelementptr inbounds %"struct.std::_Vector_base.9"* %108, i32 0, i32 0
  %110 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %109, i32 0, i32 0
  %111 = load i64** %110, align 8
  %112 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.8"* %10) #0
  %113 = getelementptr inbounds i64* %111, i64 %112
  %114 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %115 = getelementptr inbounds %"struct.std::_Vector_base.9"* %114, i32 0, i32 0
  %116 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %115, i32 0, i32 0
  %117 = load i64** %116, align 8
  %118 = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %106, i64* %113, i64* %117)
  %119 = load %"class.std::vector.8"** %2, align 8
  %120 = bitcast %"class.std::vector.8"* %119 to %"struct.std::_Vector_base.9"*
  %121 = getelementptr inbounds %"struct.std::_Vector_base.9"* %120, i32 0, i32 0
  %122 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %121, i32 0, i32 0
  %123 = load i64** %122, align 8
  %124 = call i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.8"* %10) #0
  %125 = getelementptr inbounds i64* %123, i64 %124
  %126 = load %"class.std::vector.8"** %2, align 8
  %127 = bitcast %"class.std::vector.8"* %126 to %"struct.std::_Vector_base.9"*
  %128 = getelementptr inbounds %"struct.std::_Vector_base.9"* %127, i32 0, i32 0
  %129 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %128, i32 0, i32 1
  %130 = load i64** %129, align 8
  %131 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %132 = getelementptr inbounds %"struct.std::_Vector_base.9"* %131, i32 0, i32 0
  %133 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %132, i32 0, i32 1
  %134 = load i64** %133, align 8
  %135 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %136 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %135) #0
  %137 = call i64* @_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E(i64* %125, i64* %130, i64* %134, %"class.std::allocator.10"* %136)
  br label %138

; <label>:138                                     ; preds = %101, %76
  br label %139

; <label>:139                                     ; preds = %138, %19
  %140 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %141 = getelementptr inbounds %"struct.std::_Vector_base.9"* %140, i32 0, i32 0
  %142 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %141, i32 0, i32 0
  %143 = load i64** %142, align 8
  %144 = load i64* %__xlen, align 8
  %145 = getelementptr inbounds i64* %143, i64 %144
  %146 = bitcast %"class.std::vector.8"* %10 to %"struct.std::_Vector_base.9"*
  %147 = getelementptr inbounds %"struct.std::_Vector_base.9"* %146, i32 0, i32 0
  %148 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %147, i32 0, i32 1
  store i64* %145, i64** %148, align 8
  br label %149

; <label>:149                                     ; preds = %139, %0
  ret %"class.std::vector.8"* %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEiEvT_S7_RKT0_(i64* %__first.coerce, i64* %__last.coerce, i32* %__value) #3 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %5
  store i32* %__value, i32** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %9 = load i64** %8
  %10 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i64* %9)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %14 = load i64** %13
  %15 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i64* %14)
  %16 = load i32** %1, align 8
  call void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %10, i64* %15, i32* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.8"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %2, align 8
  %3 = load %"class.std::vector.8"** %2
  %4 = bitcast %"class.std::vector.8"* %3 to %"struct.std::_Vector_base.9"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.9"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i64** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i64** %7
  ret i64* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::vector.8"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %2, align 8
  %3 = load %"class.std::vector.8"** %2
  %4 = bitcast %"class.std::vector.8"* %3 to %"struct.std::_Vector_base.9"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.9"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i64** %6) #0
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %8 = load i64** %7
  ret i64* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEED2Ev(%"class.std::vector.8"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  %2 = load %"class.std::vector.8"** %1
  %3 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load i64** %5, align 8
  %7 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.9"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load i64** %9, align 8
  %11 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %12 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %11) #0
  call void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %6, i64* %10, %"class.std::allocator.10"* %12)
  %13 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.9"* %13) #0
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Node* @_Z6insertP4NodeiRSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEE(%struct.Node* %root, i32 %val, %"class.std::vector"* %all_nodes, %"class.std::map"* %node_to_idx) #3 {
  %1 = alloca %struct.Node*, align 8
  %2 = alloca %struct.Node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca %"class.std::map"*, align 8
  %newNode = alloca %struct.Node*, align 8
  store %struct.Node* %root, %struct.Node** %2, align 8
  store i32 %val, i32* %3, align 4
  store %"class.std::vector"* %all_nodes, %"class.std::vector"** %4, align 8
  store %"class.std::map"* %node_to_idx, %"class.std::map"** %5, align 8
  %6 = load %struct.Node** %2, align 8
  %7 = icmp ne %struct.Node* %6, null
  br i1 %7, label %19, label %8

; <label>:8                                       ; preds = %0
  %9 = call noalias i8* @_Znwm(i64 32) #9
  %10 = bitcast i8* %9 to %struct.Node*
  %11 = load i32* %3, align 4
  call void @_ZN4NodeC2Ei(%struct.Node* %10, i32 %11)
  store %struct.Node* %10, %struct.Node** %newNode, align 8
  %12 = load %"class.std::vector"** %4, align 8
  %13 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %12) #0
  %14 = trunc i64 %13 to i32
  %15 = load %"class.std::map"** %5, align 8
  %16 = call i32* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEixERS5_(%"class.std::map"* %15, %struct.Node** %newNode)
  store i32 %14, i32* %16
  %17 = load %"class.std::vector"** %4, align 8
  call void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector"* %17, %struct.Node** %newNode)
  %18 = load %struct.Node** %newNode, align 8
  store %struct.Node* %18, %struct.Node** %1
  br label %57

; <label>:19                                      ; preds = %0
  %20 = load i32* %3, align 4
  %21 = load %struct.Node** %2, align 8
  %22 = getelementptr inbounds %struct.Node* %21, i32 0, i32 0
  %23 = load i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

; <label>:25                                      ; preds = %19
  %26 = load %struct.Node** %2, align 8
  %27 = getelementptr inbounds %struct.Node* %26, i32 0, i32 1
  %28 = load %struct.Node** %27, align 8
  %29 = load i32* %3, align 4
  %30 = load %"class.std::vector"** %4, align 8
  %31 = load %"class.std::map"** %5, align 8
  %32 = call %struct.Node* @_Z6insertP4NodeiRSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEE(%struct.Node* %28, i32 %29, %"class.std::vector"* %30, %"class.std::map"* %31)
  %33 = load %struct.Node** %2, align 8
  %34 = getelementptr inbounds %struct.Node* %33, i32 0, i32 1
  store %struct.Node* %32, %struct.Node** %34, align 8
  %35 = load %struct.Node** %2, align 8
  %36 = load %struct.Node** %2, align 8
  %37 = getelementptr inbounds %struct.Node* %36, i32 0, i32 1
  %38 = load %struct.Node** %37, align 8
  %39 = getelementptr inbounds %struct.Node* %38, i32 0, i32 3
  store %struct.Node* %35, %struct.Node** %39, align 8
  br label %55

; <label>:40                                      ; preds = %19
  %41 = load %struct.Node** %2, align 8
  %42 = getelementptr inbounds %struct.Node* %41, i32 0, i32 2
  %43 = load %struct.Node** %42, align 8
  %44 = load i32* %3, align 4
  %45 = load %"class.std::vector"** %4, align 8
  %46 = load %"class.std::map"** %5, align 8
  %47 = call %struct.Node* @_Z6insertP4NodeiRSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEE(%struct.Node* %43, i32 %44, %"class.std::vector"* %45, %"class.std::map"* %46)
  %48 = load %struct.Node** %2, align 8
  %49 = getelementptr inbounds %struct.Node* %48, i32 0, i32 2
  store %struct.Node* %47, %struct.Node** %49, align 8
  %50 = load %struct.Node** %2, align 8
  %51 = load %struct.Node** %2, align 8
  %52 = getelementptr inbounds %struct.Node* %51, i32 0, i32 2
  %53 = load %struct.Node** %52, align 8
  %54 = getelementptr inbounds %struct.Node* %53, i32 0, i32 3
  store %struct.Node* %50, %struct.Node** %54, align 8
  br label %55

; <label>:55                                      ; preds = %40, %25
  %56 = load %struct.Node** %2, align 8
  store %struct.Node* %56, %struct.Node** %1
  br label %57

; <label>:57                                      ; preds = %55, %8
  %58 = load %struct.Node** %1
  ret %struct.Node* %58
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

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
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(%"class.std::vector"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %5, i32 0, i32 1
  %7 = load %struct.Node*** %6, align 8
  %8 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %9, i32 0, i32 2
  %11 = load %struct.Node*** %10, align 8
  %12 = icmp ne %struct.Node** %7, %11
  br i1 %12, label %13, label %27

; <label>:13                                      ; preds = %0
  %14 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base"* %14, i32 0, i32 0
  %16 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %15 to %"class.std::allocator"*
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %18, i32 0, i32 1
  %20 = load %struct.Node*** %19, align 8
  %21 = load %struct.Node*** %2, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* %16, %struct.Node** %20, %struct.Node** %21)
  %22 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %23 = getelementptr inbounds %"struct.std::_Vector_base"* %22, i32 0, i32 0
  %24 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %23, i32 0, i32 1
  %25 = load %struct.Node*** %24, align 8
  %26 = getelementptr inbounds %struct.Node** %25, i32 1
  store %struct.Node** %26, %struct.Node*** %24, align 8
  br label %29

; <label>:27                                      ; preds = %0
  %28 = load %struct.Node*** %2, align 8
  call void @_ZNSt6vectorIP4NodeSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_(%"class.std::vector"* %3, %struct.Node** %28)
  br label %29

; <label>:29                                      ; preds = %27, %13
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %filename = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator.13", align 1
  %file = alloca %"class.std::basic_ifstream", align 8
  %5 = alloca i32
  %num = alloca i32, align 4
  %root = alloca %struct.Node*, align 8
  %all_nodes = alloca %"class.std::vector", align 8
  %node_to_idx = alloca %"class.std::map", align 8
  %result = alloca %"class.std::vector.3", align 8
  %i = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.13"* %4) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %filename, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), %"class.std::allocator.13"* %4)
  call void @_ZNSaIcED1Ev(%"class.std::allocator.13"* %4) #0
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
  call void @_ZNSt6vectorIP4NodeSaIS1_EEC2Ev(%"class.std::vector"* %all_nodes) #0
  call void @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEC2Ev(%"class.std::map"* %node_to_idx) #0
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
  %36 = call %struct.Node* @_Z6insertP4NodeiRSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEE(%struct.Node* %34, i32 %35, %"class.std::vector"* %all_nodes, %"class.std::map"* %node_to_idx)
  store %struct.Node* %36, %struct.Node** %root, align 8
  br label %21

; <label>:37                                      ; preds = %21
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"* %file)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.3"* %result) #0
  %38 = load %struct.Node** %root, align 8
  call void @_Z16bfs_bit_parallelP4NodeRKSt6vectorIS0_SaIS0_EERSt3mapIS0_iSt4lessIS0_ESaISt4pairIKS0_iEEERS1_IiSaIiEE(%struct.Node* %38, %"class.std::vector"* %all_nodes, %"class.std::map"* %node_to_idx, %"class.std::vector.3"* %result)
  store i64 0, i64* %i, align 8
  br label %39

; <label>:39                                      ; preds = %54, %37
  %40 = load i64* %i, align 8
  %41 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %result) #0
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %57

; <label>:43                                      ; preds = %39
  %44 = load i64* %i, align 8
  %45 = call i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.3"* %result, i64 %44) #0
  %46 = load i32* %45
  %47 = call %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %46)
  %48 = load i64* %i, align 8
  %49 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %result) #0
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
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.3"* %result) #0
  call void @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(%"class.std::map"* %node_to_idx) #0
  call void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector"* %all_nodes) #0
  br label %59

; <label>:59                                      ; preds = %57, %16
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"* %file) #0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %filename) #0
  %60 = load i32* %1
  ret i32 %60
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.13"*) #1

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator.13"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator.13"*) #2

declare %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(%"class.std::__cxx11::basic_string"*, i8*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_ifstream"*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare zeroext i1 @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv(%"class.std::basic_ifstream"*) #1

declare %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"*, %"class.std::__cxx11::basic_string"*) #1

declare %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"*, i8*) #1

declare %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2Ev(%"struct.std::_Vector_base"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEEC2Ev(%"class.std::map"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %1, align 8
  %2 = load %"class.std::map"** %1
  %3 = getelementptr inbounds %"class.std::map"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEC2Ev(%"class.std::_Rb_tree"* %3)
  ret void
}

declare %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32*) #1

declare zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"*) #1

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ifstream"*) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  %2 = load %"class.std::vector.3"** %1
  %3 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.4"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  %2 = load %"class.std::vector.3"** %1
  %3 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.4"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.4"* %7, i32 0, i32 0
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
define linkonce_odr i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.3"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::vector.3"** %1
  %4 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.4"* %4, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %5, i32 0, i32 0
  %7 = load i32** %6, align 8
  %8 = load i64* %2, align 8
  %9 = getelementptr inbounds i32* %7, i64 %8
  ret i32* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.3"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  %2 = load %"class.std::vector.3"** %1
  %3 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.4"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load i32** %5, align 8
  %7 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.4"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load i32** %9, align 8
  %11 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %12 = call %"class.std::allocator.5"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %11) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %6, i32* %10, %"class.std::allocator.5"* %12)
  %13 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.4"* %13) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev(%"class.std::map"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %1, align 8
  %2 = load %"class.std::map"** %1
  %3 = getelementptr inbounds %"class.std::map"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(%"class.std::_Rb_tree"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EED2Ev(%"class.std::vector"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %5, align 8
  %7 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8, i32 0, i32 1
  %10 = load %struct.Node*** %9, align 8
  %11 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %12 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %11) #0
  call void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %6, %struct.Node** %10, %"class.std::allocator"* %12)
  %13 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EED2Ev(%"struct.std::_Vector_base"* %13) #0
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ifstream"*) #2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.5"*) #5 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.5"*, align 8
  store i32* %__first, i32** %2, align 8
  store i32* %__last, i32** %3, align 8
  store %"class.std::allocator.5"* %0, %"class.std::allocator.5"** %4, align 8
  %5 = load i32** %2, align 8
  %6 = load i32** %3, align 8
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %5, i32* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.5"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  %2 = load %"struct.std::_Vector_base.4"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.5"*
  ret %"class.std::allocator.5"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  %2 = load %"struct.std::_Vector_base.4"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load i32** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load i32** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load i32** %10, align 8
  %12 = ptrtoint i32* %8 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.4"* %2, i32* %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.4"* %this, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.4"** %1
  %5 = load i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.4"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %8 to %"class.std::allocator.5"*
  %10 = load i32** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.5"* %9, i32* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.5"*
  call void @_ZNSaIiED2Ev(%"class.std::allocator.5"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiED2Ev(%"class.std::allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  store %"class.std::allocator.5"* %this, %"class.std::allocator.5"** %1, align 8
  %2 = load %"class.std::allocator.5"** %1
  %3 = bitcast %"class.std::allocator.5"* %2 to %"class.__gnu_cxx::new_allocator.6"*
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.6"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.__gnu_cxx::new_allocator.6"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.6"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.5"* %__a, i32* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.5"* %__a, %"class.std::allocator.5"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.5"** %1, align 8
  %5 = bitcast %"class.std::allocator.5"* %4 to %"class.__gnu_cxx::new_allocator.6"*
  %6 = load i32** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.6"* %5, i32* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator.6"* %this, i32* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %2, align 8
  store i32* %__p, i32** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.6"** %2
  %6 = load i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #5 {
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
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.4"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  %2 = load %"struct.std::_Vector_base.4"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %this, %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2 to %"class.std::allocator.5"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.5"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 1
  store i32* null, i32** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %2, i32 0, i32 2
  store i32* null, i32** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIiEC2Ev(%"class.std::allocator.5"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  store %"class.std::allocator.5"* %this, %"class.std::allocator.5"** %1, align 8
  %2 = load %"class.std::allocator.5"** %1
  %3 = bitcast %"class.std::allocator.5"* %2 to %"class.__gnu_cxx::new_allocator.6"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.6"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator.6"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.6"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1
  %3 = bitcast %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEC2Ev(%"class.std::allocator.0"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 32, i32 8, i1 false)
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 2
  store i64 0, i64* %7, align 8
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEC2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %10 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2, i32 0, i32 1
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %11, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %10, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEC2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %__first, %struct.Node** %__last, %"class.std::allocator"*) #5 {
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %struct.Node** %__first, %struct.Node*** %2, align 8
  store %struct.Node** %__last, %struct.Node*** %3, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node*** %3, align 8
  call void @_ZSt8_DestroyIPP4NodeEvT_S3_(%struct.Node** %5, %struct.Node** %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load %struct.Node*** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load %struct.Node*** %10, align 8
  %12 = ptrtoint %struct.Node** %8 to i64
  %13 = ptrtoint %struct.Node** %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %2, %struct.Node** %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %this, %struct.Node** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = icmp ne %struct.Node** %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %8 to %"class.std::allocator"*
  %10 = load %struct.Node*** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator"* %9, %struct.Node** %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIP4NodeED2Ev(%"class.std::allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeED2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE10deallocateERS2_PS1_m(%"class.std::allocator"* %__a, %struct.Node** %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %5, %struct.Node** %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE10deallocateEPS2_m(%"class.__gnu_cxx::new_allocator"* %this, %struct.Node** %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store %struct.Node** %__p, %struct.Node*** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load %struct.Node*** %3, align 8
  %7 = bitcast %struct.Node** %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPP4NodeEvT_S3_(%struct.Node** %__first, %struct.Node** %__last) #5 {
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
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %this, %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2 to %"class.std::allocator"*
  call void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator"* %3) #0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 0
  store %struct.Node** null, %struct.Node*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 1
  store %struct.Node** null, %struct.Node*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %2, i32 0, i32 2
  store %struct.Node** null, %struct.Node*** %6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaIP4NodeEC2Ev(%"class.std::allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* %__a, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.std::allocator"** %1, align 8
  %5 = bitcast %"class.std::allocator"* %4 to %"class.__gnu_cxx::new_allocator"*
  %6 = load %struct.Node*** %2, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %5, %struct.Node** %6, %struct.Node** %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIP4NodeSaIS1_EE19_M_emplace_back_auxIJRKS1_EEEvDpOT_(%"class.std::vector"* %this, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca %struct.Node**, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca %struct.Node**, align 8
  %__new_finish = alloca %struct.Node**, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store %struct.Node** %__args, %struct.Node*** %2, align 8
  %3 = load %"class.std::vector"** %1
  %4 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  store i64 %4, i64* %__len, align 8
  %5 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %6 = load i64* %__len, align 8
  %7 = call %struct.Node** @_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %5, i64 %6)
  store %struct.Node** %7, %struct.Node*** %__new_start, align 8
  %8 = load %struct.Node*** %__new_start, align 8
  store %struct.Node** %8, %struct.Node*** %__new_finish, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %10 to %"class.std::allocator"*
  %12 = load %struct.Node*** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %3) #0
  %14 = getelementptr inbounds %struct.Node** %12, i64 %13
  %15 = load %struct.Node*** %2, align 8
  %16 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %15) #0
  call void @_ZNSt16allocator_traitsISaIP4NodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(%"class.std::allocator"* %11, %struct.Node** %14, %struct.Node** %16)
  store %struct.Node** null, %struct.Node*** %__new_finish, align 8
  %17 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %18, i32 0, i32 0
  %20 = load %struct.Node*** %19, align 8
  %21 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load %struct.Node*** %23, align 8
  %25 = load %struct.Node*** %__new_start, align 8
  %26 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %27 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %26) #0
  %28 = call %struct.Node** @_ZSt34__uninitialized_move_if_noexcept_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_(%struct.Node** %20, %struct.Node** %24, %struct.Node** %25, %"class.std::allocator"* %27)
  store %struct.Node** %28, %struct.Node*** %__new_finish, align 8
  %29 = load %struct.Node*** %__new_finish, align 8
  %30 = getelementptr inbounds %struct.Node** %29, i32 1
  store %struct.Node** %30, %struct.Node*** %__new_finish, align 8
  %31 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %32, i32 0, i32 0
  %34 = load %struct.Node*** %33, align 8
  %35 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %36, i32 0, i32 1
  %38 = load %struct.Node*** %37, align 8
  %39 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %40 = call %"class.std::allocator"* @_ZNSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %39) #0
  call void @_ZSt8_DestroyIPP4NodeS1_EvT_S3_RSaIT0_E(%struct.Node** %34, %struct.Node** %38, %"class.std::allocator"* %40)
  %41 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %42 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %43, i32 0, i32 0
  %45 = load %struct.Node*** %44, align 8
  %46 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base"* %46, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %47, i32 0, i32 2
  %49 = load %struct.Node*** %48, align 8
  %50 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base"* %50, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %51, i32 0, i32 0
  %53 = load %struct.Node*** %52, align 8
  %54 = ptrtoint %struct.Node** %49 to i64
  %55 = ptrtoint %struct.Node** %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 8
  call void @_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m(%"struct.std::_Vector_base"* %41, %struct.Node** %45, i64 %57)
  %58 = load %struct.Node*** %__new_start, align 8
  %59 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base"* %59, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %60, i32 0, i32 0
  store %struct.Node** %58, %struct.Node*** %61, align 8
  %62 = load %struct.Node*** %__new_finish, align 8
  %63 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %64, i32 0, i32 1
  store %struct.Node** %62, %struct.Node*** %65, align 8
  %66 = load %struct.Node*** %__new_start, align 8
  %67 = load i64* %__len, align 8
  %68 = getelementptr inbounds %struct.Node** %66, i64 %67
  %69 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %70, i32 0, i32 2
  store %struct.Node** %68, %struct.Node*** %71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector"** %1
  %6 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector"* %5) #0
  %7 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %5) #0
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #10
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %5) #0
  %15 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %5) #0
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE4sizeEv(%"class.std::vector"* %5) #0
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector"* %5) #0
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector"* %5) #0
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #3 align 2 {
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
  %8 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %7 to %"class.std::allocator"*
  %9 = load i64* %2, align 8
  %10 = call %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator"* %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi %struct.Node** [ %10, %6 ], [ null, %11 ]
  ret %struct.Node** %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %__t) #3 {
  %1 = alloca %struct.Node**, align 8
  store %struct.Node** %__t, %struct.Node*** %1, align 8
  %2 = load %struct.Node*** %1, align 8
  ret %struct.Node** %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt34__uninitialized_move_if_noexcept_aIPP4NodeS2_SaIS1_EET0_T_S5_S4_RT1_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result, %"class.std::allocator"* %__alloc) #5 {
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = alloca %"class.std::move_iterator", align 8
  store %struct.Node** %__first, %struct.Node*** %1, align 8
  store %struct.Node** %__last, %struct.Node*** %2, align 8
  store %struct.Node** %__result, %struct.Node*** %3, align 8
  store %"class.std::allocator"* %__alloc, %"class.std::allocator"** %4, align 8
  %7 = load %struct.Node*** %1, align 8
  %8 = call %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %7)
  %9 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  store %struct.Node** %8, %struct.Node*** %9
  %10 = load %struct.Node*** %2, align 8
  %11 = call %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %10)
  %12 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  store %struct.Node** %11, %struct.Node*** %12
  %13 = load %struct.Node*** %3, align 8
  %14 = load %"class.std::allocator"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load %struct.Node*** %15
  %17 = getelementptr %"class.std::move_iterator"* %6, i32 0, i32 0
  %18 = load %struct.Node*** %17
  %19 = call %struct.Node** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4NodeES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct.Node** %16, %struct.Node** %18, %struct.Node** %13, %"class.std::allocator"* %14)
  ret %struct.Node** %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP4NodeES3_S2_ET0_T_S6_S5_RSaIT1_E(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result, %"class.std::allocator"*) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"class.std::move_iterator", align 8
  %5 = alloca %"class.std::move_iterator", align 8
  %6 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %6
  %7 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %7
  store %struct.Node** %__result, %struct.Node*** %2, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %3, align 8
  %8 = bitcast %"class.std::move_iterator"* %4 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.std::move_iterator"* %5 to i8*
  %11 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load %struct.Node*** %2, align 8
  %13 = getelementptr %"class.std::move_iterator"* %4, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = getelementptr %"class.std::move_iterator"* %5, i32 0, i32 0
  %16 = load %struct.Node*** %15
  %17 = call %struct.Node** @_ZSt18uninitialized_copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %14, %struct.Node** %16, %struct.Node** %12)
  ret %struct.Node** %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt32__make_move_if_noexcept_iteratorIPP4NodeSt13move_iteratorIS2_EET0_T_(%struct.Node** %__i) #5 {
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = alloca %struct.Node**, align 8
  store %struct.Node** %__i, %struct.Node*** %2, align 8
  %3 = load %struct.Node*** %2, align 8
  call void @_ZNSt13move_iteratorIPP4NodeEC2ES2_(%"class.std::move_iterator"* %1, %struct.Node** %3)
  %4 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %5 = load %struct.Node*** %4
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13move_iteratorIPP4NodeEC2ES2_(%"class.std::move_iterator"* %this, %struct.Node** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  store %struct.Node** %__i, %struct.Node*** %2, align 8
  %3 = load %"class.std::move_iterator"** %1
  %4 = getelementptr inbounds %"class.std::move_iterator"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %2, align 8
  store %struct.Node** %5, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt18uninitialized_copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca %struct.Node**, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %struct.Node*** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load %struct.Node*** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4NodeES5_EET0_T_S8_S7_(%struct.Node** %12, %struct.Node** %14, %struct.Node** %10)
  ret %struct.Node** %15
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP4NodeES5_EET0_T_S8_S7_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #3 align 2 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load %struct.Node*** %1, align 8
  %11 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %12 = load %struct.Node*** %11
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZSt4copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %12, %struct.Node** %14, %struct.Node** %10)
  ret %struct.Node** %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt4copyISt13move_iteratorIPP4NodeES3_ET0_T_S6_S5_(%struct.Node** %__first.coerce, %struct.Node** %__last.coerce, %struct.Node** %__result) #5 {
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %1 = alloca %struct.Node**, align 8
  %2 = alloca %"class.std::move_iterator", align 8
  %3 = alloca %"class.std::move_iterator", align 8
  %4 = getelementptr %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %4
  %5 = getelementptr %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %struct.Node** %__last.coerce, %struct.Node*** %5
  store %struct.Node** %__result, %struct.Node*** %1, align 8
  %6 = bitcast %"class.std::move_iterator"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.std::move_iterator"* %2, i32 0, i32 0
  %9 = load %struct.Node*** %8
  %10 = call %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %9)
  %11 = bitcast %"class.std::move_iterator"* %3 to i8*
  %12 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.std::move_iterator"* %3, i32 0, i32 0
  %14 = load %struct.Node*** %13
  %15 = call %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %14)
  %16 = load %struct.Node*** %1, align 8
  %17 = call %struct.Node** @_ZSt14__copy_move_a2ILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %10, %struct.Node** %15, %struct.Node** %16)
  ret %struct.Node** %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt14__copy_move_a2ILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result) #5 {
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
define linkonce_odr %struct.Node** @_ZSt12__miter_baseISt13move_iteratorIPP4NodeEENSt11_Miter_baseIT_E13iterator_typeES6_(%struct.Node** %__it.coerce) #5 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = alloca %"class.std::move_iterator", align 8
  %2 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store %struct.Node** %__it.coerce, %struct.Node*** %2
  %3 = bitcast %"class.std::move_iterator"* %1 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.std::move_iterator"* %1, i32 0, i32 0
  %6 = load %struct.Node*** %5
  %7 = call %struct.Node** @_ZNSt10_Iter_baseISt13move_iteratorIPP4NodeELb1EE7_S_baseES4_(%struct.Node** %6)
  ret %struct.Node** %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt10_Iter_baseISt13move_iteratorIPP4NodeELb1EE7_S_baseES4_(%struct.Node** %__it.coerce) #3 align 2 {
  %__it = alloca %"class.std::move_iterator", align 8
  %1 = getelementptr %"class.std::move_iterator"* %__it, i32 0, i32 0
  store %struct.Node** %__it.coerce, %struct.Node*** %1
  %2 = call %struct.Node** @_ZNKSt13move_iteratorIPP4NodeE4baseEv(%"class.std::move_iterator"* %__it)
  ret %struct.Node** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt13move_iteratorIPP4NodeE4baseEv(%"class.std::move_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %1, align 8
  %2 = load %"class.std::move_iterator"** %1
  %3 = getelementptr inbounds %"class.std::move_iterator"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  ret %struct.Node** %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt13__copy_move_aILb1EPP4NodeS2_ET1_T0_S4_S3_(%struct.Node** %__first, %struct.Node** %__last, %struct.Node** %__result) #5 {
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
define linkonce_odr %struct.Node** @_ZSt12__niter_baseIPP4NodeENSt11_Niter_baseIT_E13iterator_typeES4_(%struct.Node** %__it) #5 {
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

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt16allocator_traitsISaIP4NodeEE8allocateERS2_m(%"class.std::allocator"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator"** %1, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.__gnu_cxx::new_allocator"*
  %5 = load i64* %2, align 8
  %6 = call %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %4, i64 %5, i8* null)
  ret %struct.Node** %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZN9__gnu_cxx13new_allocatorIP4NodeE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %struct.Node**
  ret %struct.Node** %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator"** %1
  ret i64 2305843009213693951
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #7

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIP4NodeSaIS1_EE8max_sizeEv(%"class.std::vector"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %1, align 8
  %2 = load %"class.std::vector"** %1
  %3 = bitcast %"class.std::vector"* %2 to %"struct.std::_Vector_base"*
  %4 = call %"class.std::allocator"* @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIP4NodeEE8max_sizeERKS2_(%"class.std::allocator"* %4) #0
  ret i64 %5
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8*) #7

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZSt3maxImERKT_S2_S2_(i64* %__a, i64* %__b) #3 {
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
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIP4NodeEE8max_sizeERKS2_(%"class.std::allocator"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %1, align 8
  %2 = load %"class.std::allocator"** %1, align 8
  %3 = bitcast %"class.std::allocator"* %2 to %"class.__gnu_cxx::new_allocator"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP4NodeE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator"* @_ZNKSt12_Vector_baseIP4NodeSaIS1_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %1, align 8
  %2 = load %"struct.std::_Vector_base"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<Node *, std::allocator<Node *> >::_Vector_impl"* %3 to %"class.std::allocator"*
  ret %"class.std::allocator"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIP4NodeE9constructIS2_JRKS2_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, %struct.Node** %__p, %struct.Node** %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %1, align 8
  store %struct.Node** %__p, %struct.Node*** %2, align 8
  store %struct.Node** %__args, %struct.Node*** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator"** %1
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8__fill_aIPmiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(i64* %__first, i64* %__last, i32* %__value) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  %__tmp = alloca i32, align 4
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i32* %__value, i32** %3, align 8
  %4 = load i32** %3, align 8
  %5 = load i32* %4, align 4
  store i32 %5, i32* %__tmp, align 4
  br label %6

; <label>:6                                       ; preds = %14, %0
  %7 = load i64** %1, align 8
  %8 = load i64** %2, align 8
  %9 = icmp ne i64* %7, %8
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i32* %__tmp, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64** %1, align 8
  store i64 %12, i64* %13, align 8
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i64** %1, align 8
  %16 = getelementptr inbounds i64* %15, i32 1
  store i64* %16, i64** %1, align 8
  br label %6

; <label>:17                                      ; preds = %6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i64* %__it.coerce) #5 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %6 = load i64** %5
  %7 = call i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEELb1EE7_S_baseES6_(i64* %6)
  ret i64* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEELb1EE7_S_baseES6_(i64* %__it.coerce) #3 align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %1
  %2 = call i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %__it) #0
  %3 = load i64** %2
  ret i64* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64** @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  ret i64** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %this, i64** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %2 = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %1, align 8
  store i64** %__i, i64*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i64*** %2, align 8
  %6 = load i64** %5, align 8
  store i64* %6, i64** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorImSaImEE4sizeEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  %2 = load %"class.std::vector.8"** %1
  %3 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %4, i32 0, i32 1
  %6 = load i64** %5, align 8
  %7 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.9"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i64** %9, align 8
  %11 = ptrtoint i64* %6 to i64
  %12 = ptrtoint i64* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorImSaImEE8capacityEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  %2 = load %"class.std::vector.8"** %1
  %3 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %4 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %4, i32 0, i32 2
  %6 = load i64** %5, align 8
  %7 = bitcast %"class.std::vector.8"* %2 to %"struct.std::_Vector_base.9"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.9"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i64** %9, align 8
  %11 = ptrtoint i64* %6 to i64
  %12 = ptrtoint i64* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_(%"class.std::vector.8"* %this, i64 %__n, i64* %__first.coerce, i64* %__last.coerce) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  %2 = alloca i64, align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__result = alloca i64*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %5
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %6
  %7 = load %"class.std::vector.8"** %1
  %8 = bitcast %"class.std::vector.8"* %7 to %"struct.std::_Vector_base.9"*
  %9 = load i64* %2, align 8
  %10 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.9"* %8, i64 %9)
  store i64* %10, i64** %__result, align 8
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %4 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 8, i1 false)
  %15 = load i64** %__result, align 8
  %16 = bitcast %"class.std::vector.8"* %7 to %"struct.std::_Vector_base.9"*
  %17 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %16) #0
  %18 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %19 = load i64** %18
  %20 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %21 = load i64** %20
  %22 = call i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E(i64* %19, i64* %21, i64* %15, %"class.std::allocator.10"* %17)
  %23 = load i64** %__result, align 8
  ret i64* %23
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNKSt6vectorImSaImEE5beginEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca %"class.std::vector.8"*, align 8
  %3 = alloca i64*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %2, align 8
  %4 = load %"class.std::vector.8"** %2
  %5 = bitcast %"class.std::vector.8"* %4 to %"struct.std::_Vector_base.9"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.9"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i64** %7, align 8
  store i64* %8, i64** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %1, i64** %3) #0
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %10 = load i64** %9
  ret i64* %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNKSt6vectorImSaImEE3endEv(%"class.std::vector.8"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca %"class.std::vector.8"*, align 8
  %3 = alloca i64*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %2, align 8
  %4 = load %"class.std::vector.8"** %2
  %5 = bitcast %"class.std::vector.8"* %4 to %"struct.std::_Vector_base.9"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.9"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %6, i32 0, i32 1
  %8 = load i64** %7, align 8
  store i64* %8, i64** %3
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %1, i64** %3) #0
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %10 = load i64** %9
  ret i64* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(i64* %__first, i64* %__last, %"class.std::allocator.10"*) #5 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %"class.std::allocator.10"*, align 8
  store i64* %__first, i64** %2, align 8
  store i64* %__last, i64** %3, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %4, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  call void @_ZSt8_DestroyIPmEvT_S1_(i64* %5, i64* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  %2 = load %"struct.std::_Vector_base.9"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.9"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.9"* %this, i64* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  store i64* %__p, i64** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"struct.std::_Vector_base.9"** %1
  %5 = load i64** %2, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %"struct.std::_Vector_base.9"* %4, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %8 to %"class.std::allocator.10"*
  %10 = load i64** %2, align 8
  %11 = load i64* %3, align 8
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.10"* %9, i64* %10, i64 %11)
  br label %12

; <label>:12                                      ; preds = %7, %0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEvT_S7_RSaIT0_E(i64* %__first.coerce, i64* %__last.coerce, %"class.std::allocator.10"*) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %5
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %6
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %2, align 8
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %12 = load i64** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %14 = load i64** %13
  call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_(i64* %12, i64* %14)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result.coerce) #5 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %7
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %8
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store i64* %__result.coerce, i64** %9
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %13 = load i64** %12
  %14 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i64* %13)
  %15 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  store i64* %14, i64** %15
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %5 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %5, i32 0, i32 0
  %19 = load i64** %18
  %20 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i64* %19)
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  store i64* %20, i64** %21
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 8, i1 false)
  %24 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %25 = load i64** %24
  %26 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %27 = load i64** %26
  %28 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %29 = load i64** %28
  %30 = call i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET1_T0_SB_SA_(i64* %25, i64* %27, i64* %29)
  %31 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  store i64* %30, i64** %31
  %32 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %33 = load i64** %32
  ret i64* %33
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %6)
  %8 = load i64** %3, align 8
  %9 = call i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %5, i64* %7, i64* %8)
  ret i64* %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E(i64* %__first, i64* %__last, i64* %__result, %"class.std::allocator.10"*) #5 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %"class.std::allocator.10"*, align 8
  store i64* %__first, i64** %2, align 8
  store i64* %__last, i64** %3, align 8
  store i64* %__result, i64** %4, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %5, align 8
  %6 = load i64** %2, align 8
  %7 = load i64** %3, align 8
  %8 = load i64** %4, align 8
  %9 = call i64* @_ZSt18uninitialized_copyIPmS0_ET0_T_S2_S1_(i64* %6, i64* %7, i64* %8)
  ret i64* %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt18uninitialized_copyIPmS0_ET0_T_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load i64** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPmS2_EET0_T_S4_S3_(i64* %4, i64* %5, i64* %6)
  ret i64* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPmS2_EET0_T_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #3 align 2 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZSt4copyIPmS0_ET0_T_S2_S1_(i64* %4, i64* %5, i64* %6)
  ret i64* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64** %2, align 8
  %7 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %6)
  %8 = load i64** %3, align 8
  %9 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %8)
  %10 = call i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %5, i64* %7, i64* %9)
  ret i64* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIPmENSt11_Miter_baseIT_E13iterator_typeES2_(i64* %__it) #5 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  %3 = call i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %2)
  ret i64* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %__it) #3 align 2 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  ret i64* %2
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(i64* %__first, i64* %__last, i64* %__result) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i64** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %4, i64* %5, i64* %6)
  ret i64* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %__it) #5 {
  %1 = alloca i64*, align 8
  store i64* %__it, i64** %1, align 8
  %2 = load i64** %1, align 8
  %3 = call i64* @_ZNSt10_Iter_baseIPmLb0EE7_S_baseES0_(i64* %2)
  ret i64* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %__first, i64* %__last, i64* %__result) #3 align 2 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %_Num = alloca i64, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  %4 = load i64** %2, align 8
  %5 = load i64** %1, align 8
  %6 = ptrtoint i64* %4 to i64
  %7 = ptrtoint i64* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 8
  store i64 %9, i64* %_Num, align 8
  %10 = load i64* %_Num, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %0
  %13 = load i64** %3, align 8
  %14 = bitcast i64* %13 to i8*
  %15 = load i64** %1, align 8
  %16 = bitcast i64* %15 to i8*
  %17 = load i64* %_Num, align 8
  %18 = mul i64 8, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %16, i64 %18, i32 8, i1 false)
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load i64** %3, align 8
  %21 = load i64* %_Num, align 8
  %22 = getelementptr inbounds i64* %20, i64 %21
  ret i64* %22
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET1_T0_SB_SA_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result.coerce) #5 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__result = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca i64*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %7
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__result, i32 0, i32 0
  store i64* %__result.coerce, i64** %8
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 8, i1 false)
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %12 = load i64** %11
  %13 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i64* %12)
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %4 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %17 = load i64** %16
  %18 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i64* %17)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 8, i32 8, i1 false)
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %22 = load i64** %21
  %23 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES8_(i64* %22)
  %24 = call i64* @_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_(i64* %13, i64* %18, i64* %23)
  store i64* %24, i64** %2
  call void @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %1, i64** %2) #0
  %25 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %26 = load i64** %25
  ret i64* %26
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i64* %__it.coerce) #5 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %3
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %2 to i8*
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 8, i1 false)
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %7 = load i64** %6
  %8 = call i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEELb0EE7_S_baseES7_(i64* %7)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  store i64* %8, i64** %9
  %10 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %11 = load i64** %10
  ret i64* %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEELb0EE7_S_baseES7_(i64* %__it.coerce) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %6 = load i64** %5
  ret i64* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_(i64* %__first, i64* %__last, i64* %__result) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %__simple = alloca i8, align 1
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  store i64* %__result, i64** %3, align 8
  store i8 1, i8* %__simple, align 1
  %4 = load i64** %1, align 8
  %5 = load i64** %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(i64* %4, i64* %5, i64* %6)
  ret i64* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i64* %__it.coerce) #5 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %2
  %3 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %1 to i8*
  %4 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %1, i32 0, i32 0
  %6 = load i64** %5
  %7 = call i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEELb1EE7_S_baseES7_(i64* %6)
  ret i64* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEELb1EE7_S_baseES7_(i64* %__it.coerce) #3 align 2 {
  %__it = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__it, i32 0, i32 0
  store i64* %__it.coerce, i64** %1
  %2 = call i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %__it) #0
  %3 = load i64** %2
  ret i64* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64** @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.17"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %this, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator.17"** %1
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  ret i64** %3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_(i64* %__first.coerce, i64* %__last.coerce) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %3
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %4
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %1 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 8, i1 false)
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 8, i1 false)
  %9 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  %10 = load i64** %9
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %12 = load i64** %11
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEEvT_S9_(i64* %10, i64* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEEvT_S9_(i64* %.coerce, i64* %.coerce1) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %1, i32 0, i32 0
  store i64* %.coerce, i64** %3
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  store i64* %.coerce1, i64** %4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%"class.std::allocator.10"* %__a, i64* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i64* %__p, i64** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.10"** %1, align 8
  %5 = bitcast %"class.std::allocator.10"* %4 to %"class.__gnu_cxx::new_allocator.11"*
  %6 = load i64** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.11"* %5, i64* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%"class.__gnu_cxx::new_allocator.11"* %this, i64* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store i64* %__p, i64** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.11"** %2
  %6 = load i64** %3, align 8
  %7 = bitcast i64* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIPmEvT_S1_(i64* %__first, i64* %__last) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64* %__last, i64** %2, align 8
  %3 = load i64** %1, align 8
  %4 = load i64** %2, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64* %3, i64* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(i64*, i64*) #3 align 2 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator.17"* %this, i64** %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.17"*, align 8
  %2 = alloca i64**, align 8
  store %"class.__gnu_cxx::__normal_iterator.17"* %this, %"class.__gnu_cxx::__normal_iterator.17"** %1, align 8
  store i64** %__i, i64*** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.17"** %1
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %5 = load i64*** %2, align 8
  %6 = load i64** %5, align 8
  store i64* %6, i64** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.9"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.9"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %7 to %"class.std::allocator.10"*
  %9 = load i64* %2, align 8
  %10 = call i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.10"* %8, i64 %9)
  br label %12

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i64* [ %10, %6 ], [ null, %11 ]
  ret i64* %13
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmmET0_T_SA_S9_RSaIT1_E(i64* %__first.coerce, i64* %__last.coerce, i64* %__result, %"class.std::allocator.10"*) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %2 = alloca i64*, align 8
  %3 = alloca %"class.std::allocator.10"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %7
  store i64* %__result, i64** %2, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %3, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %4 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %5 to i8*
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i64** %2, align 8
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %14 = load i64** %13
  %15 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %5, i32 0, i32 0
  %16 = load i64** %15
  %17 = call i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %14, i64* %16, i64* %12)
  ret i64* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %5
  store i64* %__result, i64** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i64** %1, align 8
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %12 = load i64** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %14 = load i64** %13
  %15 = call i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmEET0_T_SC_SB_(i64* %12, i64* %14, i64* %10)
  ret i64* %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmEET0_T_SC_SB_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #3 align 2 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca i64*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %5
  store i64* %__result, i64** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i64** %1, align 8
  %11 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %12 = load i64** %11
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %14 = load i64** %13
  %15 = call i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %12, i64* %14, i64* %10)
  ret i64* %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET0_T_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca i64*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %6 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %6
  %7 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %7
  store i64* %__result, i64** %1, align 8
  %8 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %11 = load i64** %10
  %12 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i64* %11)
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  store i64* %12, i64** %13
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %5 to i8*
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 8, i32 8, i1 false)
  %16 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %5, i32 0, i32 0
  %17 = load i64** %16
  %18 = call i64* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Miter_baseIT_E13iterator_typeES9_(i64* %17)
  %19 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  store i64* %18, i64** %19
  %20 = load i64** %1, align 8
  %21 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %22 = load i64** %21
  %23 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %4, i32 0, i32 0
  %24 = load i64** %23
  %25 = call i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET1_T0_SA_S9_(i64* %22, i64* %24, i64* %20)
  ret i64* %25
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEPmET1_T0_SA_S9_(i64* %__first.coerce, i64* %__last.coerce, i64* %__result) #5 {
  %__first = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %1 = alloca i64*, align 8
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.17", align 8
  %4 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__first, i32 0, i32 0
  store i64* %__first.coerce, i64** %4
  %5 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %__last, i32 0, i32 0
  store i64* %__last.coerce, i64** %5
  store i64* %__result, i64** %1, align 8
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %2 to i8*
  %7 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %2, i32 0, i32 0
  %9 = load i64** %8
  %10 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i64* %9)
  %11 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %3 to i8*
  %12 = bitcast %"class.__gnu_cxx::__normal_iterator.17"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.__gnu_cxx::__normal_iterator.17"* %3, i32 0, i32 0
  %14 = load i64** %13
  %15 = call i64* @_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEENSt11_Niter_baseIT_E13iterator_typeES9_(i64* %14)
  %16 = load i64** %1, align 8
  %17 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %16)
  %18 = call i64* @_ZSt13__copy_move_aILb0EPKmPmET1_T0_S4_S3_(i64* %10, i64* %15, i64* %17)
  ret i64* %18
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%"class.std::allocator.10"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.10"** %1, align 8
  %4 = bitcast %"class.std::allocator.10"* %3 to %"class.__gnu_cxx::new_allocator.11"*
  %5 = load i64* %2, align 8
  %6 = call i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.11"* %4, i64 %5, i8* null)
  ret i64* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.11"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.11"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i64*
  ret i64* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%"class.__gnu_cxx::new_allocator.11"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"** %1
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.5"* %__a, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.std::allocator.5"* %__a, %"class.std::allocator.5"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.std::allocator.5"** %1, align 8
  %5 = bitcast %"class.std::allocator.5"* %4 to %"class.__gnu_cxx::new_allocator.6"*
  %6 = load i32** %2, align 8
  %7 = load i32** %3, align 8
  %8 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %7) #0
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.6"* %5, i32* %6, i32* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_(%"class.std::vector.3"* %this, i32* %__args) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  %2 = alloca i32*, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca i32*, align 8
  %__new_finish = alloca i32*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  store i32* %__args, i32** %2, align 8
  %3 = load %"class.std::vector.3"** %1
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.3"* %3, i64 1, i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  store i64 %4, i64* %__len, align 8
  %5 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %6 = load i64* %__len, align 8
  %7 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.4"* %5, i64 %6)
  store i32* %7, i32** %__new_start, align 8
  %8 = load i32** %__new_start, align 8
  store i32* %8, i32** %__new_finish, align 8
  %9 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.4"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %10 to %"class.std::allocator.5"*
  %12 = load i32** %__new_start, align 8
  %13 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %3) #0
  %14 = getelementptr inbounds i32* %12, i64 %13
  %15 = load i32** %2, align 8
  %16 = call i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* %15) #0
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator.5"* %11, i32* %14, i32* %16)
  store i32* null, i32** %__new_finish, align 8
  %17 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %18 = getelementptr inbounds %"struct.std::_Vector_base.4"* %17, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %18, i32 0, i32 0
  %20 = load i32** %19, align 8
  %21 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %22 = getelementptr inbounds %"struct.std::_Vector_base.4"* %21, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %22, i32 0, i32 1
  %24 = load i32** %23, align 8
  %25 = load i32** %__new_start, align 8
  %26 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %27 = call %"class.std::allocator.5"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %26) #0
  %28 = call i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %20, i32* %24, i32* %25, %"class.std::allocator.5"* %27)
  store i32* %28, i32** %__new_finish, align 8
  %29 = load i32** %__new_finish, align 8
  %30 = getelementptr inbounds i32* %29, i32 1
  store i32* %30, i32** %__new_finish, align 8
  %31 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base.4"* %31, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %32, i32 0, i32 0
  %34 = load i32** %33, align 8
  %35 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base.4"* %35, i32 0, i32 0
  %37 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %36, i32 0, i32 1
  %38 = load i32** %37, align 8
  %39 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %40 = call %"class.std::allocator.5"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %39) #0
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %34, i32* %38, %"class.std::allocator.5"* %40)
  %41 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %42 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base.4"* %42, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %43, i32 0, i32 0
  %45 = load i32** %44, align 8
  %46 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base.4"* %46, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %47, i32 0, i32 2
  %49 = load i32** %48, align 8
  %50 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base.4"* %50, i32 0, i32 0
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %51, i32 0, i32 0
  %53 = load i32** %52, align 8
  %54 = ptrtoint i32* %49 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.4"* %41, i32* %45, i64 %57)
  %58 = load i32** %__new_start, align 8
  %59 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %60 = getelementptr inbounds %"struct.std::_Vector_base.4"* %59, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  %62 = load i32** %__new_finish, align 8
  %63 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %64 = getelementptr inbounds %"struct.std::_Vector_base.4"* %63, i32 0, i32 0
  %65 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %64, i32 0, i32 1
  store i32* %62, i32** %65, align 8
  %66 = load i32** %__new_start, align 8
  %67 = load i64* %__len, align 8
  %68 = getelementptr inbounds i32* %66, i64 %67
  %69 = bitcast %"class.std::vector.3"* %3 to %"struct.std::_Vector_base.4"*
  %70 = getelementptr inbounds %"struct.std::_Vector_base.4"* %69, i32 0, i32 0
  %71 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %70, i32 0, i32 2
  store i32* %68, i32** %71, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.3"* %this, i64 %__n, i8* %__s) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %__len = alloca i64, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i8* %__s, i8** %3, align 8
  %5 = load %"class.std::vector.3"** %1
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.3"* %5) #0
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %5) #0
  %8 = sub i64 %6, %7
  %9 = load i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load i8** %3, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %12) #10
  unreachable

; <label>:13                                      ; preds = %0
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %5) #0
  %15 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %5) #0
  store i64 %15, i64* %4
  %16 = call i64* @_ZSt3maxImERKT_S2_S2_(i64* %4, i64* %2)
  %17 = load i64* %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %__len, align 8
  %19 = load i64* %__len, align 8
  %20 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.3"* %5) #0
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %13
  %23 = load i64* %__len, align 8
  %24 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.3"* %5) #0
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %22, %13
  %27 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.3"* %5) #0
  br label %30

; <label>:28                                      ; preds = %22
  %29 = load i64* %__len, align 8
  br label %30

; <label>:30                                      ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.4"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.4"** %1
  %4 = load i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %"struct.std::_Vector_base.4"* %3, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %7 to %"class.std::allocator.5"*
  %9 = load i64* %2, align 8
  %10 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.5"* %8, i64 %9)
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
define linkonce_odr i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.5"* %__alloc) #5 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %"class.std::allocator.5"*, align 8
  %5 = alloca %"class.std::move_iterator.18", align 8
  %6 = alloca %"class.std::move_iterator.18", align 8
  store i32* %__first, i32** %1, align 8
  store i32* %__last, i32** %2, align 8
  store i32* %__result, i32** %3, align 8
  store %"class.std::allocator.5"* %__alloc, %"class.std::allocator.5"** %4, align 8
  %7 = load i32** %1, align 8
  %8 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %7)
  %9 = getelementptr %"class.std::move_iterator.18"* %5, i32 0, i32 0
  store i32* %8, i32** %9
  %10 = load i32** %2, align 8
  %11 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %10)
  %12 = getelementptr %"class.std::move_iterator.18"* %6, i32 0, i32 0
  store i32* %11, i32** %12
  %13 = load i32** %3, align 8
  %14 = load %"class.std::allocator.5"** %4, align 8
  %15 = getelementptr %"class.std::move_iterator.18"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = getelementptr %"class.std::move_iterator.18"* %6, i32 0, i32 0
  %18 = load i32** %17
  %19 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %16, i32* %18, i32* %13, %"class.std::allocator.5"* %14)
  ret i32* %19
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.5"*) #5 {
  %__first = alloca %"class.std::move_iterator.18", align 8
  %__last = alloca %"class.std::move_iterator.18", align 8
  %2 = alloca i32*, align 8
  %3 = alloca %"class.std::allocator.5"*, align 8
  %4 = alloca %"class.std::move_iterator.18", align 8
  %5 = alloca %"class.std::move_iterator.18", align 8
  %6 = getelementptr %"class.std::move_iterator.18"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %6
  %7 = getelementptr %"class.std::move_iterator.18"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %7
  store i32* %__result, i32** %2, align 8
  store %"class.std::allocator.5"* %0, %"class.std::allocator.5"** %3, align 8
  %8 = bitcast %"class.std::move_iterator.18"* %4 to i8*
  %9 = bitcast %"class.std::move_iterator.18"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = bitcast %"class.std::move_iterator.18"* %5 to i8*
  %11 = bitcast %"class.std::move_iterator.18"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 8, i1 false)
  %12 = load i32** %2, align 8
  %13 = getelementptr %"class.std::move_iterator.18"* %4, i32 0, i32 0
  %14 = load i32** %13
  %15 = getelementptr %"class.std::move_iterator.18"* %5, i32 0, i32 0
  %16 = load i32** %15
  %17 = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %14, i32* %16, i32* %12)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_(i32* %__i) #5 {
  %1 = alloca %"class.std::move_iterator.18", align 8
  %2 = alloca i32*, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load i32** %2, align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.18"* %1, i32* %3)
  %4 = getelementptr %"class.std::move_iterator.18"* %1, i32 0, i32 0
  %5 = load i32** %4
  ret i32* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.18"* %this, i32* %__i) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::move_iterator.18"*, align 8
  %2 = alloca i32*, align 8
  store %"class.std::move_iterator.18"* %this, %"class.std::move_iterator.18"** %1, align 8
  store i32* %__i, i32** %2, align 8
  %3 = load %"class.std::move_iterator.18"** %1
  %4 = getelementptr inbounds %"class.std::move_iterator.18"* %3, i32 0, i32 0
  %5 = load i32** %2, align 8
  store i32* %5, i32** %4, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #5 {
  %__first = alloca %"class.std::move_iterator.18", align 8
  %__last = alloca %"class.std::move_iterator.18", align 8
  %1 = alloca i32*, align 8
  %__assignable = alloca i8, align 1
  %2 = alloca %"class.std::move_iterator.18", align 8
  %3 = alloca %"class.std::move_iterator.18", align 8
  %4 = getelementptr %"class.std::move_iterator.18"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator.18"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  store i8 1, i8* %__assignable, align 1
  %6 = bitcast %"class.std::move_iterator.18"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.18"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator.18"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator.18"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator.18"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator.18"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #3 align 2 {
  %__first = alloca %"class.std::move_iterator.18", align 8
  %__last = alloca %"class.std::move_iterator.18", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator.18", align 8
  %3 = alloca %"class.std::move_iterator.18", align 8
  %4 = getelementptr %"class.std::move_iterator.18"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator.18"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator.18"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.18"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = bitcast %"class.std::move_iterator.18"* %3 to i8*
  %9 = bitcast %"class.std::move_iterator.18"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 8, i1 false)
  %10 = load i32** %1, align 8
  %11 = getelementptr %"class.std::move_iterator.18"* %2, i32 0, i32 0
  %12 = load i32** %11
  %13 = getelementptr %"class.std::move_iterator.18"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %12, i32* %14, i32* %10)
  ret i32* %15
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #5 {
  %__first = alloca %"class.std::move_iterator.18", align 8
  %__last = alloca %"class.std::move_iterator.18", align 8
  %1 = alloca i32*, align 8
  %2 = alloca %"class.std::move_iterator.18", align 8
  %3 = alloca %"class.std::move_iterator.18", align 8
  %4 = getelementptr %"class.std::move_iterator.18"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %4
  %5 = getelementptr %"class.std::move_iterator.18"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %5
  store i32* %__result, i32** %1, align 8
  %6 = bitcast %"class.std::move_iterator.18"* %2 to i8*
  %7 = bitcast %"class.std::move_iterator.18"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 8, i1 false)
  %8 = getelementptr %"class.std::move_iterator.18"* %2, i32 0, i32 0
  %9 = load i32** %8
  %10 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %9)
  %11 = bitcast %"class.std::move_iterator.18"* %3 to i8*
  %12 = bitcast %"class.std::move_iterator.18"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 8, i1 false)
  %13 = getelementptr %"class.std::move_iterator.18"* %3, i32 0, i32 0
  %14 = load i32** %13
  %15 = call i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %14)
  %16 = load i32** %1, align 8
  %17 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %10, i32* %15, i32* %16)
  ret i32* %17
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #5 {
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
define linkonce_odr i32* @_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_(i32* %__it.coerce) #5 {
  %__it = alloca %"class.std::move_iterator.18", align 8
  %1 = alloca %"class.std::move_iterator.18", align 8
  %2 = getelementptr %"class.std::move_iterator.18"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %2
  %3 = bitcast %"class.std::move_iterator.18"* %1 to i8*
  %4 = bitcast %"class.std::move_iterator.18"* %__it to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 8, i1 false)
  %5 = getelementptr %"class.std::move_iterator.18"* %1, i32 0, i32 0
  %6 = load i32** %5
  %7 = call i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %6)
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_(i32* %__it.coerce) #3 align 2 {
  %__it = alloca %"class.std::move_iterator.18", align 8
  %1 = getelementptr %"class.std::move_iterator.18"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %1
  %2 = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.18"* %__it)
  ret i32* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.18"* %this) #3 align 2 {
  %1 = alloca %"class.std::move_iterator.18"*, align 8
  store %"class.std::move_iterator.18"* %this, %"class.std::move_iterator.18"** %1, align 8
  %2 = load %"class.std::move_iterator.18"** %1
  %3 = getelementptr inbounds %"class.std::move_iterator.18"* %2, i32 0, i32 0
  %4 = load i32** %3, align 8
  ret i32* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #5 {
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
define linkonce_odr i32* @_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_(i32* %__it) #5 {
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

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.5"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.5"* %__a, %"class.std::allocator.5"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.5"** %1, align 8
  %4 = bitcast %"class.std::allocator.5"* %3 to %"class.__gnu_cxx::new_allocator.6"*
  %5 = load i64* %2, align 8
  %6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.6"* %4, i64 %5, i8* null)
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.6"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.6"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.6"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to i32*
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.6"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.6"** %1
  ret i64 4611686018427387903
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.3"* %this) #3 align 2 {
  %1 = alloca %"class.std::vector.3"*, align 8
  store %"class.std::vector.3"* %this, %"class.std::vector.3"** %1, align 8
  %2 = load %"class.std::vector.3"** %1
  %3 = bitcast %"class.std::vector.3"* %2 to %"struct.std::_Vector_base.4"*
  %4 = call %"class.std::allocator.5"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %3) #0
  %5 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.5"* %4) #0
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.5"* %__a) #3 align 2 {
  %1 = alloca %"class.std::allocator.5"*, align 8
  store %"class.std::allocator.5"* %__a, %"class.std::allocator.5"** %1, align 8
  %2 = load %"class.std::allocator.5"** %1, align 8
  %3 = bitcast %"class.std::allocator.5"* %2 to %"class.__gnu_cxx::new_allocator.6"*
  %4 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator.6"* %3) #0
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.5"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.4"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.4"*, align 8
  store %"struct.std::_Vector_base.4"* %this, %"struct.std::_Vector_base.4"** %1, align 8
  %2 = load %"struct.std::_Vector_base.4"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.4"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl"* %3 to %"class.std::allocator.5"*
  ret %"class.std::allocator.5"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.6"* %this, i32* %__p, i32* %__args) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.6"*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator.6"* %this, %"class.__gnu_cxx::new_allocator.6"** %1, align 8
  store i32* %__p, i32** %2, align 8
  store i32* %__args, i32** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.6"** %1
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
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE11lower_boundERS5_(%"class.std::map"* %this, %struct.Node** %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::map"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::map"* %this, %"class.std::map"** %2, align 8
  store %struct.Node** %__x, %struct.Node*** %3, align 8
  %4 = load %"class.std::map"** %2
  %5 = getelementptr inbounds %"class.std::map"* %4, i32 0, i32 0
  %6 = load %struct.Node*** %3, align 8
  %7 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11lower_boundERS3_(%"class.std::_Rb_tree"* %5, %struct.Node** %6)
  %8 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %8
  %9 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"** %9
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7, align 8
  %9 = icmp eq %"struct.std::_Rb_tree_node_base"* %5, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE3endEv(%"class.std::map"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"** %2
  %4 = getelementptr inbounds %"class.std::map"* %3, i32 0, i32 0
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %4) #0
  %6 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6
  %7 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt3mapIP4NodeiSt4lessIS1_ESaISt4pairIKS1_iEEE8key_compEv(%"class.std::map"* %this) #3 align 2 {
  %1 = alloca %"struct.std::less", align 1
  %2 = alloca %"class.std::map"*, align 8
  %3 = alloca %"struct.std::less", align 1
  store %"class.std::map"* %this, %"class.std::map"** %2, align 8
  %4 = load %"class.std::map"** %2
  %5 = getelementptr inbounds %"class.std::map"* %4, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8key_compEv(%"class.std::_Rb_tree"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %this, %struct.Node** %__x, %struct.Node** %__y) #3 align 2 {
  %1 = alloca %"struct.std::less"*, align 8
  %2 = alloca %struct.Node**, align 8
  %3 = alloca %struct.Node**, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %1, align 8
  store %struct.Node** %__x, %struct.Node*** %2, align 8
  store %struct.Node** %__y, %struct.Node*** %3, align 8
  %4 = load %"struct.std::less"** %1
  %5 = load %struct.Node*** %2, align 8
  %6 = load %struct.Node** %5, align 8
  %7 = load %struct.Node*** %3, align 8
  %8 = load %struct.Node** %7, align 8
  %9 = icmp ult %struct.Node* %6, %8
  ret i1 %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  %6 = call %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %5)
  ret %"struct.std::pair"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::piecewise_construct_t"* %__args, %"class.std::tuple"* %__args1, %"class.std::tuple.19"* %__args2) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  %5 = alloca %"class.std::tuple.19"*, align 8
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__res = alloca %"struct.std::pair.20", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %7 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::_Rb_tree_node_base"** %7
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %3, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %4, align 8
  store %"class.std::tuple.19"* %__args2, %"class.std::tuple.19"** %5, align 8
  %8 = load %"class.std::_Rb_tree"** %2
  %9 = load %"struct.std::piecewise_construct_t"** %3, align 8
  %10 = call %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %9) #0
  %11 = load %"class.std::tuple"** %4, align 8
  %12 = call %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %11) #0
  %13 = load %"class.std::tuple.19"** %5, align 8
  %14 = call %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %13) #0
  %15 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEEPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree"* %8, %"struct.std::piecewise_construct_t"* %10, %"class.std::tuple"* %12, %"class.std::tuple.19"* %14)
  store %"struct.std::_Rb_tree_node"* %15, %"struct.std::_Rb_tree_node"** %__z, align 8
  %16 = bitcast %"struct.std::_Rb_tree_const_iterator"* %6 to i8*
  %17 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 8, i32 8, i1 false)
  %18 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %19 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %18)
  %20 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"** %20
  %22 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node_base"* %21, %struct.Node** %19)
  %23 = bitcast %"struct.std::pair.20"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %24 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %23, i32 0, i32 0
  %25 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %22, 0
  store %"struct.std::_Rb_tree_node_base"* %25, %"struct.std::_Rb_tree_node_base"** %24, align 1
  %26 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %23, i32 0, i32 1
  %27 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %22, 1
  store %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node_base"** %26, align 1
  %28 = getelementptr inbounds %"struct.std::pair.20"* %__res, i32 0, i32 1
  %29 = load %"struct.std::_Rb_tree_node_base"** %28, align 8
  %30 = icmp ne %"struct.std::_Rb_tree_node_base"* %29, null
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %0
  %32 = getelementptr inbounds %"struct.std::pair.20"* %__res, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"** %32, align 8
  %34 = getelementptr inbounds %"struct.std::pair.20"* %__res, i32 0, i32 1
  %35 = load %"struct.std::_Rb_tree_node_base"** %34, align 8
  %36 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  %37 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node_base"* %33, %"struct.std::_Rb_tree_node_base"* %35, %"struct.std::_Rb_tree_node"* %36)
  %38 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %38
  br label %45

; <label>:39                                      ; preds = %0
  %40 = load %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %8, %"struct.std::_Rb_tree_node"* %40) #0
  %41 = getelementptr inbounds %"struct.std::pair.20"* %__res, i32 0, i32 0
  %42 = load %"struct.std::_Rb_tree_node_base"** %41, align 8
  %43 = bitcast %"struct.std::_Rb_tree_node_base"* %42 to %"struct.std::_Rb_tree_node"*
  %44 = bitcast %"struct.std::_Rb_tree_node"* %43 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %44) #0
  br label %45

; <label>:45                                      ; preds = %39, %31
  %46 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %47 = load %"struct.std::_Rb_tree_node_base"** %46
  ret %"struct.std::_Rb_tree_node_base"* %47
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKP4NodeiEEC2ERKSt17_Rb_tree_iteratorIS4_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* %__it) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_iterator"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5tupleIJRKP4NodeEEC2ES3_(%"class.std::tuple"* %this, %struct.Node** %__elements) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::tuple"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %1, align 8
  store %struct.Node** %__elements, %struct.Node*** %2, align 8
  %3 = load %"class.std::tuple"** %1
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = load %struct.Node*** %2, align 8
  call void @_ZNSt11_Tuple_implILm0EJRKP4NodeEEC2ES3_(%"struct.std::_Tuple_impl"* %4, %struct.Node** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJRKP4NodeEEC2ES3_(%"struct.std::_Tuple_impl"* %this, %struct.Node** %__head) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Tuple_impl"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %1, align 8
  store %struct.Node** %__head, %struct.Node*** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"** %1
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base"*
  %5 = load %struct.Node*** %2, align 8
  call void @_ZNSt10_Head_baseILm0ERKP4NodeLb0EEC2ES3_(%"struct.std::_Head_base"* %4, %struct.Node** %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt10_Head_baseILm0ERKP4NodeLb0EEC2ES3_(%"struct.std::_Head_base"* %this, %struct.Node** %__h) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Head_base"*, align 8
  %2 = alloca %struct.Node**, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %1, align 8
  store %struct.Node** %__h, %struct.Node*** %2, align 8
  %3 = load %"struct.std::_Head_base"** %1
  %4 = getelementptr inbounds %"struct.std::_Head_base"* %3, i32 0, i32 0
  %5 = load %struct.Node*** %2, align 8
  store %struct.Node** %5, %struct.Node*** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEEPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::piecewise_construct_t"* %__args, %"class.std::tuple"* %__args1, %"class.std::tuple.19"* %__args2) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %3 = alloca %"class.std::tuple"*, align 8
  %4 = alloca %"class.std::tuple.19"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %2, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %3, align 8
  store %"class.std::tuple.19"* %__args2, %"class.std::tuple.19"** %4, align 8
  %5 = load %"class.std::_Rb_tree"** %1
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %5)
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %7 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %8 = load %"struct.std::piecewise_construct_t"** %2, align 8
  %9 = call %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %8) #0
  %10 = load %"class.std::tuple"** %3, align 8
  %11 = call %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %10) #0
  %12 = load %"class.std::tuple.19"** %4, align 8
  %13 = call %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %12) #0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree"* %5, %"struct.std::_Rb_tree_node"* %7, %"struct.std::piecewise_construct_t"* %9, %"class.std::tuple"* %11, %"class.std::tuple.19"* %13)
  %14 = load %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %__t) #3 {
  %1 = alloca %"struct.std::piecewise_construct_t"*, align 8
  store %"struct.std::piecewise_construct_t"* %__t, %"struct.std::piecewise_construct_t"** %1, align 8
  %2 = load %"struct.std::piecewise_construct_t"** %1, align 8
  ret %"struct.std::piecewise_construct_t"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %__t) #3 {
  %1 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %1, align 8
  %2 = load %"class.std::tuple"** %1, align 8
  ret %"class.std::tuple"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %__t) #3 {
  %1 = alloca %"class.std::tuple.19"*, align 8
  store %"class.std::tuple.19"* %__t, %"class.std::tuple.19"** %1, align 8
  %2 = load %"class.std::tuple.19"** %1, align 8
  ret %"class.std::tuple.19"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::pair.20", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %struct.Node**, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %9 = getelementptr %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %9
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %10 = load %"class.std::_Rb_tree"** %2
  %11 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKP4NodeiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position) #0
  %12 = getelementptr %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %12
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"** %13, align 8
  %15 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %10) #0
  %16 = bitcast %"struct.std::_Rb_tree_node"* %15 to %"struct.std::_Rb_tree_node_base"*
  %17 = icmp eq %"struct.std::_Rb_tree_node_base"* %14, %16
  br i1 %17, label %18, label %39

; <label>:18                                      ; preds = %0
  %19 = call i64 @_ZNKSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4sizeEv(%"class.std::_Rb_tree"* %10) #0
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %31

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %23 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %22, i32 0, i32 0
  %24 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %10) #0
  %25 = load %"struct.std::_Rb_tree_node_base"** %24
  %26 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25)
  %27 = load %struct.Node*** %3, align 8
  %28 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %23, %struct.Node** %26, %struct.Node** %27)
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %21
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %4
  %30 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %10) #0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %4, %"struct.std::_Rb_tree_node_base"** %30)
  br label %132

; <label>:31                                      ; preds = %21, %18
  %32 = load %struct.Node*** %3, align 8
  %33 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %10, %struct.Node** %32)
  %34 = bitcast %"struct.std::pair.20"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %35 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %34, i32 0, i32 0
  %36 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 0
  store %"struct.std::_Rb_tree_node_base"* %36, %"struct.std::_Rb_tree_node_base"** %35, align 1
  %37 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %34, i32 0, i32 1
  %38 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %33, 1
  store %"struct.std::_Rb_tree_node_base"* %38, %"struct.std::_Rb_tree_node_base"** %37, align 1
  br label %132

; <label>:39                                      ; preds = %0
  %40 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %41 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %40, i32 0, i32 0
  %42 = load %struct.Node*** %3, align 8
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %44 = load %"struct.std::_Rb_tree_node_base"** %43, align 8
  %45 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %44)
  %46 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %41, %struct.Node** %42, %struct.Node** %45)
  br i1 %46, label %47, label %85

; <label>:47                                      ; preds = %39
  %48 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %49 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 8, i32 8, i1 false)
  %50 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %51 = load %"struct.std::_Rb_tree_node_base"** %50, align 8
  %52 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %10) #0
  %53 = load %"struct.std::_Rb_tree_node_base"** %52
  %54 = icmp eq %"struct.std::_Rb_tree_node_base"* %51, %53
  br i1 %54, label %55, label %58

; <label>:55                                      ; preds = %47
  %56 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %10) #0
  %57 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %10) #0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %56, %"struct.std::_Rb_tree_node_base"** %57)
  br label %132

; <label>:58                                      ; preds = %47
  %59 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %60 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %59, i32 0, i32 0
  %61 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__before) #0
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %61, i32 0, i32 0
  %63 = load %"struct.std::_Rb_tree_node_base"** %62, align 8
  %64 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %63)
  %65 = load %struct.Node*** %3, align 8
  %66 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %60, %struct.Node** %64, %struct.Node** %65)
  br i1 %66, label %67, label %77

; <label>:67                                      ; preds = %58
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %69 = load %"struct.std::_Rb_tree_node_base"** %68, align 8
  %70 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %69) #0
  %71 = icmp eq %"struct.std::_Rb_tree_node"* %70, null
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %67
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %5, %"struct.std::_Rb_tree_node_base"** %73)
  br label %132

; <label>:74                                      ; preds = %67
  %75 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %76 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %75, %"struct.std::_Rb_tree_node_base"** %76)
  br label %132

; <label>:77                                      ; preds = %58
  %78 = load %struct.Node*** %3, align 8
  %79 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %10, %struct.Node** %78)
  %80 = bitcast %"struct.std::pair.20"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %81 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %80, i32 0, i32 0
  %82 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %79, 0
  store %"struct.std::_Rb_tree_node_base"* %82, %"struct.std::_Rb_tree_node_base"** %81, align 1
  %83 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %80, i32 0, i32 1
  %84 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %79, 1
  store %"struct.std::_Rb_tree_node_base"* %84, %"struct.std::_Rb_tree_node_base"** %83, align 1
  br label %132

; <label>:85                                      ; preds = %39
  %86 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %86, i32 0, i32 0
  %88 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %89 = load %"struct.std::_Rb_tree_node_base"** %88, align 8
  %90 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %89)
  %91 = load %struct.Node*** %3, align 8
  %92 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %87, %struct.Node** %90, %struct.Node** %91)
  br i1 %92, label %93, label %130

; <label>:93                                      ; preds = %85
  %94 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %95 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 8, i32 8, i1 false)
  %96 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %97 = load %"struct.std::_Rb_tree_node_base"** %96, align 8
  %98 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %10) #0
  %99 = load %"struct.std::_Rb_tree_node_base"** %98
  %100 = icmp eq %"struct.std::_Rb_tree_node_base"* %97, %99
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %93
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %6
  %102 = call %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %10) #0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %6, %"struct.std::_Rb_tree_node_base"** %102)
  br label %132

; <label>:103                                     ; preds = %93
  %104 = getelementptr inbounds %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %105 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %104, i32 0, i32 0
  %106 = load %struct.Node*** %3, align 8
  %107 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEppEv(%"struct.std::_Rb_tree_iterator"* %__after) #0
  %108 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %107, i32 0, i32 0
  %109 = load %"struct.std::_Rb_tree_node_base"** %108, align 8
  %110 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %109)
  %111 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %105, %struct.Node** %106, %struct.Node** %110)
  br i1 %111, label %112, label %122

; <label>:112                                     ; preds = %103
  %113 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %114 = load %"struct.std::_Rb_tree_node_base"** %113, align 8
  %115 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %114) #0
  %116 = icmp eq %"struct.std::_Rb_tree_node"* %115, null
  br i1 %116, label %117, label %119

; <label>:117                                     ; preds = %112
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %7
  %118 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %7, %"struct.std::_Rb_tree_node_base"** %118)
  br label %132

; <label>:119                                     ; preds = %112
  %120 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %121 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %120, %"struct.std::_Rb_tree_node_base"** %121)
  br label %132

; <label>:122                                     ; preds = %103
  %123 = load %struct.Node*** %3, align 8
  %124 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %10, %struct.Node** %123)
  %125 = bitcast %"struct.std::pair.20"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %126 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %125, i32 0, i32 0
  %127 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %124, 0
  store %"struct.std::_Rb_tree_node_base"* %127, %"struct.std::_Rb_tree_node_base"** %126, align 1
  %128 = getelementptr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %125, i32 0, i32 1
  %129 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %124, 1
  store %"struct.std::_Rb_tree_node_base"* %129, %"struct.std::_Rb_tree_node_base"** %128, align 1
  br label %132

; <label>:130                                     ; preds = %85
  %131 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %131, %"struct.std::_Rb_tree_node_base"** %8)
  br label %132

; <label>:132                                     ; preds = %130, %122, %119, %117, %101, %77, %74, %72, %55, %31, %29
  %133 = bitcast %"struct.std::pair.20"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %134 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %133, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %134
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %2 = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %4 = call %"struct.std::pair"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %3)
  %5 = call %struct.Node** @_ZNKSt10_Select1stISt4pairIKP4NodeiEEclERKS4_(%"struct.std::_Select1st"* %2, %"struct.std::pair"* %4)
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node"* %__z) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__insert_left = alloca i8, align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %__z, %"struct.std::_Rb_tree_node"** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  %7 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %8 = icmp ne %"struct.std::_Rb_tree_node_base"* %7, null
  br i1 %8, label %22, label %9

; <label>:9                                       ; preds = %0
  %10 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %11 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %6) #0
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = icmp eq %"struct.std::_Rb_tree_node_base"* %10, %12
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %15, i32 0, i32 0
  %17 = load %"struct.std::_Rb_tree_node"** %5, align 8
  %18 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %17)
  %19 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %20 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %19)
  %21 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %16, %struct.Node** %18, %struct.Node** %20)
  br label %22

; <label>:22                                      ; preds = %14, %9, %0
  %23 = phi i1 [ true, %9 ], [ true, %0 ], [ %21, %14 ]
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %__insert_left, align 1
  %25 = load i8* %__insert_left, align 1
  %26 = trunc i8 %25 to i1
  %27 = load %"struct.std::_Rb_tree_node"** %5, align 8
  %28 = bitcast %"struct.std::_Rb_tree_node"* %27 to %"struct.std::_Rb_tree_node_base"*
  %29 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  %30 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %31 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %30, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %26, %"struct.std::_Rb_tree_node_base"* %28, %"struct.std::_Rb_tree_node_base"* %29, %"struct.std::_Rb_tree_node_base"* %31) #0
  %32 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %33 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %32, i32 0, i32 2
  %34 = load i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %"struct.std::_Rb_tree_node"** %5, align 8
  %37 = bitcast %"struct.std::_Rb_tree_node"* %36 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %37) #0
  %38 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %39 = load %"struct.std::_Rb_tree_node_base"** %38
  ret %"struct.std::_Rb_tree_node_base"* %39
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %4) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %5) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"** %1
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = call %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %5)
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE7destroyIS5_EEvRS7_PT_(%"class.std::allocator.0"* %4, %"struct.std::pair"* %6)
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  %4 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %3) #0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE10deallocateERS7_PS6_m(%"class.std::allocator.0"* %4, %"struct.std::_Rb_tree_node"* %5, i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE10deallocateERS7_PS6_m(%"class.std::allocator.0"* %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %2, align 8
  store i64 %__n, i64* %3, align 8
  %4 = load %"class.std::allocator.0"** %1, align 8
  %5 = bitcast %"class.std::allocator.0"* %4 to %"class.__gnu_cxx::new_allocator.1"*
  %6 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %7 = load i64* %3, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE10deallocateEPS7_m(%"class.__gnu_cxx::new_allocator.1"* %5, %"struct.std::_Rb_tree_node"* %6, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = bitcast %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3 to %"class.std::allocator.0"*
  ret %"class.std::allocator.0"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE10deallocateEPS7_m(%"class.__gnu_cxx::new_allocator.1"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %3, align 8
  store i64 %0, i64* %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to i8*
  call void @_ZdlPv(i8* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE7destroyIS5_EEvRS7_PT_(%"class.std::allocator.0"* %__a, %"struct.std::pair"* %__p) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load %"struct.std::pair"** %2, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %4, %"struct.std::pair"* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %2, i32 0, i32 1
  %4 = call %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #0
  ret %"struct.std::pair"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = call i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %2) #0
  %4 = bitcast i8* %3 to %"struct.std::pair"*
  ret %"struct.std::pair"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf"* %2, i32 0, i32 0
  %4 = bitcast [16 x i8]* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE7destroyIS6_EEvPT_(%"class.__gnu_cxx::new_allocator.1"* %this, %"struct.std::pair"* %__p) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %4 = load %"struct.std::pair"** %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %2 = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %4 = call %"struct.std::pair"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %3)
  %5 = call %struct.Node** @_ZNKSt10_Select1stISt4pairIKP4NodeiEEclERKS4_(%"struct.std::_Select1st"* %2, %"struct.std::pair"* %4)
  ret %struct.Node** %5
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*) #2

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNKSt10_Select1stISt4pairIKP4NodeiEEclERKS4_(%"struct.std::_Select1st"* %this, %"struct.std::pair"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Select1st"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Select1st"* %this, %"struct.std::_Select1st"** %1, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %2, align 8
  %3 = load %"struct.std::_Select1st"** %1
  %4 = load %"struct.std::pair"** %2, align 8
  %5 = getelementptr inbounds %"struct.std::pair"* %4, i32 0, i32 0
  ret %struct.Node** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = bitcast %"struct.std::_Rb_tree_node_base"* %2 to %"struct.std::_Rb_tree_node"*
  %4 = call %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %3)
  ret %"struct.std::pair"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node"* %2, i32 0, i32 1
  %4 = call %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %3) #0
  ret %"struct.std::pair"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = call i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %2) #0
  %4 = bitcast i8* %3 to %"struct.std::pair"*
  ret %"struct.std::pair"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKP4NodeiEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #3 align 2 {
  %1 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %1, align 8
  %2 = load %"struct.__gnu_cxx::__aligned_membuf"** %1
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf"* %2, i32 0, i32 0
  %4 = bitcast [16 x i8]* %3 to i8*
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::pair"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_valueEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"** %1, align 8
  %3 = call %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %2)
  ret %"struct.std::pair"* %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKP4NodeiEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_const_iterator"** %2
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"** %4, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %5) #0
  %6 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6
  ret %"struct.std::_Rb_tree_node_base"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNKSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4sizeEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3, i32 0, i32 2
  %5 = load i64* %4, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.20"* %this, %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.20"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.20"* %this, %"struct.std::pair.20"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %4 = load %"struct.std::pair.20"** %1
  %5 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %8 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 1
  %9 = load %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %10 = call %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %9) #0
  %11 = load %"struct.std::_Rb_tree_node_base"** %10
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(%"class.std::_Rb_tree"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::pair.20", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %struct.Node**, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  %7 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %6) #0
  store %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %6) #0
  store %"struct.std::_Rb_tree_node"* %8, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %9

; <label>:9                                       ; preds = %31, %0
  %10 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %11 = icmp ne %"struct.std::_Rb_tree_node"* %10, null
  br i1 %11, label %12, label %33

; <label>:12                                      ; preds = %9
  %13 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %15 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %14, i32 0, i32 0
  %16 = load %struct.Node*** %3, align 8
  %17 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %18 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %17)
  %19 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %15, %struct.Node** %16, %struct.Node** %18)
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %__comp, align 1
  %21 = load i8* %__comp, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %12
  %24 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %25 = bitcast %"struct.std::_Rb_tree_node"* %24 to %"struct.std::_Rb_tree_node_base"*
  %26 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25) #0
  br label %31

; <label>:27                                      ; preds = %12
  %28 = load %"struct.std::_Rb_tree_node"** %__x, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  %30 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %29) #0
  br label %31

; <label>:31                                      ; preds = %27, %23
  %32 = phi %"struct.std::_Rb_tree_node"* [ %26, %23 ], [ %30, %27 ]
  store %"struct.std::_Rb_tree_node"* %32, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %9

; <label>:33                                      ; preds = %9
  %34 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  %35 = bitcast %"struct.std::_Rb_tree_node"* %34 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node_base"* %35) #0
  %36 = load i8* %__comp, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %46

; <label>:38                                      ; preds = %33
  %39 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv(%"class.std::_Rb_tree"* %6) #0
  %40 = getelementptr %"struct.std::_Rb_tree_iterator"* %4, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %40
  %41 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEeqERKS5_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* %4) #0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %38
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKP4NodeiEESB_vEEOT_OT0_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y)
  br label %57

; <label>:43                                      ; preds = %38
  %44 = call %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEmmEv(%"struct.std::_Rb_tree_iterator"* %__j) #0
  br label %45

; <label>:45                                      ; preds = %43
  br label %46

; <label>:46                                      ; preds = %45, %33
  %47 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %48 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %47, i32 0, i32 0
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %50 = load %"struct.std::_Rb_tree_node_base"** %49, align 8
  %51 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %50)
  %52 = load %struct.Node*** %3, align 8
  %53 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %48, %struct.Node** %51, %struct.Node** %52)
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %46
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKP4NodeiEESB_vEEOT_OT0_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y)
  br label %57

; <label>:55                                      ; preds = %46
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.20"* %1, %"struct.std::_Rb_tree_node_base"** %56, %"struct.std::_Rb_tree_node_base"** %5)
  br label %57

; <label>:57                                      ; preds = %55, %54, %42
  %58 = bitcast %"struct.std::pair.20"* %1 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %59 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %58, align 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %59
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.20"* %this, %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.20"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.20"* %this, %"struct.std::pair.20"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %4 = load %"struct.std::pair.20"** %1
  %5 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %7 = call %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %6) #0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %9 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %11 = call %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %10) #0
  %12 = load %"struct.std::_Rb_tree_node_base"** %11
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #11
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 3
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_iterator"** %1
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #11
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret %"struct.std::_Rb_tree_iterator"* %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.20"* %this, %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.20"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.20"* %this, %"struct.std::pair.20"** %1, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %2, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %4 = load %"struct.std::pair.20"** %1
  %5 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*** %2, align 8
  %7 = call %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %6) #0
  %8 = load %"struct.std::_Rb_tree_node_base"** %7
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %9 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*** %3, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %__t, %"struct.std::_Rb_tree_node_base"*** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"*** %1, align 8
  ret %"struct.std::_Rb_tree_node_base"** %2
}

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: nounwind readonly
declare %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #8

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %3, i32 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  %6 = load %"struct.std::_Rb_tree_node_base"** %5, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node_base"* %6 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %2, i32 0, i32 2
  %4 = load %"struct.std::_Rb_tree_node_base"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node_base"* %4 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %5
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE5beginEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %4, i32 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 2
  %7 = load %"struct.std::_Rb_tree_node_base"** %6, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %7) #0
  %8 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"** %8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKP4NodeiEESB_vEEOT_OT0_(%"struct.std::pair.20"* %this, %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"** %__y) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair.20"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"**, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::pair.20"* %this, %"struct.std::pair.20"** %1, align 8
  store %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"*** %2, align 8
  store %"struct.std::_Rb_tree_node"** %__y, %"struct.std::_Rb_tree_node"*** %3, align 8
  %4 = load %"struct.std::pair.20"** %1
  %5 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node"*** %2, align 8
  %7 = call %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKP4NodeiEEEOT_RNSt16remove_referenceIS9_E4typeE(%"struct.std::_Rb_tree_node"** %6) #0
  %8 = load %"struct.std::_Rb_tree_node"** %7
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %10 = getelementptr inbounds %"struct.std::pair.20"* %4, i32 0, i32 1
  %11 = load %"struct.std::_Rb_tree_node"*** %3, align 8
  %12 = call %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKP4NodeiEEEOT_RNSt16remove_referenceIS9_E4typeE(%"struct.std::_Rb_tree_node"** %11) #0
  %13 = load %"struct.std::_Rb_tree_node"** %12
  %14 = bitcast %"struct.std::_Rb_tree_node"* %13 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKP4NodeiEEEOT_RNSt16remove_referenceIS9_E4typeE(%"struct.std::_Rb_tree_node"** %__t) #3 {
  %1 = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %__t, %"struct.std::_Rb_tree_node"*** %1, align 8
  %2 = load %"struct.std::_Rb_tree_node"*** %1, align 8
  ret %"struct.std::_Rb_tree_node"** %2
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %2) #0
  %4 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE8allocateERS7_m(%"class.std::allocator.0"* %3, i64 1)
  ret %"struct.std::_Rb_tree_node"* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESF_IJEEEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, %"struct.std::piecewise_construct_t"* %__args, %"class.std::tuple"* %__args1, %"class.std::tuple.19"* %__args2) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  %5 = alloca %"class.std::tuple.19"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %2, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %3, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %4, align 8
  store %"class.std::tuple.19"* %__args2, %"class.std::tuple.19"** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %1
  %7 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to i8*
  %9 = icmp eq i8* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %0
  %11 = bitcast i8* %8 to %"struct.std::_Rb_tree_node"*
  br label %12

; <label>:12                                      ; preds = %10, %0
  %13 = phi %"struct.std::_Rb_tree_node"* [ %11, %10 ], [ null, %0 ]
  %14 = call %"class.std::allocator.0"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %6) #0
  %15 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %16 = call %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKP4NodeiEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %15)
  %17 = load %"struct.std::piecewise_construct_t"** %3, align 8
  %18 = call %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %17) #0
  %19 = load %"class.std::tuple"** %4, align 8
  %20 = call %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %19) #0
  %21 = load %"class.std::tuple.19"** %5, align 8
  %22 = call %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %21) #0
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJRS4_EESD_IJEEEEEvRS7_PT_DpOT0_(%"class.std::allocator.0"* %14, %"struct.std::pair"* %16, %"struct.std::piecewise_construct_t"* %18, %"class.std::tuple"* %20, %"class.std::tuple.19"* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJRS4_EESD_IJEEEEEvRS7_PT_DpOT0_(%"class.std::allocator.0"* %__a, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* %__args, %"class.std::tuple"* %__args1, %"class.std::tuple.19"* %__args2) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  %5 = alloca %"class.std::tuple.19"*, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %3, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %4, align 8
  store %"class.std::tuple.19"* %__args2, %"class.std::tuple.19"** %5, align 8
  %6 = load %"class.std::allocator.0"** %1, align 8
  %7 = bitcast %"class.std::allocator.0"* %6 to %"class.__gnu_cxx::new_allocator.1"*
  %8 = load %"struct.std::pair"** %2, align 8
  %9 = load %"struct.std::piecewise_construct_t"** %3, align 8
  %10 = call %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %9) #0
  %11 = load %"class.std::tuple"** %4, align 8
  %12 = call %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %11) #0
  %13 = load %"class.std::tuple.19"** %5, align 8
  %14 = call %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %13) #0
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE9constructIS6_JRKSt21piecewise_construct_tSt5tupleIJRS5_EESD_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %7, %"struct.std::pair"* %8, %"struct.std::piecewise_construct_t"* %10, %"class.std::tuple"* %12, %"class.std::tuple.19"* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE9constructIS6_JRKSt21piecewise_construct_tSt5tupleIJRS5_EESD_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.1"* %this, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* %__args, %"class.std::tuple"* %__args1, %"class.std::tuple.19"* %__args2) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %2 = alloca %"struct.std::pair"*, align 8
  %3 = alloca %"struct.std::piecewise_construct_t"*, align 8
  %4 = alloca %"class.std::tuple"*, align 8
  %5 = alloca %"class.std::tuple.19"*, align 8
  %6 = alloca %"struct.std::piecewise_construct_t", align 1
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.19", align 1
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %2, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %3, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %4, align 8
  store %"class.std::tuple.19"* %__args2, %"class.std::tuple.19"** %5, align 8
  %9 = load %"class.__gnu_cxx::new_allocator.1"** %1
  %10 = load %"struct.std::pair"** %2, align 8
  %11 = bitcast %"struct.std::pair"* %10 to i8*
  %12 = icmp eq i8* %11, null
  br i1 %12, label %25, label %13

; <label>:13                                      ; preds = %0
  %14 = bitcast i8* %11 to %"struct.std::pair"*
  %15 = load %"struct.std::piecewise_construct_t"** %3, align 8
  %16 = call %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* %15) #0
  %17 = load %"class.std::tuple"** %4, align 8
  %18 = call %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKP4NodeEEEOT_RNSt16remove_referenceIS6_E4typeE(%"class.std::tuple"* %17) #0
  call void @_ZNSt5tupleIJRKP4NodeEEC2EOS4_(%"class.std::tuple"* %7, %"class.std::tuple"* %18) #0
  %19 = load %"class.std::tuple.19"** %5, align 8
  %20 = call %"class.std::tuple.19"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.19"* %19) #0
  %21 = getelementptr %"class.std::tuple"* %7, i32 0, i32 0
  %22 = getelementptr %"struct.std::_Tuple_impl"* %21, i32 0, i32 0
  %23 = getelementptr %"struct.std::_Head_base"* %22, i32 0, i32 0
  %24 = load %struct.Node*** %23
  call void @_ZNSt4pairIKP4NodeiEC2IJRS2_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES7_IJDpT0_EE(%"struct.std::pair"* %14, %struct.Node** %24)
  br label %25

; <label>:25                                      ; preds = %13, %0
  %26 = phi %"struct.std::pair"* [ %14, %13 ], [ null, %0 ]
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKP4NodeiEC2IJRS2_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES7_IJDpT0_EE(%"struct.std::pair"* %this, %struct.Node** %__first.coerce) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca %"struct.std::piecewise_construct_t", align 1
  %__first = alloca %"class.std::tuple", align 8
  %__second = alloca %"class.std::tuple.19", align 1
  %3 = alloca %"struct.std::_Index_tuple", align 1
  %4 = alloca %"struct.std::_Index_tuple.21", align 1
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  %5 = getelementptr %"class.std::tuple"* %__first, i32 0, i32 0
  %6 = getelementptr %"struct.std::_Tuple_impl"* %5, i32 0, i32 0
  %7 = getelementptr %"struct.std::_Head_base"* %6, i32 0, i32 0
  store %struct.Node** %__first.coerce, %struct.Node*** %7
  %8 = load %"struct.std::pair"** %1
  call void @_ZNSt4pairIKP4NodeiEC2IJRS2_EJLm0EEJEJEEERSt5tupleIJDpT_EERS6_IJDpT1_EESt12_Index_tupleIJXspT0_EEESF_IJXspT2_EEE(%"struct.std::pair"* %8, %"class.std::tuple"* %__first, %"class.std::tuple.19"* %__second)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt5tupleIJRKP4NodeEEC2EOS4_(%"class.std::tuple"* %this, %"class.std::tuple"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.std::tuple"*, align 8
  %3 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %2, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %3, align 8
  %4 = load %"class.std::tuple"** %2
  %5 = bitcast %"class.std::tuple"* %4 to %"struct.std::_Tuple_impl"*
  %6 = load %"class.std::tuple"** %3, align 8
  %7 = bitcast %"class.std::tuple"* %6 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJRKP4NodeEEC2EOS4_(%"struct.std::_Tuple_impl"* %5, %"struct.std::_Tuple_impl"* %7) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJRKP4NodeEEC2EOS4_(%"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"* %__in) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Tuple_impl"*, align 8
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %1, align 8
  store %"struct.std::_Tuple_impl"* %__in, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"** %1
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base"*
  %5 = load %"struct.std::_Tuple_impl"** %2, align 8
  %6 = call %struct.Node** @_ZNSt11_Tuple_implILm0EJRKP4NodeEE7_M_headERS4_(%"struct.std::_Tuple_impl"* %5) #0
  %7 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %6) #0
  call void @_ZNSt10_Head_baseILm0ERKP4NodeLb0EEC2ES3_(%"struct.std::_Head_base"* %4, %struct.Node** %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt11_Tuple_implILm0EJRKP4NodeEE7_M_headERS4_(%"struct.std::_Tuple_impl"* %__t) #3 align 2 {
  %1 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %1, align 8
  %2 = load %"struct.std::_Tuple_impl"** %1, align 8
  %3 = bitcast %"struct.std::_Tuple_impl"* %2 to %"struct.std::_Head_base"*
  %4 = call %struct.Node** @_ZNSt10_Head_baseILm0ERKP4NodeLb0EE7_M_headERS4_(%"struct.std::_Head_base"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZNSt10_Head_baseILm0ERKP4NodeLb0EE7_M_headERS4_(%"struct.std::_Head_base"* %__b) #3 align 2 {
  %1 = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %1, align 8
  %2 = load %"struct.std::_Head_base"** %1, align 8
  %3 = getelementptr inbounds %"struct.std::_Head_base"* %2, i32 0, i32 0
  %4 = load %struct.Node*** %3, align 8
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKP4NodeiEC2IJRS2_EJLm0EEJEJEEERSt5tupleIJDpT_EERS6_IJDpT1_EESt12_Index_tupleIJXspT0_EEESF_IJXspT2_EEE(%"struct.std::pair"* %this, %"class.std::tuple"* %__tuple1, %"class.std::tuple.19"* %__tuple2) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::pair"*, align 8
  %2 = alloca %"class.std::tuple"*, align 8
  %3 = alloca %"class.std::tuple.19"*, align 8
  %4 = alloca %"struct.std::_Index_tuple", align 1
  %5 = alloca %"struct.std::_Index_tuple.21", align 1
  store %"struct.std::pair"* %this, %"struct.std::pair"** %1, align 8
  store %"class.std::tuple"* %__tuple1, %"class.std::tuple"** %2, align 8
  store %"class.std::tuple.19"* %__tuple2, %"class.std::tuple.19"** %3, align 8
  %6 = load %"struct.std::pair"** %1
  %7 = getelementptr inbounds %"struct.std::pair"* %6, i32 0, i32 0
  %8 = load %"class.std::tuple"** %2, align 8
  %9 = call %struct.Node** @_ZSt3getILm0EJRKP4NodeEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_(%"class.std::tuple"* %8) #0
  %10 = call %struct.Node** @_ZSt7forwardIRKP4NodeEOT_RNSt16remove_referenceIS4_E4typeE(%struct.Node** %9) #0
  %11 = load %struct.Node** %10
  store %struct.Node* %11, %struct.Node** %7, align 8
  %12 = getelementptr inbounds %"struct.std::pair"* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt3getILm0EJRKP4NodeEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_(%"class.std::tuple"* %__t) #3 {
  %1 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %1, align 8
  %2 = load %"class.std::tuple"** %1, align 8
  %3 = bitcast %"class.std::tuple"* %2 to %"struct.std::_Tuple_impl"*
  %4 = call %struct.Node** @_ZSt12__get_helperILm0ERKP4NodeJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl"* %3) #0
  ret %struct.Node** %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr %struct.Node** @_ZSt12__get_helperILm0ERKP4NodeJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE(%"struct.std::_Tuple_impl"* %__t) #3 {
  %1 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %1, align 8
  %2 = load %"struct.std::_Tuple_impl"** %1, align 8
  %3 = call %struct.Node** @_ZNSt11_Tuple_implILm0EJRKP4NodeEE7_M_headERS4_(%"struct.std::_Tuple_impl"* %2) #0
  ret %struct.Node** %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEEE8allocateERS7_m(%"class.std::allocator.0"* %__a, i64 %__n) #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  %2 = alloca i64, align 8
  store %"class.std::allocator.0"* %__a, %"class.std::allocator.0"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"class.std::allocator.0"** %1, align 8
  %4 = bitcast %"class.std::allocator.0"* %3 to %"class.__gnu_cxx::new_allocator.1"*
  %5 = load i64* %2, align 8
  %6 = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %4, i64 %5, i8* null)
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.1"* %this, i64 %__n, i8*) #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i8* %0, i8** %4, align 8
  %5 = load %"class.__gnu_cxx::new_allocator.1"** %2
  %6 = load i64* %3, align 8
  %7 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %5) #0
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %1
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

; <label>:10                                      ; preds = %1
  %11 = load i64* %3, align 8
  %12 = mul i64 %11, 48
  %13 = call noalias i8* @_Znwm(i64 %12)
  %14 = bitcast i8* %13 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator.1"* %this) #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
  ret i64 384307168202282325
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNKSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8key_compEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::less", align 1
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %4, i32 0, i32 0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE3endEv(%"class.std::_Rb_tree"* %this) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %2
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %4, i32 0, i32 1
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %5) #0
  %6 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"** %6
  ret %"struct.std::_Rb_tree_node_base"* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE11lower_boundERS3_(%"class.std::_Rb_tree"* %this, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %struct.Node**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %struct.Node** %__k, %struct.Node*** %3, align 8
  %4 = load %"class.std::_Rb_tree"** %2
  %5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %4) #0
  %6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_M_endEv(%"class.std::_Rb_tree"* %4) #0
  %7 = load %struct.Node*** %3, align 8
  %8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS3_(%"class.std::_Rb_tree"* %4, %"struct.std::_Rb_tree_node"* %5, %"struct.std::_Rb_tree_node"* %6, %struct.Node** %7)
  %9 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"** %9
  %10 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"** %10
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_ESD_RS3_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %struct.Node** %__k) #3 align 2 {
  %1 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  %3 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca %struct.Node**, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %2, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %4, align 8
  store %struct.Node** %__k, %struct.Node*** %5, align 8
  %6 = load %"class.std::_Rb_tree"** %2
  br label %7

; <label>:7                                       ; preds = %26, %0
  %8 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %27

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %"class.std::_Rb_tree"* %6, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %11, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %14 = call %struct.Node** @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(%"struct.std::_Rb_tree_node"* %13)
  %15 = load %struct.Node*** %5, align 8
  %16 = call zeroext i1 @_ZNKSt4lessIP4NodeEclERKS1_S4_(%"struct.std::less"* %12, %struct.Node** %14, %struct.Node** %15)
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %10
  %18 = load %"struct.std::_Rb_tree_node"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  %19 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  %21 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %20) #0
  store %"struct.std::_Rb_tree_node"* %21, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:22                                      ; preds = %10
  %23 = load %"struct.std::_Rb_tree_node"** %3, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  %25 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %24) #0
  store %"struct.std::_Rb_tree_node"* %25, %"struct.std::_Rb_tree_node"** %3, align 8
  br label %26

; <label>:26                                      ; preds = %22, %17
  br label %7

; <label>:27                                      ; preds = %7
  %28 = load %"struct.std::_Rb_tree_node"** %4, align 8
  %29 = bitcast %"struct.std::_Rb_tree_node"* %28 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKP4NodeiEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_node_base"* %29) #0
  %30 = getelementptr %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %31 = load %"struct.std::_Rb_tree_node_base"** %30
  ret %"struct.std::_Rb_tree_node_base"* %31
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEED2Ev(%"struct.std::_Vector_base.9"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  %2 = load %"struct.std::_Vector_base.9"** %1
  %3 = getelementptr inbounds %"struct.std::_Vector_base.9"* %2, i32 0, i32 0
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3, i32 0, i32 0
  %5 = load i64** %4, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base.9"* %2, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %6, i32 0, i32 2
  %8 = load i64** %7, align 8
  %9 = getelementptr inbounds %"struct.std::_Vector_base.9"* %2, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %9, i32 0, i32 0
  %11 = load i64** %10, align 8
  %12 = ptrtoint i64* %8 to i64
  %13 = ptrtoint i64* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  call void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%"struct.std::_Vector_base.9"* %2, i64* %5, i64 %15)
  %16 = getelementptr inbounds %"struct.std::_Vector_base.9"* %2, i32 0, i32 0
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %16) #0
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE12_Vector_implD2Ev(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %1, align 8
  %2 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %1
  %3 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %2 to %"class.std::allocator.10"*
  call void @_ZNSaImED2Ev(%"class.std::allocator.10"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImED2Ev(%"class.__gnu_cxx::new_allocator.11"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(%"struct.std::_Vector_base.9"* %this, i64 %__n, %"class.std::allocator.10"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::allocator.10"*, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %3, align 8
  %4 = load %"struct.std::_Vector_base.9"** %1
  %5 = getelementptr inbounds %"struct.std::_Vector_base.9"* %4, i32 0, i32 0
  %6 = load %"class.std::allocator.10"** %3, align 8
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %5, %"class.std::allocator.10"* %6) #0
  %7 = load i64* %2, align 8
  call void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(%"struct.std::_Vector_base.9"* %4, i64 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE18_M_fill_initializeEmRKm(%"class.std::vector.8"* %this, i64 %__n, i64* %__value) #3 align 2 {
  %1 = alloca %"class.std::vector.8"*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store %"class.std::vector.8"* %this, %"class.std::vector.8"** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__value, i64** %3, align 8
  %4 = load %"class.std::vector.8"** %1
  %5 = bitcast %"class.std::vector.8"* %4 to %"struct.std::_Vector_base.9"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.9"* %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %6, i32 0, i32 0
  %8 = load i64** %7, align 8
  %9 = load i64* %2, align 8
  %10 = load i64** %3, align 8
  %11 = bitcast %"class.std::vector.8"* %4 to %"struct.std::_Vector_base.9"*
  %12 = call %"class.std::allocator.10"* @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.9"* %11) #0
  %13 = call i64* @_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E(i64* %8, i64 %9, i64* %10, %"class.std::allocator.10"* %12)
  %14 = bitcast %"class.std::vector.8"* %4 to %"struct.std::_Vector_base.9"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base.9"* %14, i32 0, i32 0
  %16 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %15, i32 0, i32 1
  store i64* %13, i64** %16, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E(i64* %__first, i64 %__n, i64* %__x, %"class.std::allocator.10"*) #5 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %"class.std::allocator.10"*, align 8
  store i64* %__first, i64** %2, align 8
  store i64 %__n, i64* %3, align 8
  store i64* %__x, i64** %4, align 8
  store %"class.std::allocator.10"* %0, %"class.std::allocator.10"** %5, align 8
  %6 = load i64** %2, align 8
  %7 = load i64* %3, align 8
  %8 = load i64** %4, align 8
  %9 = call i64* @_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_(i64* %6, i64 %7, i64* %8)
  ret i64* %9
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt20uninitialized_fill_nIPmmmET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* %__x) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %__assignable = alloca i8, align 1
  store i64* %__first, i64** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__x, i64** %3, align 8
  store i8 1, i8* %__assignable, align 1
  %4 = load i64** %1, align 8
  %5 = load i64* %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPmmmEET_S3_T0_RKT1_(i64* %4, i64 %5, i64* %6)
  ret i64* %7
}

; Function Attrs: nounwind uwtable
define linkonce_odr i64* @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPmmmEET_S3_T0_RKT1_(i64* %__first, i64 %__n, i64* %__x) #3 align 2 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__x, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = load i64* %2, align 8
  %6 = load i64** %3, align 8
  %7 = call i64* @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(i64* %4, i64 %5, i64* %6)
  ret i64* %7
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(i64* %__first, i64 %__n, i64* %__value) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64* %__first, i64** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__value, i64** %3, align 8
  %4 = load i64** %1, align 8
  %5 = call i64* @_ZSt12__niter_baseIPmENSt11_Niter_baseIT_E13iterator_typeES2_(i64* %4)
  %6 = load i64* %2, align 8
  %7 = load i64** %3, align 8
  %8 = call i64* @_ZSt10__fill_n_aIPmmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i64* %5, i64 %6, i64* %7)
  ret i64* %8
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr i64* @_ZSt10__fill_n_aIPmmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i64* %__first, i64 %__n, i64* %__value) #5 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %__tmp = alloca i64, align 8
  %__niter = alloca i64, align 8
  store i64* %__first, i64** %1, align 8
  store i64 %__n, i64* %2, align 8
  store i64* %__value, i64** %3, align 8
  %4 = load i64** %3, align 8
  %5 = load i64* %4, align 8
  store i64 %5, i64* %__tmp, align 8
  %6 = load i64* %2, align 8
  store i64 %6, i64* %__niter, align 8
  br label %7

; <label>:7                                       ; preds = %13, %0
  %8 = load i64* %__niter, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %7
  %11 = load i64* %__tmp, align 8
  %12 = load i64** %1, align 8
  store i64 %11, i64* %12, align 8
  br label %13

; <label>:13                                      ; preds = %10
  %14 = load i64* %__niter, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %__niter, align 8
  %16 = load i64** %1, align 8
  %17 = getelementptr inbounds i64* %16, i32 1
  store i64* %17, i64** %1, align 8
  br label %7

; <label>:18                                      ; preds = %7
  %19 = load i64** %1, align 8
  ret i64* %19
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"class.std::allocator.10"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"*, align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  store %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %this, %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %1, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %2, align 8
  %3 = load %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"** %1
  %4 = bitcast %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3 to %"class.std::allocator.10"*
  %5 = load %"class.std::allocator.10"** %2, align 8
  call void @_ZNSaImEC2ERKS_(%"class.std::allocator.10"* %4, %"class.std::allocator.10"* %5) #0
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3, i32 0, i32 0
  store i64* null, i64** %6, align 8
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3, i32 0, i32 1
  store i64* null, i64** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %3, i32 0, i32 2
  store i64* null, i64** %8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(%"struct.std::_Vector_base.9"* %this, i64 %__n) #3 align 2 {
  %1 = alloca %"struct.std::_Vector_base.9"*, align 8
  %2 = alloca i64, align 8
  store %"struct.std::_Vector_base.9"* %this, %"struct.std::_Vector_base.9"** %1, align 8
  store i64 %__n, i64* %2, align 8
  %3 = load %"struct.std::_Vector_base.9"** %1
  %4 = load i64* %2, align 8
  %5 = call i64* @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%"struct.std::_Vector_base.9"* %3, i64 %4)
  %6 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %6, i32 0, i32 0
  store i64* %5, i64** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %8, i32 0, i32 0
  %10 = load i64** %9, align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %12 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %11, i32 0, i32 1
  store i64* %10, i64** %12, align 8
  %13 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %14 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %13, i32 0, i32 0
  %15 = load i64** %14, align 8
  %16 = load i64* %2, align 8
  %17 = getelementptr inbounds i64* %15, i64 %16
  %18 = getelementptr inbounds %"struct.std::_Vector_base.9"* %3, i32 0, i32 0
  %19 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long> >::_Vector_impl"* %18, i32 0, i32 2
  store i64* %17, i64** %19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaImEC2ERKS_(%"class.std::allocator.10"* %this, %"class.std::allocator.10"* %__a) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.10"*, align 8
  %2 = alloca %"class.std::allocator.10"*, align 8
  store %"class.std::allocator.10"* %this, %"class.std::allocator.10"** %1, align 8
  store %"class.std::allocator.10"* %__a, %"class.std::allocator.10"** %2, align 8
  %3 = load %"class.std::allocator.10"** %1
  %4 = bitcast %"class.std::allocator.10"* %3 to %"class.__gnu_cxx::new_allocator.11"*
  %5 = load %"class.std::allocator.10"** %2, align 8
  %6 = bitcast %"class.std::allocator.10"* %5 to %"class.__gnu_cxx::new_allocator.11"*
  call void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.11"* %4, %"class.__gnu_cxx::new_allocator.11"* %6) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_(%"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"*) unnamed_addr #3 align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  %3 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %2, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %0, %"class.__gnu_cxx::new_allocator.11"** %3, align 8
  %4 = load %"class.__gnu_cxx::new_allocator.11"** %2
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorImEC2Ev(%"class.__gnu_cxx::new_allocator.11"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.11"*, align 8
  store %"class.__gnu_cxx::new_allocator.11"* %this, %"class.__gnu_cxx::new_allocator.11"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.11"** %1
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  %2 = load %"class.std::_Rb_tree"** %1
  %3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_beginEv(%"class.std::_Rb_tree"* %2) #0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %2, %"struct.std::_Rb_tree_node"* %3)
  %4 = getelementptr inbounds %"class.std::_Rb_tree"* %2, i32 0, i32 0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %4) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #3 align 2 {
  %1 = alloca %"class.std::_Rb_tree"*, align 8
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %1, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"class.std::_Rb_tree"** %1
  br label %4

; <label>:4                                       ; preds = %7, %0
  %5 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %6 = icmp ne %"struct.std::_Rb_tree_node"* %5, null
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  %10 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %9) #0
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %10)
  %11 = load %"struct.std::_Rb_tree_node"** %2, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12) #0
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %__y, align 8
  %14 = load %"struct.std::_Rb_tree_node"** %2, align 8
  call void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(%"class.std::_Rb_tree"* %3, %"struct.std::_Rb_tree_node"* %14) #0
  %15 = load %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %15, %"struct.std::_Rb_tree_node"** %2, align 8
  br label %4

; <label>:16                                      ; preds = %4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIP4NodeSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(%"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this) unnamed_addr #5 align 2 {
  %1 = alloca %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1, align 8
  %2 = load %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"** %1
  %3 = bitcast %"struct.std::_Rb_tree<Node *, std::pair<Node *const, int>, std::_Select1st<std::pair<Node *const, int> >, std::less<Node *>, std::allocator<std::pair<Node *const, int> > >::_Rb_tree_impl"* %2 to %"class.std::allocator.0"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEED2Ev(%"class.std::allocator.0"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZNSaISt13_Rb_tree_nodeISt4pairIKP4NodeiEEED2Ev(%"class.std::allocator.0"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.std::allocator.0"*, align 8
  store %"class.std::allocator.0"* %this, %"class.std::allocator.0"** %1, align 8
  %2 = load %"class.std::allocator.0"** %1
  %3 = bitcast %"class.std::allocator.0"* %2 to %"class.__gnu_cxx::new_allocator.1"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %3) #0
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKP4NodeiEEED2Ev(%"class.__gnu_cxx::new_allocator.1"* %this) unnamed_addr #3 align 2 {
  %1 = alloca %"class.__gnu_cxx::new_allocator.1"*, align 8
  store %"class.__gnu_cxx::new_allocator.1"* %this, %"class.__gnu_cxx::new_allocator.1"** %1, align 8
  %2 = load %"class.__gnu_cxx::new_allocator.1"** %1
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
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
