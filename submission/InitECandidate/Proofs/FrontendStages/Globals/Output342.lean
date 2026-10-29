import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data342
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate326
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody342_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pubkey65", Flapjack.Exp.const 1#64],
    Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody342_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out20",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def globalBody342_2 : Prog (BitVec 64) :=
.seq globalBody342_0 globalBody342_1

def globalBody342_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody342_4 : Prog (BitVec 64) :=
.seq globalBody342_2 globalBody342_3

def globalBody342_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody342_6 : Prog (BitVec 64) :=
.seq globalBody342_4 globalBody342_5

def globalBody342_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody342_6

def globalBody342_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody342_7

def globalData342 : Decl (BitVec 64) :=
.function { name := "sender_address_from_public_key", inline := false, exported := false, params := [("pubkey65", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := globalBody342_8, returnShape := (Flapjack.Shape.one) }
def globalOutput342 := Pancake.PanLang.declToHOL globalData342
end InitECandidate.Proofs.FrontendStages.Declarations
