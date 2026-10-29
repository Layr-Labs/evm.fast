import InitECandidate.Proofs.FrontendStages.Declarations.Data925
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody925_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.shMemStore Flapjack.OpSize.op8
              (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 70#64])
              (Flapjack.Exp.var Flapjack.VarKind.local "e"))
            (Flapjack.Prog.raise "Fail" (Flapjack.Exp.const 7#64)))))
  "attempt_l6" [Flapjack.Exp.var Flapjack.VarKind.local "si"]

def globalBody925_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody925_2 : Prog (BitVec 64) :=
.seq globalBody925_0 globalBody925_1

def globalBody925_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody925_2

def globalData925 : Decl (BitVec 64) := .function { name := "attempt_l7", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := globalBody925_3, returnShape := (Flapjack.Shape.one) }
def globalOutput925 := Pancake.PanLang.declToHOL globalData925
end InitECandidate.Proofs.FrontendStages.Declarations
