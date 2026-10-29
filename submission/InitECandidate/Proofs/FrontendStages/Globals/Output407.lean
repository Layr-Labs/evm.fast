import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data407
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody407_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "np",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "n"]]

def globalBody407_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "np")

def globalBody407_2 : Prog (BitVec 64) :=
.seq globalBody407_0 globalBody407_1

def globalBody407_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "cap", Flapjack.Exp.const 2#64])

def globalBody407_4 : Prog (BitVec 64) :=
.seq globalBody407_2 globalBody407_3

def globalBody407_5 : Prog (BitVec 64) :=
.decCall ("np") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"],
      Flapjack.Exp.const 2#64]]) globalBody407_4

def globalBody407_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody407_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody407_5 globalBody407_6

def globalBody407_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody407_9 : Prog (BitVec 64) :=
.seq globalBody407_7 globalBody407_8

def globalBody407_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "esz"]])

def globalBody407_11 : Prog (BitVec 64) :=
.seq globalBody407_9 globalBody407_10

def globalBody407_12 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])) globalBody407_11

def globalBody407_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])) globalBody407_12

def globalData407 : Decl (BitVec 64) :=
.function { name := "lst_push", inline := false, exported := false, params := [("l", Flapjack.Shape.one), ("esz", Flapjack.Shape.one)], body := globalBody407_13, returnShape := (Flapjack.Shape.one) }
def globalOutput407 := Pancake.PanLang.declToHOL globalData407
end InitECandidate.Proofs.FrontendStages.Declarations
