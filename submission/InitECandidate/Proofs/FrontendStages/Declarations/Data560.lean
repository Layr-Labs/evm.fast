import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify544
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body560_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body560_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 0#64])]

def body560_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body560_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body560_4 : Prog (BitVec 64) :=
.seq body560_2 body560_3

def body560_5 : Prog (BitVec 64) :=
.seq body560_1 body560_4

def body560_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body560_5

def body560_7 : Prog (BitVec 64) :=
.seq body560_0 body560_6

def body560_8 : Prog (BitVec 64) :=
.seq body560_1 body560_2

def body560_9 : Prog (BitVec 64) :=
.seq body560_8 body560_3

def body560_10 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body560_9

def body560_11 : Prog (BitVec 64) :=
.seq body560_0 body560_10

def originalData560 : Decl (BitVec 64) :=
.function { name := "op_chainid", inline := false, exported := false, params := [], body := body560_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData560 : Decl (BitVec 64) :=
.function { name := "op_chainid", inline := false, exported := false, params := [], body := body560_11, returnShape := (Flapjack.Shape.one) }
def original560 := Pancake.PanLang.declToHOL originalData560
def simplified560 := Pancake.PanLang.declToHOL simplifiedData560
end InitECandidate.Proofs.FrontendStages.Declarations
