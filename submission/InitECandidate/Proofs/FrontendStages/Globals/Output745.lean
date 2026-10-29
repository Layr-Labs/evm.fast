import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data745
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody745_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody745_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def globalBody745_2 : Prog (BitVec 64) :=
.seq globalBody745_0 globalBody745_1

def globalBody745_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def globalBody745_4 : Prog (BitVec 64) :=
.seq globalBody745_2 globalBody745_3

def globalBody745_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody745_6 : Prog (BitVec 64) :=
.seq globalBody745_4 globalBody745_5

def globalBody745_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def globalBody745_8 : Prog (BitVec 64) :=
.seq globalBody745_6 globalBody745_7

def globalBody745_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def globalBody745_10 : Prog (BitVec 64) :=
.seq globalBody745_8 globalBody745_9

def globalBody745_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def globalBody745_12 : Prog (BitVec 64) :=
.seq globalBody745_10 globalBody745_11

def globalBody745_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def globalBody745_14 : Prog (BitVec 64) :=
.seq globalBody745_12 globalBody745_13

def globalBody745_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def globalBody745_16 : Prog (BitVec 64) :=
.seq globalBody745_14 globalBody745_15

def globalBody745_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]]

def globalBody745_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul_xi"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody745_19 : Prog (BitVec 64) :=
.seq globalBody745_17 globalBody745_18

def globalBody745_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "t",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody745_21 : Prog (BitVec 64) :=
.seq globalBody745_19 globalBody745_20

def globalBody745_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul_xi"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]]

def globalBody745_23 : Prog (BitVec 64) :=
.seq globalBody745_21 globalBody745_22

def globalBody745_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]]

def globalBody745_25 : Prog (BitVec 64) :=
.seq globalBody745_23 globalBody745_24

def globalBody745_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]]

def globalBody745_27 : Prog (BitVec 64) :=
.seq globalBody745_25 globalBody745_26

def globalBody745_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]]

def globalBody745_29 : Prog (BitVec 64) :=
.seq globalBody745_27 globalBody745_28

def globalBody745_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]]

def globalBody745_31 : Prog (BitVec 64) :=
.seq globalBody745_29 globalBody745_30

def globalBody745_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody745_33 : Prog (BitVec 64) :=
.seq globalBody745_31 globalBody745_32

def globalBody745_34 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody745_35 : Prog (BitVec 64) :=
.seq globalBody745_33 globalBody745_34

def globalBody745_36 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) globalBody745_35

def globalBody745_37 : Prog (BitVec 64) :=
.seq globalBody745_16 globalBody745_36

def globalBody745_38 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 10#64]]) globalBody745_37

def globalBody745_39 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody745_38

def globalData745 : Decl (BitVec 64) :=
.function { name := "fp6_mul", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody745_39, returnShape := (Flapjack.Shape.one) }
def globalOutput745 := Pancake.PanLang.declToHOL globalData745
end InitECandidate.Proofs.FrontendStages.Declarations
