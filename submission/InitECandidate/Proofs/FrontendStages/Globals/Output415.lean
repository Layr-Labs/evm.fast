import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data415
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody415_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 40#64, Flapjack.Exp.const 2#64]

def globalBody415_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot",
    Flapjack.Exp.var Flapjack.VarKind.local "l"]

def globalBody415_2 : Prog (BitVec 64) :=
.seq globalBody415_0 globalBody415_1

def globalBody415_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "l" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def globalBody415_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody415_2 globalBody415_3

def globalBody415_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_value")

def globalBody415_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody415_7 : Prog (BitVec 64) :=
.seq globalBody415_5 globalBody415_6

def globalBody415_8 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 40#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) globalBody415_7

def globalBody415_9 : Prog (BitVec 64) :=
.seq globalBody415_4 globalBody415_8

def globalBody415_10 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody415_9

def globalBody415_11 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "slot"]) globalBody415_10

def globalBody415_12 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) globalBody415_11

def globalBody415_13 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody415_12

def globalData415 : Decl (BitVec 64) :=
.function { name := "add_storage_write", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("slot", Flapjack.Shape.one), ("idx", Flapjack.Shape.one),
  ("new_value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody415_13, returnShape := (Flapjack.Shape.one) }
def globalOutput415 := Pancake.PanLang.declToHOL globalData415
end InitECandidate.Proofs.FrontendStages.Declarations
