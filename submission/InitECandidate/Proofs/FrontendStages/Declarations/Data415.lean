import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify399
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body415_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 40#64, Flapjack.Exp.const 2#64]

def body415_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot",
    Flapjack.Exp.var Flapjack.VarKind.local "l"]

def body415_2 : Prog (BitVec 64) :=
.seq body415_0 body415_1

def body415_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def body415_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body415_2 body415_3

def body415_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_value")

def body415_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body415_7 : Prog (BitVec 64) :=
.seq body415_5 body415_6

def body415_8 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 40#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) body415_7

def body415_9 : Prog (BitVec 64) :=
.seq body415_4 body415_8

def body415_10 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body415_9

def body415_11 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) body415_10

def body415_12 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) body415_11

def body415_13 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body415_12

def originalData415 : Decl (BitVec 64) :=
.function { name := "add_storage_write", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("slot", Flapjack.Shape.one), ("idx", Flapjack.Shape.one),
  ("new_value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body415_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData415 : Decl (BitVec 64) :=
.function { name := "add_storage_write", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("slot", Flapjack.Shape.one), ("idx", Flapjack.Shape.one),
  ("new_value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body415_13, returnShape := (Flapjack.Shape.one) }
def original415 := Pancake.PanLang.declToHOL originalData415
def simplified415 := Pancake.PanLang.declToHOL simplifiedData415
end InitECandidate.Proofs.FrontendStages.Declarations
