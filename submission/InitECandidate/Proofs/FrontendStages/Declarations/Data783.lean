import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify767
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body783_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp0", Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def body783_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp1", Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def body783_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp2", Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def body783_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp1",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def body783_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def body783_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def body783_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def body783_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def body783_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp4", Flapjack.Exp.var Flapjack.VarKind.local "tmp0",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def body783_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp4", Flapjack.Exp.var Flapjack.VarKind.local "tmp4",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def body783_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "rx",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def body783_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp5", Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def body783_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "zsq", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body783_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "tmp5",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def body783_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def body783_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def body783_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def body783_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def body783_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body783_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def body783_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def body783_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp2", Flapjack.Exp.var Flapjack.VarKind.local "tmp2",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def body783_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def body783_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rx", Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def body783_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp4",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body783_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def body783_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6"]

def body783_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def body783_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp5"]

def body783_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp1", Flapjack.Exp.var Flapjack.VarKind.local "tmp1",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def body783_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def body783_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp0", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def body783_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "tmp0",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def body783_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body783_34 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body783_35 : Prog (BitVec 64) :=
.seq body783_33 body783_34

def body783_36 : Prog (BitVec 64) :=
.seq body783_32 body783_35

def body783_37 : Prog (BitVec 64) :=
.seq body783_31 body783_36

def body783_38 : Prog (BitVec 64) :=
.seq body783_30 body783_37

def body783_39 : Prog (BitVec 64) :=
.seq body783_29 body783_38

def body783_40 : Prog (BitVec 64) :=
.seq body783_29 body783_39

def body783_41 : Prog (BitVec 64) :=
.seq body783_28 body783_40

def body783_42 : Prog (BitVec 64) :=
.seq body783_27 body783_41

def body783_43 : Prog (BitVec 64) :=
.seq body783_26 body783_42

def body783_44 : Prog (BitVec 64) :=
.seq body783_25 body783_43

def body783_45 : Prog (BitVec 64) :=
.seq body783_7 body783_44

def body783_46 : Prog (BitVec 64) :=
.seq body783_24 body783_45

def body783_47 : Prog (BitVec 64) :=
.seq body783_23 body783_46

def body783_48 : Prog (BitVec 64) :=
.seq body783_22 body783_47

def body783_49 : Prog (BitVec 64) :=
.seq body783_21 body783_48

def body783_50 : Prog (BitVec 64) :=
.seq body783_21 body783_49

def body783_51 : Prog (BitVec 64) :=
.seq body783_21 body783_50

def body783_52 : Prog (BitVec 64) :=
.seq body783_20 body783_51

def body783_53 : Prog (BitVec 64) :=
.seq body783_19 body783_52

def body783_54 : Prog (BitVec 64) :=
.seq body783_18 body783_53

def body783_55 : Prog (BitVec 64) :=
.seq body783_17 body783_54

def body783_56 : Prog (BitVec 64) :=
.seq body783_16 body783_55

def body783_57 : Prog (BitVec 64) :=
.seq body783_15 body783_56

def body783_58 : Prog (BitVec 64) :=
.seq body783_14 body783_57

def body783_59 : Prog (BitVec 64) :=
.seq body783_13 body783_58

def body783_60 : Prog (BitVec 64) :=
.seq body783_12 body783_59

def body783_61 : Prog (BitVec 64) :=
.seq body783_11 body783_60

def body783_62 : Prog (BitVec 64) :=
.seq body783_10 body783_61

def body783_63 : Prog (BitVec 64) :=
.seq body783_9 body783_62

def body783_64 : Prog (BitVec 64) :=
.seq body783_8 body783_63

def body783_65 : Prog (BitVec 64) :=
.seq body783_7 body783_64

def body783_66 : Prog (BitVec 64) :=
.seq body783_6 body783_65

def body783_67 : Prog (BitVec 64) :=
.seq body783_5 body783_66

def body783_68 : Prog (BitVec 64) :=
.seq body783_4 body783_67

def body783_69 : Prog (BitVec 64) :=
.seq body783_3 body783_68

def body783_70 : Prog (BitVec 64) :=
.seq body783_2 body783_69

def body783_71 : Prog (BitVec 64) :=
.seq body783_1 body783_70

def body783_72 : Prog (BitVec 64) :=
.seq body783_0 body783_71

def body783_73 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) body783_72

def body783_74 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) body783_73

def body783_75 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") body783_74

def body783_76 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body783_75

def body783_77 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body783_76

