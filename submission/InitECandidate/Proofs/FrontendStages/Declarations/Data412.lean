import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify396
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body412_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bal_accounts"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def body412_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bal_idx_accts"), none)) "htab_new"
  [Flapjack.Exp.const 28#64, Flapjack.Exp.const 64#64]

def body412_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bal_idx_stor"), none)) "htab_new"
  [Flapjack.Exp.const 60#64, Flapjack.Exp.const 64#64]

def body412_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bal_key_buf"), none)) "alloc" [Flapjack.Exp.const 64#64]

def body412_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "bal_index" (Flapjack.Exp.const 0#64)

def body412_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body412_6 : Prog (BitVec 64) :=
.seq body412_4 body412_5

def body412_7 : Prog (BitVec 64) :=
.seq body412_3 body412_6

def body412_8 : Prog (BitVec 64) :=
.seq body412_2 body412_7

def body412_9 : Prog (BitVec 64) :=
.seq body412_1 body412_8

def body412_10 : Prog (BitVec 64) :=
.seq body412_0 body412_9

def body412_11 : Prog (BitVec 64) :=
.seq body412_0 body412_1

def body412_12 : Prog (BitVec 64) :=
.seq body412_11 body412_2

def body412_13 : Prog (BitVec 64) :=
.seq body412_12 body412_3

def body412_14 : Prog (BitVec 64) :=
.seq body412_13 body412_4

def body412_15 : Prog (BitVec 64) :=
.seq body412_14 body412_5

def originalData412 : Decl (BitVec 64) :=
.function { name := "bal_init", inline := false, exported := false, params := [], body := body412_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData412 : Decl (BitVec 64) :=
.function { name := "bal_init", inline := false, exported := false, params := [], body := body412_15, returnShape := (Flapjack.Shape.one) }
def original412 := Pancake.PanLang.declToHOL originalData412
def simplified412 := Pancake.PanLang.declToHOL simplifiedData412
end InitECandidate.Proofs.FrontendStages.Declarations
