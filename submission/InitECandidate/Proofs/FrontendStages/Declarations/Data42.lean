import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify26
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body42_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body42_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body42_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")])
  (Flapjack.Exp.const 0#64)) body42_0 body42_1

def body42_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body42_4 : Prog (BitVec 64) :=
.seq body42_2 body42_3

def originalData42 : Decl (BitVec 64) :=
.function { name := "u256_fits_word", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body42_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData42 : Decl (BitVec 64) :=
.function { name := "u256_fits_word", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body42_4, returnShape := (Flapjack.Shape.one) }
def original42 := Pancake.PanLang.declToHOL originalData42
def simplified42 := Pancake.PanLang.declToHOL simplifiedData42
end InitECandidate.Proofs.FrontendStages.Declarations
