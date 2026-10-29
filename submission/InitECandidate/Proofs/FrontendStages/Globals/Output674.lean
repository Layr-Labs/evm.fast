import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data674
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody674_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody674_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.const 3#64]

def globalBody674_2 : Prog (BitVec 64) :=
.seq globalBody674_0 globalBody674_1

def globalBody674_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "z"]

def globalBody674_4 : Prog (BitVec 64) :=
.seq globalBody674_2 globalBody674_3

def globalBody674_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody674_6 : Prog (BitVec 64) :=
.seq globalBody674_4 globalBody674_5

def globalBody674_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "B",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.var Flapjack.VarKind.local "S"]

def globalBody674_8 : Prog (BitVec 64) :=
.seq globalBody674_6 globalBody674_7

def globalBody674_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "W"]

def globalBody674_10 : Prog (BitVec 64) :=
.seq globalBody674_8 globalBody674_9

def globalBody674_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "B", Flapjack.Exp.const 8#64]

def globalBody674_12 : Prog (BitVec 64) :=
.seq globalBody674_10 globalBody674_11

def globalBody674_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "H",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.var Flapjack.VarKind.local "T2"]

def globalBody674_14 : Prog (BitVec 64) :=
.seq globalBody674_12 globalBody674_13

def globalBody674_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S2",
    Flapjack.Exp.var Flapjack.VarKind.local "S"]

def globalBody674_16 : Prog (BitVec 64) :=
.seq globalBody674_14 globalBody674_15

def globalBody674_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "H", Flapjack.Exp.var Flapjack.VarKind.local "S"]

def globalBody674_18 : Prog (BitVec 64) :=
.seq globalBody674_16 globalBody674_17

def globalBody674_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.const 2#64]

def globalBody674_20 : Prog (BitVec 64) :=
.seq globalBody674_18 globalBody674_19

def globalBody674_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "B", Flapjack.Exp.const 4#64]

def globalBody674_22 : Prog (BitVec 64) :=
.seq globalBody674_20 globalBody674_21

def globalBody674_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "H"]

def globalBody674_24 : Prog (BitVec 64) :=
.seq globalBody674_22 globalBody674_23

def globalBody674_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.var Flapjack.VarKind.local "T2"]

def globalBody674_26 : Prog (BitVec 64) :=
.seq globalBody674_24 globalBody674_25

def globalBody674_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody674_28 : Prog (BitVec 64) :=
.seq globalBody674_26 globalBody674_27

def globalBody674_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.var Flapjack.VarKind.local "S2"]

def globalBody674_30 : Prog (BitVec 64) :=
.seq globalBody674_28 globalBody674_29

def globalBody674_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.const 8#64]

def globalBody674_32 : Prog (BitVec 64) :=
.seq globalBody674_30 globalBody674_31

def globalBody674_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "W"]

def globalBody674_34 : Prog (BitVec 64) :=
.seq globalBody674_32 globalBody674_33

def globalBody674_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.var Flapjack.VarKind.local "S2"]

def globalBody674_36 : Prog (BitVec 64) :=
.seq globalBody674_34 globalBody674_35

def globalBody674_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.const 8#64]

def globalBody674_38 : Prog (BitVec 64) :=
.seq globalBody674_36 globalBody674_37

def globalBody674_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody674_40 : Prog (BitVec 64) :=
.seq globalBody674_38 globalBody674_39

def globalBody674_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "esz"],
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody674_42 : Prog (BitVec 64) :=
.seq globalBody674_40 globalBody674_41

def globalBody674_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody674_44 : Prog (BitVec 64) :=
.seq globalBody674_42 globalBody674_43

def globalBody674_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody674_46 : Prog (BitVec 64) :=
.seq globalBody674_44 globalBody674_45

def globalBody674_47 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody674_48 : Prog (BitVec 64) :=
.seq globalBody674_46 globalBody674_47

def globalBody674_49 : Prog (BitVec 64) :=
.decCall ("T2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_48

def globalBody674_50 : Prog (BitVec 64) :=
.decCall ("T1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_49

def globalBody674_51 : Prog (BitVec 64) :=
.decCall ("S2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_50

def globalBody674_52 : Prog (BitVec 64) :=
.decCall ("H") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_51

def globalBody674_53 : Prog (BitVec 64) :=
.decCall ("B") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_52

def globalBody674_54 : Prog (BitVec 64) :=
.decCall ("S") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_53

def globalBody674_55 : Prog (BitVec 64) :=
.decCall ("W") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_54

def globalBody674_56 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody674_55

def globalBody674_57 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) globalBody674_56

def globalBody674_58 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "pt") globalBody674_57

def globalBody674_59 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody674_58

def globalBody674_60 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) globalBody674_59

def globalData674 : Decl (BitVec 64) :=
.function { name := "ecp_double", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := globalBody674_60, returnShape := (Flapjack.Shape.one) }
def globalOutput674 := Pancake.PanLang.declToHOL globalData674
end InitECandidate.Proofs.FrontendStages.Declarations
