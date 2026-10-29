import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data554
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody554_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def globalBody554_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "price"]

def globalBody554_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody554_3 : Prog (BitVec 64) :=
.seq globalBody554_1 globalBody554_2

def globalBody554_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody554_5 : Prog (BitVec 64) :=
.seq globalBody554_3 globalBody554_4

def globalBody554_6 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 96#64])]) globalBody554_5

def globalBody554_7 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) globalBody554_6

def globalBody554_8 : Prog (BitVec 64) :=
.seq globalBody554_0 globalBody554_7

def globalData554 : Decl (BitVec 64) :=
.function { name := "op_blobbasefee", inline := false, exported := false, params := [], body := globalBody554_8, returnShape := (Flapjack.Shape.one) }
def globalOutput554 := Pancake.PanLang.declToHOL globalData554
end InitECandidate.Proofs.FrontendStages.Declarations
