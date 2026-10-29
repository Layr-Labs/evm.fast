import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data383
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody383_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody383_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody383_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"), Flapjack.Exp.const 24#64]))) globalBody383_0 globalBody383_1

def globalBody383_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody383_2 globalBody383_1

def globalBody383_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "m"), none)) "htab_get"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 176#64]),
          Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody383_5 : Prog (BitVec 64) :=
.seq globalBody383_3 globalBody383_4

def globalBody383_6 : Prog (BitVec 64) :=
.seq globalBody383_5 globalBody383_3

def globalBody383_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "record_pre_state_read" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody383_8 : Prog (BitVec 64) :=
.seq globalBody383_6 globalBody383_7

def globalBody383_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody383_10 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("ws_account_has_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody383_9

def globalBody383_11 : Prog (BitVec 64) :=
.seq globalBody383_8 globalBody383_10

def globalBody383_12 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
        Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody383_11

def globalData383 : Decl (BitVec 64) :=
.function { name := "account_has_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody383_12, returnShape := (Flapjack.Shape.one) }
def globalOutput383 := Pancake.PanLang.declToHOL globalData383
end InitECandidate.Proofs.FrontendStages.Declarations
