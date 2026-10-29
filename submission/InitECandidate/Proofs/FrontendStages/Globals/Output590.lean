import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data590
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody590_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 11#64)

def globalBody590_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody590_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "code"))
  (Flapjack.Exp.const 239#64)) globalBody590_0 globalBody590_1

def globalBody590_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody590_2 globalBody590_1

def globalBody590_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def globalBody590_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 65536#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody590_4 globalBody590_1

def globalBody590_6 : Prog (BitVec 64) :=
.seq globalBody590_3 globalBody590_5

def globalBody590_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]]

def globalBody590_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1530#64]]

def globalBody590_9 : Prog (BitVec 64) :=
.seq globalBody590_7 globalBody590_8

def globalBody590_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "stored_code", Flapjack.Exp.var Flapjack.VarKind.local "code",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody590_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "stored_code", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody590_12 : Prog (BitVec 64) :=
.seq globalBody590_10 globalBody590_11

def globalBody590_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody590_14 : Prog (BitVec 64) :=
.seq globalBody590_12 globalBody590_13

def globalBody590_15 : Prog (BitVec 64) :=
.decCall ("stored_code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) globalBody590_14

def globalBody590_16 : Prog (BitVec 64) :=
.seq globalBody590_9 globalBody590_15

def globalBody590_17 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody590_16

def globalBody590_18 : Prog (BitVec 64) :=
.seq globalBody590_6 globalBody590_17

def globalBody590_19 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 128#64])) globalBody590_18

def globalBody590_20 : Prog (BitVec 64) :=
.dec ("code") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 120#64])) globalBody590_19

def globalData590 : Decl (BitVec 64) :=
.function { name := "create_finish", inline := false, exported := false, params := [("msg", Flapjack.Shape.one), ("child", Flapjack.Shape.one)], body := globalBody590_20, returnShape := (Flapjack.Shape.one) }
def globalOutput590 := Pancake.PanLang.declToHOL globalData590
end InitECandidate.Proofs.FrontendStages.Declarations
