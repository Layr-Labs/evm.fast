import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify567
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body583_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_restore"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 24#64])]

def body583_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body583_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 160#64]))
  (Flapjack.Exp.const 0#64)) body583_0 body583_1

def body583_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body583_4 : Prog (BitVec 64) :=
.seq body583_2 body583_3

def originalData583 : Decl (BitVec 64) :=
.function { name := "frame_epilogue", inline := false, exported := false, params := [], body := body583_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData583 : Decl (BitVec 64) :=
.function { name := "frame_epilogue", inline := false, exported := false, params := [], body := body583_4, returnShape := (Flapjack.Shape.one) }
def original583 := Pancake.PanLang.declToHOL originalData583
def simplified583 := Pancake.PanLang.declToHOL simplifiedData583
end InitECandidate.Proofs.FrontendStages.Declarations
