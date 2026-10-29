import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify538
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body554_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body554_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "price"]

def body554_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body554_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body554_4 : Prog (BitVec 64) :=
.seq body554_2 body554_3

def body554_5 : Prog (BitVec 64) :=
.seq body554_1 body554_4

def body554_6 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 96#64])]) body554_5

def body554_7 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body554_6

def body554_8 : Prog (BitVec 64) :=
.seq body554_0 body554_7

def body554_9 : Prog (BitVec 64) :=
.seq body554_1 body554_2

def body554_10 : Prog (BitVec 64) :=
.seq body554_9 body554_3

def body554_11 : Prog (BitVec 64) :=
.decCall ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 96#64])]) body554_10

def body554_12 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body554_11

def body554_13 : Prog (BitVec 64) :=
.seq body554_0 body554_12

def originalData554 : Decl (BitVec 64) :=
.function { name := "op_blobbasefee", inline := false, exported := false, params := [], body := body554_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData554 : Decl (BitVec 64) :=
.function { name := "op_blobbasefee", inline := false, exported := false, params := [], body := body554_13, returnShape := (Flapjack.Shape.one) }
def original554 := Pancake.PanLang.declToHOL originalData554
def simplified554 := Pancake.PanLang.declToHOL simplifiedData554
end InitECandidate.Proofs.FrontendStages.Declarations
