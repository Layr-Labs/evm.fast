import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify871
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body887_0 : Prog (BitVec 64) :=
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

def body887_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body887_2 : Prog (BitVec 64) :=
.seq body887_0 body887_1

def body887_3 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body887_2

def originalData887 : Decl (BitVec 64) :=
.function { name := "attempt_l7", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body887_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData887 : Decl (BitVec 64) :=
.function { name := "attempt_l7", inline := false, exported := false, params := [("si", Flapjack.Shape.one)], body := body887_3, returnShape := (Flapjack.Shape.one) }
def original887 := Pancake.PanLang.declToHOL originalData887
def simplified887 := Pancake.PanLang.declToHOL simplifiedData887
end InitECandidate.Proofs.FrontendStages.Declarations
