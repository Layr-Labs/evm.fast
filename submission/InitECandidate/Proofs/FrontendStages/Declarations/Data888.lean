import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify872
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body888_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("Fail", "e",
          Flapjack.Prog.seq (Flapjack.Prog.assign Flapjack.VarKind.local "ok" (Flapjack.Exp.const 0#64))
            (Flapjack.Prog.assign Flapjack.VarKind.global "fail_code" (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "attempt_l7" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def body888_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def body888_2 : Prog (BitVec 64) :=
.seq body888_0 body888_1

def body888_3 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body888_2

def body888_4 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body888_3

def originalData888 : Decl (BitVec 64) :=
.function { name := "verify_stateless_new_payload", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body888_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData888 : Decl (BitVec 64) :=
.function { name := "verify_stateless_new_payload", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body888_4, returnShape := (Flapjack.Shape.one) }
def original888 := Pancake.PanLang.declToHOL originalData888
def simplified888 := Pancake.PanLang.declToHOL simplifiedData888
end InitECandidate.Proofs.FrontendStages.Declarations