def body783_78 : Prog (BitVec 64) :=
.dec ("tmp6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body783_77

def body783_79 : Prog (BitVec 64) :=
.dec ("tmp5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body783_78

def body783_80 : Prog (BitVec 64) :=
.dec ("tmp4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body783_79

def body783_81 : Prog (BitVec 64) :=
.dec ("tmp3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body783_80

def body783_82 : Prog (BitVec 64) :=
.dec ("tmp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body783_81

def body783_83 : Prog (BitVec 64) :=
.dec ("tmp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body783_82

def body783_84 : Prog (BitVec 64) :=
.dec ("tmp0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body783_83

def body783_85 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 9#64]]) body783_84

def body783_86 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body783_85

def body783_87 : Prog (BitVec 64) :=
.seq body783_0 body783_1

def body783_88 : Prog (BitVec 64) :=
.seq body783_87 body783_2

def body783_89 : Prog (BitVec 64) :=
.seq body783_88 body783_3

def body783_90 : Prog (BitVec 64) :=
.seq body783_89 body783_4

def body783_91 : Prog (BitVec 64) :=
.seq body783_90 body783_5

def body783_92 : Prog (BitVec 64) :=
.seq body783_91 body783_6

def body783_93 : Prog (BitVec 64) :=
.seq body783_92 body783_7

def body783_94 : Prog (BitVec 64) :=
.seq body783_93 body783_8

def body783_95 : Prog (BitVec 64) :=
.seq body783_94 body783_9

def body783_96 : Prog (BitVec 64) :=
.seq body783_95 body783_10

def body783_97 : Prog (BitVec 64) :=
.seq body783_96 body783_11

def body783_98 : Prog (BitVec 64) :=
.seq body783_97 body783_12

def body783_99 : Prog (BitVec 64) :=
.seq body783_98 body783_13

def body783_100 : Prog (BitVec 64) :=
.seq body783_99 body783_14

def body783_101 : Prog (BitVec 64) :=
.seq body783_100 body783_15

def body783_102 : Prog (BitVec 64) :=
.seq body783_101 body783_16

def body783_103 : Prog (BitVec 64) :=
.seq body783_102 body783_17

def body783_104 : Prog (BitVec 64) :=
.seq body783_103 body783_18

def body783_105 : Prog (BitVec 64) :=
.seq body783_104 body783_19

def body783_106 : Prog (BitVec 64) :=
.seq body783_105 body783_20

def body783_107 : Prog (BitVec 64) :=
.seq body783_106 body783_21

def body783_108 : Prog (BitVec 64) :=
.seq body783_107 body783_21

def body783_109 : Prog (BitVec 64) :=
.seq body783_108 body783_21

def body783_110 : Prog (BitVec 64) :=
.seq body783_109 body783_22

def body783_111 : Prog (BitVec 64) :=
.seq body783_110 body783_23

def body783_112 : Prog (BitVec 64) :=
.seq body783_111 body783_24

def body783_113 : Prog (BitVec 64) :=
.seq body783_112 body783_7

def body783_114 : Prog (BitVec 64) :=
.seq body783_113 body783_25

def body783_115 : Prog (BitVec 64) :=
.seq body783_114 body783_26

def body783_116 : Prog (BitVec 64) :=
.seq body783_115 body783_27

def body783_117 : Prog (BitVec 64) :=
.seq body783_116 body783_28

def body783_118 : Prog (BitVec 64) :=
.seq body783_117 body783_29

def body783_119 : Prog (BitVec 64) :=
.seq body783_118 body783_29

def body783_120 : Prog (BitVec 64) :=
.seq body783_119 body783_30

def body783_121 : Prog (BitVec 64) :=
.seq body783_120 body783_31

def body783_122 : Prog (BitVec 64) :=
.seq body783_121 body783_32

def body783_123 : Prog (BitVec 64) :=
.seq body783_122 body783_33

def body783_124 : Prog (BitVec 64) :=
.seq body783_123 body783_34

def body783_125 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) body783_124

def body783_126 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) body783_125

def body783_127 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") body783_126

def body783_128 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body783_127

def body783_129 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body783_128

def body783_130 : Prog (BitVec 64) :=
.dec ("tmp6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body783_129

def body783_131 : Prog (BitVec 64) :=
.dec ("tmp5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body783_130

def body783_132 : Prog (BitVec 64) :=
.dec ("tmp4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body783_131

def body783_133 : Prog (BitVec 64) :=
.dec ("tmp3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body783_132

def body783_134 : Prog (BitVec 64) :=
.dec ("tmp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body783_133

def body783_135 : Prog (BitVec 64) :=
.dec ("tmp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body783_134

def body783_136 : Prog (BitVec 64) :=
.dec ("tmp0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body783_135

def body783_137 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 9#64]]) body783_136

def body783_138 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body783_137

def originalData783 : Decl (BitVec 64) :=
.function { name := "pair_doubling_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := body783_86, returnShape := (Flapjack.Shape.one) }
def simplifiedData783 : Decl (BitVec 64) :=
.function { name := "pair_doubling_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := body783_138, returnShape := (Flapjack.Shape.one) }
def original783 := Pancake.PanLang.declToHOL originalData783
def simplified783 := Pancake.PanLang.declToHOL simplifiedData783
end InitECandidate.Proofs.FrontendStages.Declarations
