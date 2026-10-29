import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data413
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody413_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def globalBody413_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody413_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody413_0 globalBody413_1

def globalBody413_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody413_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]

def globalBody413_5 : Prog (BitVec 64) :=
.seq globalBody413_3 globalBody413_4

def globalBody413_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def globalBody413_7 : Prog (BitVec 64) :=
.seq globalBody413_5 globalBody413_6

def globalBody413_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def globalBody413_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 16#64, Flapjack.Exp.const 4#64]

def globalBody413_10 : Prog (BitVec 64) :=
.seq globalBody413_8 globalBody413_9

def globalBody413_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def globalBody413_12 : Prog (BitVec 64) :=
.seq globalBody413_10 globalBody413_11

def globalBody413_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 24#64, Flapjack.Exp.const 2#64]

def globalBody413_14 : Prog (BitVec 64) :=
.seq globalBody413_12 globalBody413_13

def globalBody413_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def globalBody413_16 : Prog (BitVec 64) :=
.seq globalBody413_14 globalBody413_15

def globalBody413_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "ad"]

def globalBody413_18 : Prog (BitVec 64) :=
.seq globalBody413_16 globalBody413_17

def globalBody413_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ad")

def globalBody413_20 : Prog (BitVec 64) :=
.seq globalBody413_18 globalBody413_19

def globalBody413_21 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 40#64, Flapjack.Exp.const 4#64]) globalBody413_20

def globalBody413_22 : Prog (BitVec 64) :=
.seq globalBody413_7 globalBody413_21

def globalBody413_23 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]) globalBody413_22

def globalBody413_24 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody413_23

def globalBody413_25 : Prog (BitVec 64) :=
.seq globalBody413_2 globalBody413_24

def globalBody413_26 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody413_25

def globalData413 : Decl (BitVec 64) :=
.function { name := "bal_ensure_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody413_26, returnShape := (Flapjack.Shape.one) }
def globalOutput413 := Pancake.PanLang.declToHOL globalData413
end InitECandidate.Proofs.FrontendStages.Declarations
