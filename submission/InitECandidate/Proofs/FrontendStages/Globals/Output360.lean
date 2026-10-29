import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data360
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody360_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64]),
      Flapjack.Exp.const 1#64])

def globalBody360_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 24#64])]

def globalBody360_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_del"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]

def globalBody360_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) globalBody360_1 globalBody360_2

def globalBody360_4 : Prog (BitVec 64) :=
.dec ("key") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 8#64])) globalBody360_3

def globalBody360_5 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "r")) globalBody360_4

def globalBody360_6 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 200#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64]),
        Flapjack.Exp.const 32#64]]) globalBody360_5

def globalBody360_7 : Prog (BitVec 64) :=
.seq globalBody360_0 globalBody360_6

def globalBody360_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "snap")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 16#64]))) globalBody360_7

def globalBody360_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody360_10 : Prog (BitVec 64) :=
.seq globalBody360_8 globalBody360_9

def globalData360 : Decl (BitVec 64) :=
.function { name := "state_restore", inline := false, exported := false, params := [("snap", Flapjack.Shape.one)], body := globalBody360_10, returnShape := (Flapjack.Shape.one) }
def globalOutput360 := Pancake.PanLang.declToHOL globalData360
end InitECandidate.Proofs.FrontendStages.Declarations
