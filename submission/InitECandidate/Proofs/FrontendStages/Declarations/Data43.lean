import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify27
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body43_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body43_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body43_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")])
  (Flapjack.Exp.const 0#64)) body43_0 body43_1

def body43_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body43_4 : Prog (BitVec 64) :=
.seq body43_2 body43_3

def originalData43 : Decl (BitVec 64) :=
.function { name := "u256_is_zero", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body43_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData43 : Decl (BitVec 64) :=
.function { name := "u256_is_zero", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body43_4, returnShape := (Flapjack.Shape.one) }
def original43 := Pancake.PanLang.declToHOL originalData43
def simplified43 := Pancake.PanLang.declToHOL simplifiedData43
end InitECandidate.Proofs.FrontendStages.Declarations
