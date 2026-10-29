import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify907
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body923_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("StateErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 5#64)))))
  "attempt_l4" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body923_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body923_2 : Prog (BitVec 64) :=
.seq body923_0 body923_1

def body923_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body923_2

def originalData923 : Decl (BitVec 64) :=
.function { name := "attempt_l5", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body923_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData923 : Decl (BitVec 64) :=
.function { name := "attempt_l5", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body923_3, returnShape := (Flapjack.Shape.one) }
def original923 := Pancake.PanLang.declToHOL originalData923
def simplified923 := Pancake.PanLang.declToHOL simplifiedData923
end InitECandidate.Proofs.FrontendStages.Declarations
