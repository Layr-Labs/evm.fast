import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data561
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody561_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody561_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody561_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody561_3 : Prog (BitVec 64) :=
.seq globalBody561_1 globalBody561_2

def globalBody561_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody561_5 : Prog (BitVec 64) :=
.seq globalBody561_3 globalBody561_4

def globalBody561_6 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 32#64]) globalBody561_5

def globalBody561_7 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody561_6

def globalBody561_8 : Prog (BitVec 64) :=
.seq globalBody561_0 globalBody561_7

def globalData561 : Decl (BitVec 64) :=
.function { name := "op_prevrandao", inline := false, exported := false, params := [], body := globalBody561_8, returnShape := (Flapjack.Shape.one) }
def globalOutput561 := Pancake.PanLang.declToHOL globalData561
end InitECandidate.Proofs.FrontendStages.Declarations
