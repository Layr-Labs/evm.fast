import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data180
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody180_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "pub64", Flapjack.Exp.const 64#64,
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody180_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out20",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def globalBody180_2 : Prog (BitVec 64) :=
.seq globalBody180_0 globalBody180_1

def globalBody180_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody180_4 : Prog (BitVec 64) :=
.seq globalBody180_2 globalBody180_3

def globalBody180_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody180_6 : Prog (BitVec 64) :=
.seq globalBody180_4 globalBody180_5

def globalBody180_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody180_6

def globalBody180_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody180_7

def globalData180 : Decl (BitVec 64) :=
.function { name := "secp256k1_address_of_point", inline := false, exported := false, params := [("pub64", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := globalBody180_8, returnShape := (Flapjack.Shape.one) }
def globalOutput180 := Pancake.PanLang.declToHOL globalData180
end InitECandidate.Proofs.FrontendStages.Declarations
