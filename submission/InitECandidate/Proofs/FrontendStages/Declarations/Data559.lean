import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify543
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body559_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body559_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 8#64])]

def body559_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body559_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body559_4 : Prog (BitVec 64) :=
.seq body559_2 body559_3

def body559_5 : Prog (BitVec 64) :=
.seq body559_1 body559_4

def body559_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body559_5

def body559_7 : Prog (BitVec 64) :=
.seq body559_0 body559_6

def body559_8 : Prog (BitVec 64) :=
.seq body559_1 body559_2

def body559_9 : Prog (BitVec 64) :=
.seq body559_8 body559_3

def body559_10 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body559_9

def body559_11 : Prog (BitVec 64) :=
.seq body559_0 body559_10

def originalData559 : Decl (BitVec 64) :=
.function { name := "op_gaslimit", inline := false, exported := false, params := [], body := body559_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData559 : Decl (BitVec 64) :=
.function { name := "op_gaslimit", inline := false, exported := false, params := [], body := body559_11, returnShape := (Flapjack.Shape.one) }
def original559 := Pancake.PanLang.declToHOL originalData559
def simplified559 := Pancake.PanLang.declToHOL simplifiedData559
end InitECandidate.Proofs.FrontendStages.Declarations
