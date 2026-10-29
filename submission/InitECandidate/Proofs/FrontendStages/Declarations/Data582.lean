import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify566
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body582_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "done"),
      some
        ("EvmErr", "err",
          Flapjack.Prog.call (some (none, none)) "frame_exception" [Flapjack.Exp.var Flapjack.VarKind.local "err"])))
  "frame_prologue" []

def body582_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 1#64)

def body582_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body582_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "done") (Flapjack.Exp.const 0#64)) body582_1 body582_2

def body582_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body582_5 : Prog (BitVec 64) :=
.seq body582_3 body582_4

def body582_6 : Prog (BitVec 64) :=
.seq body582_0 body582_5

def body582_7 : Prog (BitVec 64) :=
.dec ("done") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body582_6

def body582_8 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body582_7

def body582_9 : Prog (BitVec 64) :=
.seq body582_0 body582_3

def body582_10 : Prog (BitVec 64) :=
.seq body582_9 body582_4

def body582_11 : Prog (BitVec 64) :=
.dec ("done") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body582_10

def body582_12 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body582_11

def originalData582 : Decl (BitVec 64) :=
.function { name := "frame_start", inline := false, exported := false, params := [], body := body582_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData582 : Decl (BitVec 64) :=
.function { name := "frame_start", inline := false, exported := false, params := [], body := body582_12, returnShape := (Flapjack.Shape.one) }
def original582 := Pancake.PanLang.declToHOL originalData582
def simplified582 := Pancake.PanLang.declToHOL simplifiedData582
end InitECandidate.Proofs.FrontendStages.Declarations
