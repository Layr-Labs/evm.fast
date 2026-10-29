import InitECandidate.Proofs.FrontendStages.Declarations.Data926
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody926_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("Fail", "e",
          Flapjack.Prog.seq (Flapjack.Prog.assign Flapjack.VarKind.local "ok" (Flapjack.Exp.const 0#64))
            (Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 744#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "attempt_l7" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def globalBody926_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def globalBody926_2 : Prog (BitVec 64) :=
.seq globalBody926_0 globalBody926_1

def globalBody926_3 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody926_2

def globalBody926_4 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody926_3

def globalData926 : Decl (BitVec 64) := .function { name := "verify_stateless_new_payload", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody926_4, returnShape := (Flapjack.Shape.one) }
def globalOutput926 := Pancake.PanLang.declToHOL globalData926
end InitECandidate.Proofs.FrontendStages.Declarations
