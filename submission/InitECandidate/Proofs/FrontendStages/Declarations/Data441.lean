import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify425
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body441_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 18446744073709551615#64)

def body441_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body441_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "v")])
  (Flapjack.Exp.const 0#64)) body441_0 body441_1

def body441_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))

def body441_4 : Prog (BitVec 64) :=
.seq body441_2 body441_3

def originalData441 : Decl (BitVec 64) :=
.function { name := "sat_word", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body441_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData441 : Decl (BitVec 64) :=
.function { name := "sat_word", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body441_4, returnShape := (Flapjack.Shape.one) }
def original441 := Pancake.PanLang.declToHOL originalData441
def simplified441 := Pancake.PanLang.declToHOL simplifiedData441
end InitECandidate.Proofs.FrontendStages.Declarations
