import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data677
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate661
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody677_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "mn"]

def globalBody677_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md"]

def globalBody677_2 : Prog (BitVec 64) :=
.seq globalBody677_0 globalBody677_1

def globalBody677_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "mn",
    Flapjack.Exp.var Flapjack.VarKind.local "y2", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def globalBody677_5 : Prog (BitVec 64) :=
.seq globalBody677_3 globalBody677_4

def globalBody677_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "mn",
    Flapjack.Exp.var Flapjack.VarKind.local "mn", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody677_7 : Prog (BitVec 64) :=
.seq globalBody677_5 globalBody677_6

def globalBody677_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md",
    Flapjack.Exp.var Flapjack.VarKind.local "x2", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_9 : Prog (BitVec 64) :=
.seq globalBody677_7 globalBody677_8

def globalBody677_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "z2"]

def globalBody677_11 : Prog (BitVec 64) :=
.seq globalBody677_9 globalBody677_10

def globalBody677_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md",
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody677_13 : Prog (BitVec 64) :=
.seq globalBody677_11 globalBody677_12

def globalBody677_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "P1")
  (Flapjack.Exp.var Flapjack.VarKind.local "P2")) globalBody677_2 globalBody677_13

def globalBody677_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "x1"]

def globalBody677_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "mn",
    Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.const 3#64]

def globalBody677_17 : Prog (BitVec 64) :=
.seq globalBody677_15 globalBody677_16

def globalBody677_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md",
    Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_19 : Prog (BitVec 64) :=
.seq globalBody677_17 globalBody677_18

def globalBody677_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md",
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.const 2#64]

def globalBody677_21 : Prog (BitVec 64) :=
.seq globalBody677_19 globalBody677_20

def globalBody677_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.var Flapjack.VarKind.local "xt", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "zt"]

def globalBody677_24 : Prog (BitVec 64) :=
.seq globalBody677_22 globalBody677_23

def globalBody677_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.var Flapjack.VarKind.local "num", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody677_26 : Prog (BitVec 64) :=
.seq globalBody677_24 globalBody677_25

def globalBody677_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "den",
    Flapjack.Exp.var Flapjack.VarKind.local "z1", Flapjack.Exp.var Flapjack.VarKind.local "zt"]

def globalBody677_28 : Prog (BitVec 64) :=
.seq globalBody677_26 globalBody677_27

def globalBody677_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody677_30 : Prog (BitVec 64) :=
.seq globalBody677_28 globalBody677_29

def globalBody677_31 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody677_32 : Prog (BitVec 64) :=
.seq globalBody677_30 globalBody677_31

def globalBody677_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mnz") (Flapjack.Exp.const 1#64)) globalBody677_21 globalBody677_32

def globalBody677_34 : Prog (BitVec 64) :=
.decCall ("mnz") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "mn"]) globalBody677_33

def globalBody677_35 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody677_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mdz") (Flapjack.Exp.const 1#64)) globalBody677_34 globalBody677_35

def globalBody677_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "xt", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_38 : Prog (BitVec 64) :=
.seq globalBody677_36 globalBody677_37

def globalBody677_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "zt"]

def globalBody677_40 : Prog (BitVec 64) :=
.seq globalBody677_38 globalBody677_39

def globalBody677_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody677_42 : Prog (BitVec 64) :=
.seq globalBody677_40 globalBody677_41

def globalBody677_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t1",
    Flapjack.Exp.var Flapjack.VarKind.local "mn", Flapjack.Exp.var Flapjack.VarKind.local "t1"]

def globalBody677_44 : Prog (BitVec 64) :=
.seq globalBody677_42 globalBody677_43

def globalBody677_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "yt", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_46 : Prog (BitVec 64) :=
.seq globalBody677_44 globalBody677_45

def globalBody677_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.var Flapjack.VarKind.local "y1", Flapjack.Exp.var Flapjack.VarKind.local "zt"]

def globalBody677_48 : Prog (BitVec 64) :=
.seq globalBody677_46 globalBody677_47

def globalBody677_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "num"]

def globalBody677_50 : Prog (BitVec 64) :=
.seq globalBody677_48 globalBody677_49

def globalBody677_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "t2",
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody677_52 : Prog (BitVec 64) :=
.seq globalBody677_50 globalBody677_51

def globalBody677_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "num",
    Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2"]

def globalBody677_54 : Prog (BitVec 64) :=
.seq globalBody677_52 globalBody677_53

def globalBody677_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "den",
    Flapjack.Exp.var Flapjack.VarKind.local "md", Flapjack.Exp.var Flapjack.VarKind.local "zt"]

def globalBody677_56 : Prog (BitVec 64) :=
.seq globalBody677_54 globalBody677_55

def globalBody677_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "den",
    Flapjack.Exp.var Flapjack.VarKind.local "den", Flapjack.Exp.var Flapjack.VarKind.local "z1"]

def globalBody677_58 : Prog (BitVec 64) :=
.seq globalBody677_56 globalBody677_57

def globalBody677_59 : Prog (BitVec 64) :=
.seq globalBody677_58 globalBody677_29

def globalBody677_60 : Prog (BitVec 64) :=
.seq globalBody677_59 globalBody677_31

def globalBody677_61 : Prog (BitVec 64) :=
.decCall ("mdz") (Flapjack.Shape.one) ("fe_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "md"]) globalBody677_60

def globalBody677_62 : Prog (BitVec 64) :=
.seq globalBody677_14 globalBody677_61

def globalBody677_63 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_62

def globalBody677_64 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_63

def globalBody677_65 : Prog (BitVec 64) :=
.decCall ("md") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_64

def globalBody677_66 : Prog (BitVec 64) :=
.decCall ("mn") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_65

def globalBody677_67 : Prog (BitVec 64) :=
.dec ("zt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "T",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody677_66

def globalBody677_68 : Prog (BitVec 64) :=
.dec ("yt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "T", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_67

def globalBody677_69 : Prog (BitVec 64) :=
.dec ("xt") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "T") globalBody677_68

def globalBody677_70 : Prog (BitVec 64) :=
.dec ("z2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "P2",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody677_69

def globalBody677_71 : Prog (BitVec 64) :=
.dec ("y2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "P2", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_70

def globalBody677_72 : Prog (BitVec 64) :=
.dec ("x2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "P2") globalBody677_71

def globalBody677_73 : Prog (BitVec 64) :=
.dec ("z1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "P1",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody677_72

def globalBody677_74 : Prog (BitVec 64) :=
.dec ("y1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "P1", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody677_73

def globalBody677_75 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "P1") globalBody677_74

def globalBody677_76 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody677_75

def globalBody677_77 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) globalBody677_76

def globalData677 : Decl (BitVec 64) :=
.function { name := "ecp_linefunc", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("num", Flapjack.Shape.one), ("den", Flapjack.Shape.one), ("P1", Flapjack.Shape.one),
  ("P2", Flapjack.Shape.one), ("T", Flapjack.Shape.one)], body := globalBody677_77, returnShape := (Flapjack.Shape.one) }
def globalOutput677 := Pancake.PanLang.declToHOL globalData677
end InitECandidate.Proofs.FrontendStages.Declarations
