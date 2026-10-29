import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data778
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody778_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64]

def globalBody778_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody778_2 : Prog (BitVec 64) :=
.seq globalBody778_0 globalBody778_1

def globalBody778_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody778_4 : Prog (BitVec 64) :=
.seq globalBody778_2 globalBody778_3

def globalBody778_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody778_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "inf") (Flapjack.Exp.const 1#64)) globalBody778_4 globalBody778_5

def globalBody778_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "zi",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]]

def globalBody778_8 : Prog (BitVec 64) :=
.seq globalBody778_6 globalBody778_7

def globalBody778_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def globalBody778_10 : Prog (BitVec 64) :=
.seq globalBody778_8 globalBody778_9

def globalBody778_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "zi"]

def globalBody778_12 : Prog (BitVec 64) :=
.seq globalBody778_10 globalBody778_11

def globalBody778_13 : Prog (BitVec 64) :=
.seq globalBody778_12 globalBody778_1

def globalBody778_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody778_15 : Prog (BitVec 64) :=
.seq globalBody778_13 globalBody778_14

def globalBody778_16 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody778_15

def globalBody778_17 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody778_16

def globalBody778_18 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody778_17

def globalData778 : Decl (BitVec 64) :=
.function { name := "g2_normalize", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := globalBody778_18, returnShape := (Flapjack.Shape.one) }
def globalOutput778 := Pancake.PanLang.declToHOL globalData778
end InitECandidate.Proofs.FrontendStages.Declarations
