import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data793
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody793_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "v7", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody793_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v7", Flapjack.Exp.var Flapjack.VarKind.local "v7",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody793_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody793_3 : Prog (BitVec 64) :=
.seq globalBody793_1 globalBody793_2

def globalBody793_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 6#64)) globalBody793_3

def globalBody793_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp1", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "v7"]

def globalBody793_6 : Prog (BitVec 64) :=
.seq globalBody793_4 globalBody793_5

def globalBody793_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp2", Flapjack.Exp.var Flapjack.VarKind.local "v7",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody793_8 : Prog (BitVec 64) :=
.seq globalBody793_6 globalBody793_7

def globalBody793_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp2", Flapjack.Exp.var Flapjack.VarKind.local "temp1",
    Flapjack.Exp.var Flapjack.VarKind.local "temp2"]

def globalBody793_10 : Prog (BitVec 64) :=
.seq globalBody793_8 globalBody793_9

def globalBody793_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "gamma", Flapjack.Exp.var Flapjack.VarKind.local "temp2",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 1528#64],
    Flapjack.Exp.const 12#64]

def globalBody793_12 : Prog (BitVec 64) :=
.seq globalBody793_10 globalBody793_11

def globalBody793_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "gamma", Flapjack.Exp.var Flapjack.VarKind.local "gamma",
    Flapjack.Exp.var Flapjack.VarKind.local "temp1"]

def globalBody793_14 : Prog (BitVec 64) :=
.seq globalBody793_12 globalBody793_13

def globalBody793_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "gamma"]

def globalBody793_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody793_17 : Prog (BitVec 64) :=
.seq globalBody793_15 globalBody793_16

def globalBody793_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "cand",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 5216#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 96#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "gamma"]

def globalBody793_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def globalBody793_20 : Prog (BitVec 64) :=
.seq globalBody793_18 globalBody793_19

def globalBody793_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "chk",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody793_22 : Prog (BitVec 64) :=
.seq globalBody793_20 globalBody793_21

def globalBody793_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "chk",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody793_24 : Prog (BitVec 64) :=
.seq globalBody793_22 globalBody793_23

def globalBody793_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "valid" (Flapjack.Exp.const 1#64)

def globalBody793_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def globalBody793_27 : Prog (BitVec 64) :=
.seq globalBody793_25 globalBody793_26

def globalBody793_28 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody793_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "valid") (Flapjack.Exp.const 0#64))]) globalBody793_27 globalBody793_28

def globalBody793_30 : Prog (BitVec 64) :=
.seq globalBody793_29 globalBody793_2

def globalBody793_31 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "chk"]) globalBody793_30

def globalBody793_32 : Prog (BitVec 64) :=
.seq globalBody793_24 globalBody793_31

def globalBody793_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) globalBody793_32

def globalBody793_34 : Prog (BitVec 64) :=
.seq globalBody793_17 globalBody793_33

def globalBody793_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody793_36 : Prog (BitVec 64) :=
.seq globalBody793_34 globalBody793_35

def globalBody793_37 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "valid")

def globalBody793_38 : Prog (BitVec 64) :=
.seq globalBody793_36 globalBody793_37

def globalBody793_39 : Prog (BitVec 64) :=
.dec ("valid") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody793_38

def globalBody793_40 : Prog (BitVec 64) :=
.seq globalBody793_14 globalBody793_39

def globalBody793_41 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody793_40

def globalBody793_42 : Prog (BitVec 64) :=
.seq globalBody793_0 globalBody793_41

def globalBody793_43 : Prog (BitVec 64) :=
.dec ("chk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) globalBody793_42

def globalBody793_44 : Prog (BitVec 64) :=
.dec ("cand") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) globalBody793_43

def globalBody793_45 : Prog (BitVec 64) :=
.dec ("gamma") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) globalBody793_44

def globalBody793_46 : Prog (BitVec 64) :=
.dec ("temp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) globalBody793_45

def globalBody793_47 : Prog (BitVec 64) :=
.dec ("temp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) globalBody793_46

def globalBody793_48 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody793_47

def globalBody793_49 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 6#64]]) globalBody793_48

def globalBody793_50 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody793_49

def globalData793 : Decl (BitVec 64) :=
.function { name := "swu_sqrt_division_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := globalBody793_50, returnShape := (Flapjack.Shape.one) }
def globalOutput793 := Pancake.PanLang.declToHOL globalData793
end InitECandidate.Proofs.FrontendStages.Declarations
