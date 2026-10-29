import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify536
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body552_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body552_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 48#64])]

def body552_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body552_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body552_4 : Prog (BitVec 64) :=
.seq body552_2 body552_3

def body552_5 : Prog (BitVec 64) :=
.seq body552_1 body552_4

def body552_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body552_5

def body552_7 : Prog (BitVec 64) :=
.seq body552_0 body552_6

def body552_8 : Prog (BitVec 64) :=
.seq body552_1 body552_2

def body552_9 : Prog (BitVec 64) :=
.seq body552_8 body552_3

def body552_10 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body552_9

def body552_11 : Prog (BitVec 64) :=
.seq body552_0 body552_10

def originalData552 : Decl (BitVec 64) :=
.function { name := "op_basefee", inline := false, exported := false, params := [], body := body552_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData552 : Decl (BitVec 64) :=
.function { name := "op_basefee", inline := false, exported := false, params := [], body := body552_11, returnShape := (Flapjack.Shape.one) }
def original552 := Pancake.PanLang.declToHOL originalData552
def simplified552 := Pancake.PanLang.declToHOL simplifiedData552
end InitECandidate.Proofs.FrontendStages.Declarations
