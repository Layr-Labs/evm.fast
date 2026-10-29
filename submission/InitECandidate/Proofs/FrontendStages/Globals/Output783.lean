import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data783
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody783_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp0", Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def globalBody783_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp1", Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def globalBody783_2 : Prog (BitVec 64) :=
.seq globalBody783_0 globalBody783_1

def globalBody783_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp2", Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def globalBody783_4 : Prog (BitVec 64) :=
.seq globalBody783_2 globalBody783_3

def globalBody783_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp1",
    Flapjack.Exp.var Flapjack.VarKind.local "rx"]

def globalBody783_6 : Prog (BitVec 64) :=
.seq globalBody783_4 globalBody783_5

def globalBody783_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def globalBody783_8 : Prog (BitVec 64) :=
.seq globalBody783_6 globalBody783_7

def globalBody783_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def globalBody783_10 : Prog (BitVec 64) :=
.seq globalBody783_8 globalBody783_9

def globalBody783_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def globalBody783_12 : Prog (BitVec 64) :=
.seq globalBody783_10 globalBody783_11

def globalBody783_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def globalBody783_14 : Prog (BitVec 64) :=
.seq globalBody783_12 globalBody783_13

def globalBody783_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp4", Flapjack.Exp.var Flapjack.VarKind.local "tmp0",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def globalBody783_16 : Prog (BitVec 64) :=
.seq globalBody783_14 globalBody783_15

def globalBody783_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp4", Flapjack.Exp.var Flapjack.VarKind.local "tmp4",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def globalBody783_18 : Prog (BitVec 64) :=
.seq globalBody783_16 globalBody783_17

def globalBody783_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "rx",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def globalBody783_20 : Prog (BitVec 64) :=
.seq globalBody783_18 globalBody783_19

def globalBody783_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp5", Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def globalBody783_22 : Prog (BitVec 64) :=
.seq globalBody783_20 globalBody783_21

def globalBody783_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "zsq", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody783_24 : Prog (BitVec 64) :=
.seq globalBody783_22 globalBody783_23

def globalBody783_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "tmp5",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def globalBody783_26 : Prog (BitVec 64) :=
.seq globalBody783_24 globalBody783_25

def globalBody783_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def globalBody783_28 : Prog (BitVec 64) :=
.seq globalBody783_26 globalBody783_27

def globalBody783_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def globalBody783_30 : Prog (BitVec 64) :=
.seq globalBody783_28 globalBody783_29

def globalBody783_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz"]

def globalBody783_32 : Prog (BitVec 64) :=
.seq globalBody783_30 globalBody783_31

def globalBody783_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def globalBody783_34 : Prog (BitVec 64) :=
.seq globalBody783_32 globalBody783_33

def globalBody783_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "rz", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody783_36 : Prog (BitVec 64) :=
.seq globalBody783_34 globalBody783_35

def globalBody783_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "tmp3",
    Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def globalBody783_38 : Prog (BitVec 64) :=
.seq globalBody783_36 globalBody783_37

def globalBody783_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp4"]

def globalBody783_40 : Prog (BitVec 64) :=
.seq globalBody783_38 globalBody783_39

def globalBody783_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp2", Flapjack.Exp.var Flapjack.VarKind.local "tmp2",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def globalBody783_42 : Prog (BitVec 64) :=
.seq globalBody783_40 globalBody783_41

def globalBody783_43 : Prog (BitVec 64) :=
.seq globalBody783_42 globalBody783_41

def globalBody783_44 : Prog (BitVec 64) :=
.seq globalBody783_43 globalBody783_41

def globalBody783_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ry", Flapjack.Exp.var Flapjack.VarKind.local "ry",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp2"]

def globalBody783_46 : Prog (BitVec 64) :=
.seq globalBody783_44 globalBody783_45

def globalBody783_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rx", Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def globalBody783_48 : Prog (BitVec 64) :=
.seq globalBody783_46 globalBody783_47

