import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data69
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate53
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody69_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "d"]

def globalBody69_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def globalBody69_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody69_3 : Prog (BitVec 64) :=
.seq globalBody69_1 globalBody69_2

def globalBody69_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) globalBody69_3

def globalBody69_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_to_u256" [Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody69_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody69_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mm")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody69_5 globalBody69_6

def globalBody69_8 : Prog (BitVec 64) :=
.seq globalBody69_4 globalBody69_7

def globalBody69_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody69_10 : Prog (BitVec 64) :=
.seq globalBody69_8 globalBody69_9

def globalBody69_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def globalBody69_12 : Prog (BitVec 64) :=
.seq globalBody69_11 globalBody69_2

def globalBody69_13 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) globalBody69_12

def globalBody69_14 : Prog (BitVec 64) :=
.seq globalBody69_10 globalBody69_13

def globalBody69_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "divmnu"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "mm",
    Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody69_16 : Prog (BitVec 64) :=
.seq globalBody69_14 globalBody69_15

def globalBody69_17 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_to_u256" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody69_18 : Prog (BitVec 64) :=
.seq globalBody69_16 globalBody69_17

def globalBody69_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody69_18

def globalBody69_20 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody69_19

def globalBody69_21 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 8#64]) globalBody69_20

def globalBody69_22 : Prog (BitVec 64) :=
.seq globalBody69_0 globalBody69_21

def globalBody69_23 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 560#64]) globalBody69_22

def globalBody69_24 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 352#64]) globalBody69_23

def globalBody69_25 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 216#64]) globalBody69_24

def globalData69 : Decl (BitVec 64) :=
.function { name := "digits_divmod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("d", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody69_25, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput69 := Pancake.PanLang.declToHOL globalData69
end InitECandidate.Proofs.FrontendStages.Declarations
