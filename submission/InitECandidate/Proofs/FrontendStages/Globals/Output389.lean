import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data389
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody389_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 3#64)

def globalBody389_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody389_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody389_0 globalBody389_1

def globalBody389_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "inner"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]

def globalBody389_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.var Flapjack.VarKind.local "inner"]

def globalBody389_5 : Prog (BitVec 64) :=
.seq globalBody389_3 globalBody389_4

def globalBody389_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "inner"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def globalBody389_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody389_5 globalBody389_6

def globalBody389_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.var Flapjack.VarKind.local "value")

def globalBody389_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody389_10 : Prog (BitVec 64) :=
.seq globalBody389_8 globalBody389_9

def globalBody389_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody389_12 : Prog (BitVec 64) :=
.seq globalBody389_10 globalBody389_11

def globalBody389_13 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody389_12

def globalBody389_14 : Prog (BitVec 64) :=
.seq globalBody389_7 globalBody389_13

def globalBody389_15 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody389_14

def globalBody389_16 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody389_15

def globalBody389_17 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 32#64])) globalBody389_16

def globalBody389_18 : Prog (BitVec 64) :=
.seq globalBody389_2 globalBody389_17

def globalBody389_19 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody389_18

def globalData389 : Decl (BitVec 64) :=
.function { name := "set_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody389_19, returnShape := (Flapjack.Shape.one) }
def globalOutput389 := Pancake.PanLang.declToHOL globalData389
end InitECandidate.Proofs.FrontendStages.Declarations
