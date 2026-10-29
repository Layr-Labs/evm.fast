import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data144
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody144_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody144_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody144_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "ordinal")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64]))) globalBody144_0 globalBody144_1

def globalBody144_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "keyp",
      Flapjack.Exp.var Flapjack.VarKind.local "val"])

def globalBody144_4 : Prog (BitVec 64) :=
.dec ("val") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])) globalBody144_3

def globalBody144_5 : Prog (BitVec 64) :=
.dec ("keyp") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) globalBody144_4

def globalBody144_6 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody144_5

def globalBody144_7 : Prog (BitVec 64) :=
.dec ("leaf") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "ordinal", Flapjack.Exp.const 8#64]])) globalBody144_6

def globalBody144_8 : Prog (BitVec 64) :=
.seq globalBody144_2 globalBody144_7

def globalData144 : Decl (BitVec 64) :=
.function { name := "htab_item", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("ordinal", Flapjack.Shape.one)], body := globalBody144_8, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput144 := Pancake.PanLang.declToHOL globalData144
end InitECandidate.Proofs.FrontendStages.Declarations