def globalBody783_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp3", Flapjack.Exp.var Flapjack.VarKind.local "tmp4",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody783_50 : Prog (BitVec 64) :=
.seq globalBody783_48 globalBody783_49

def globalBody783_51 : Prog (BitVec 64) :=
.seq globalBody783_50 globalBody783_13

def globalBody783_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "tmp3"]

def globalBody783_53 : Prog (BitVec 64) :=
.seq globalBody783_51 globalBody783_52

def globalBody783_54 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6"]

def globalBody783_55 : Prog (BitVec 64) :=
.seq globalBody783_53 globalBody783_54

def globalBody783_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def globalBody783_57 : Prog (BitVec 64) :=
.seq globalBody783_55 globalBody783_56

def globalBody783_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp6",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp5"]

def globalBody783_59 : Prog (BitVec 64) :=
.seq globalBody783_57 globalBody783_58

def globalBody783_60 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp1", Flapjack.Exp.var Flapjack.VarKind.local "tmp1",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def globalBody783_61 : Prog (BitVec 64) :=
.seq globalBody783_59 globalBody783_60

def globalBody783_62 : Prog (BitVec 64) :=
.seq globalBody783_61 globalBody783_60

def globalBody783_63 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "tmp6", Flapjack.Exp.var Flapjack.VarKind.local "tmp1"]

def globalBody783_64 : Prog (BitVec 64) :=
.seq globalBody783_62 globalBody783_63

def globalBody783_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "tmp0", Flapjack.Exp.var Flapjack.VarKind.local "rz",
    Flapjack.Exp.var Flapjack.VarKind.local "zsq"]

def globalBody783_66 : Prog (BitVec 64) :=
.seq globalBody783_64 globalBody783_65

def globalBody783_67 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "tmp0",
    Flapjack.Exp.var Flapjack.VarKind.local "tmp0"]

def globalBody783_68 : Prog (BitVec 64) :=
.seq globalBody783_66 globalBody783_67

def globalBody783_69 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody783_70 : Prog (BitVec 64) :=
.seq globalBody783_68 globalBody783_69

def globalBody783_71 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody783_72 : Prog (BitVec 64) :=
.seq globalBody783_70 globalBody783_71

def globalBody783_73 : Prog (BitVec 64) :=
.dec ("rz") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]) globalBody783_72

def globalBody783_74 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64]) globalBody783_73

def globalBody783_75 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "rp") globalBody783_74

def globalBody783_76 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) globalBody783_75

def globalBody783_77 : Prog (BitVec 64) :=
.dec ("zsq") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) globalBody783_76

def globalBody783_78 : Prog (BitVec 64) :=
.dec ("tmp6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) globalBody783_77

def globalBody783_79 : Prog (BitVec 64) :=
.dec ("tmp5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) globalBody783_78

def globalBody783_80 : Prog (BitVec 64) :=
.dec ("tmp4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) globalBody783_79

def globalBody783_81 : Prog (BitVec 64) :=
.dec ("tmp3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) globalBody783_80

def globalBody783_82 : Prog (BitVec 64) :=
.dec ("tmp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) globalBody783_81

def globalBody783_83 : Prog (BitVec 64) :=
.dec ("tmp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) globalBody783_82

def globalBody783_84 : Prog (BitVec 64) :=
.dec ("tmp0") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody783_83

def globalBody783_85 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 9#64]]) globalBody783_84

def globalBody783_86 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody783_85

def globalData783 : Decl (BitVec 64) :=
.function { name := "pair_doubling_step", inline := false, exported := false, params := [("rp", Flapjack.Shape.one), ("co", Flapjack.Shape.one)], body := globalBody783_86, returnShape := (Flapjack.Shape.one) }
def globalOutput783 := Pancake.PanLang.declToHOL globalData783
end InitECandidate.Proofs.FrontendStages.Declarations
