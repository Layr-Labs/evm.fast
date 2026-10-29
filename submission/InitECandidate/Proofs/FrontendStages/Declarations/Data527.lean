import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify511
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body527_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 176#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]

def body527_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body527_2 : Prog (BitVec 64) :=
.seq body527_0 body527_1

def body527_3 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("sk_make") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "key"]) body527_2

def originalData527 : Decl (BitVec 64) :=
.function { name := "warm_storage_key", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body527_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData527 : Decl (BitVec 64) :=
.function { name := "warm_storage_key", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body527_3, returnShape := (Flapjack.Shape.one) }
def original527 := Pancake.PanLang.declToHOL originalData527
def simplified527 := Pancake.PanLang.declToHOL simplifiedData527
end InitECandidate.Proofs.FrontendStages.Declarations
