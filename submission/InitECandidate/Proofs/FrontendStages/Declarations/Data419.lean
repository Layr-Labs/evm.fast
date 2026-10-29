import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify403
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body419_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body419_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_len")

def body419_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body419_3 : Prog (BitVec 64) :=
.seq body419_1 body419_2

def body419_4 : Prog (BitVec 64) :=
.seq body419_0 body419_3

def body419_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.const 24#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) body419_4

def body419_6 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body419_5

def body419_7 : Prog (BitVec 64) :=
.seq body419_0 body419_1

def body419_8 : Prog (BitVec 64) :=
.seq body419_7 body419_2

def body419_9 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.const 24#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) body419_8

def body419_10 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body419_9

def originalData419 : Decl (BitVec 64) :=
.function { name := "add_code_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one), ("code", Flapjack.Shape.one),
  ("code_len", Flapjack.Shape.one)], body := body419_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData419 : Decl (BitVec 64) :=
.function { name := "add_code_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one), ("code", Flapjack.Shape.one),
  ("code_len", Flapjack.Shape.one)], body := body419_10, returnShape := (Flapjack.Shape.one) }
def original419 := Pancake.PanLang.declToHOL originalData419
def simplified419 := Pancake.PanLang.declToHOL simplifiedData419
end InitECandidate.Proofs.FrontendStages.Declarations
