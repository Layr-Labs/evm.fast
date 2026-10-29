import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify527
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body543_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body543_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])]

def body543_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body543_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body543_4 : Prog (BitVec 64) :=
.seq body543_2 body543_3

def body543_5 : Prog (BitVec 64) :=
.seq body543_1 body543_4

def body543_6 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])) body543_5

def body543_7 : Prog (BitVec 64) :=
.seq body543_0 body543_6

def body543_8 : Prog (BitVec 64) :=
.seq body543_1 body543_2

def body543_9 : Prog (BitVec 64) :=
.seq body543_8 body543_3

def body543_10 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])) body543_9

def body543_11 : Prog (BitVec 64) :=
.seq body543_0 body543_10

def originalData543 : Decl (BitVec 64) :=
.function { name := "op_gasprice", inline := false, exported := false, params := [], body := body543_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData543 : Decl (BitVec 64) :=
.function { name := "op_gasprice", inline := false, exported := false, params := [], body := body543_11, returnShape := (Flapjack.Shape.one) }
def original543 := Pancake.PanLang.declToHOL originalData543
def simplified543 := Pancake.PanLang.declToHOL simplifiedData543
end InitECandidate.Proofs.FrontendStages.Declarations
