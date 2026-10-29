import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify377
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body393_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body393_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body393_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def body393_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash")

def body393_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body393_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body393_6 : Prog (BitVec 64) :=
.seq body393_4 body393_5

def body393_7 : Prog (BitVec 64) :=
.seq body393_3 body393_6

def body393_8 : Prog (BitVec 64) :=
.seq body393_2 body393_7

def body393_9 : Prog (BitVec 64) :=
.seq body393_1 body393_8

def body393_10 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body393_9

def body393_11 : Prog (BitVec 64) :=
.seq body393_0 body393_10

def body393_12 : Prog (BitVec 64) :=
.seq body393_1 body393_2

def body393_13 : Prog (BitVec 64) :=
.seq body393_12 body393_3

def body393_14 : Prog (BitVec 64) :=
.seq body393_13 body393_4

def body393_15 : Prog (BitVec 64) :=
.seq body393_14 body393_5

def body393_16 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body393_15

def body393_17 : Prog (BitVec 64) :=
.seq body393_0 body393_16

def originalData393 : Decl (BitVec 64) :=
.function { name := "clear_account_preserving_balance", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body393_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData393 : Decl (BitVec 64) :=
.function { name := "clear_account_preserving_balance", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body393_17, returnShape := (Flapjack.Shape.one) }
def original393 := Pancake.PanLang.declToHOL originalData393
def simplified393 := Pancake.PanLang.declToHOL simplifiedData393
end InitECandidate.Proofs.FrontendStages.Declarations
