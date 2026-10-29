import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data76
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate60
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody76_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody76_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody76_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "m")])
  (Flapjack.Exp.const 0#64)) globalBody76_0 globalBody76_1

def globalBody76_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_mod"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody76_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody76_3 globalBody76_1

def globalBody76_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "sum"]

def globalBody76_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def globalBody76_7 : Prog (BitVec 64) :=
.seq globalBody76_5 globalBody76_6

def globalBody76_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def globalBody76_9 : Prog (BitVec 64) :=
.seq globalBody76_7 globalBody76_8

def globalBody76_10 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 10#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody76_11 : Prog (BitVec 64) :=
.seq globalBody76_9 globalBody76_10

def globalBody76_12 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 424#64]) globalBody76_11

def globalBody76_13 : Prog (BitVec 64) :=
.seq globalBody76_4 globalBody76_12

def globalBody76_14 : Prog (BitVec 64) :=
.dec ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) globalBody76_13

def globalBody76_15 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody76_14

def globalBody76_16 : Prog (BitVec 64) :=
.seq globalBody76_2 globalBody76_15

def globalData76 : Decl (BitVec 64) :=
.function { name := "u256_addmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody76_16, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput76 := Pancake.PanLang.declToHOL globalData76
end InitECandidate.Proofs.FrontendStages.Declarations
