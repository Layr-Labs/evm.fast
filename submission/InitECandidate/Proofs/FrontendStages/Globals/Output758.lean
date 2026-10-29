import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data758
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody758_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody758_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody758_2 : Prog (BitVec 64) :=
.seq globalBody758_0 globalBody758_1

def globalBody758_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_4 : Prog (BitVec 64) :=
.seq globalBody758_2 globalBody758_3

def globalBody758_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody758_6 : Prog (BitVec 64) :=
.seq globalBody758_4 globalBody758_5

def globalBody758_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_8 : Prog (BitVec 64) :=
.seq globalBody758_6 globalBody758_7

def globalBody758_9 : Prog (BitVec 64) :=
.seq globalBody758_8 globalBody758_3

def globalBody758_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody758_11 : Prog (BitVec 64) :=
.seq globalBody758_9 globalBody758_10

def globalBody758_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody758_13 : Prog (BitVec 64) :=
.seq globalBody758_11 globalBody758_12

def globalBody758_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_15 : Prog (BitVec 64) :=
.seq globalBody758_13 globalBody758_14

def globalBody758_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody758_17 : Prog (BitVec 64) :=
.seq globalBody758_15 globalBody758_16

def globalBody758_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody758_19 : Prog (BitVec 64) :=
.seq globalBody758_17 globalBody758_18

def globalBody758_20 : Prog (BitVec 64) :=
.seq globalBody758_19 globalBody758_14

def globalBody758_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody758_22 : Prog (BitVec 64) :=
.seq globalBody758_20 globalBody758_21

def globalBody758_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody758_24 : Prog (BitVec 64) :=
.seq globalBody758_22 globalBody758_23

def globalBody758_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_26 : Prog (BitVec 64) :=
.seq globalBody758_24 globalBody758_25

def globalBody758_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody758_28 : Prog (BitVec 64) :=
.seq globalBody758_26 globalBody758_27

def globalBody758_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "c"]

def globalBody758_30 : Prog (BitVec 64) :=
.seq globalBody758_28 globalBody758_29

def globalBody758_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody758_32 : Prog (BitVec 64) :=
.seq globalBody758_30 globalBody758_31

def globalBody758_33 : Prog (BitVec 64) :=
.seq globalBody758_32 globalBody758_7

def globalBody758_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_35 : Prog (BitVec 64) :=
.seq globalBody758_33 globalBody758_34

def globalBody758_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody758_37 : Prog (BitVec 64) :=
.seq globalBody758_35 globalBody758_36

def globalBody758_38 : Prog (BitVec 64) :=
.seq globalBody758_37 globalBody758_34

def globalBody758_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody758_40 : Prog (BitVec 64) :=
.seq globalBody758_38 globalBody758_39

def globalBody758_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody758_42 : Prog (BitVec 64) :=
.seq globalBody758_40 globalBody758_41

def globalBody758_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody758_44 : Prog (BitVec 64) :=
.seq globalBody758_42 globalBody758_43

def globalBody758_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody758_46 : Prog (BitVec 64) :=
.seq globalBody758_44 globalBody758_45

def globalBody758_47 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody758_48 : Prog (BitVec 64) :=
.seq globalBody758_46 globalBody758_47

def globalBody758_49 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 2304#64]) globalBody758_48

def globalBody758_50 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1728#64]) globalBody758_49

def globalBody758_51 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1152#64]) globalBody758_50

def globalBody758_52 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) globalBody758_51

def globalBody758_53 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody758_52

def globalBody758_54 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 576#64, Flapjack.Exp.const 5#64]]) globalBody758_53

def globalBody758_55 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody758_54

def globalData758 : Decl (BitVec 64) :=
.function { name := "fp12_final_exp", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := globalBody758_55, returnShape := (Flapjack.Shape.one) }
def globalOutput758 := Pancake.PanLang.declToHOL globalData758
end InitECandidate.Proofs.FrontendStages.Declarations
