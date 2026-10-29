import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify436
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body452_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64]),
          Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 72#64])],
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 192#64])])

def body452_1 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 112#64])) body452_0

def originalData452 : Decl (BitVec 64) :=
.function { name := "frame_state_gas_used", inline := false, exported := false, params := [("e", Flapjack.Shape.one)], body := body452_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData452 : Decl (BitVec 64) :=
.function { name := "frame_state_gas_used", inline := false, exported := false, params := [("e", Flapjack.Shape.one)], body := body452_1, returnShape := (Flapjack.Shape.one) }
def original452 := Pancake.PanLang.declToHOL originalData452
def simplified452 := Pancake.PanLang.declToHOL simplifiedData452
end InitECandidate.Proofs.FrontendStages.Declarations
