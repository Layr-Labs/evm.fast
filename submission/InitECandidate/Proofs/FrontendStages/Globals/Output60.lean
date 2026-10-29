import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data60
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate44
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody60_0 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "mid" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b1"],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b0"],
    Flapjack.Exp.const 0#64]

def globalBody60_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "lo" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "p00",
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mid"))
      (Flapjack.Exp.const 32#64),
    Flapjack.Exp.const 0#64]

def globalBody60_2 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lo"),
      Flapjack.Exp.var Flapjack.VarKind.local "hi"])

def globalBody60_3 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p11",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mid"))
      (Flapjack.Exp.const 32#64),
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mid"))
      (Flapjack.Exp.const 32#64),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lo")]) globalBody60_2

def globalBody60_4 : Prog (BitVec 64) :=
.seq globalBody60_1 globalBody60_3

def globalBody60_5 : Prog (BitVec 64) :=
.dec ("lo") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody60_4

def globalBody60_6 : Prog (BitVec 64) :=
.seq globalBody60_0 globalBody60_5

def globalBody60_7 : Prog (BitVec 64) :=
.dec ("mid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody60_6

def globalBody60_8 : Prog (BitVec 64) :=
.dec ("p11") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b1"]) globalBody60_7

def globalBody60_9 : Prog (BitVec 64) :=
.dec ("p00") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b0"]) globalBody60_8

def globalBody60_10 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 32#64)) globalBody60_9

def globalBody60_11 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 4294967295#64]) globalBody60_10

def globalBody60_12 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 32#64)) globalBody60_11

def globalBody60_13 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 4294967295#64]) globalBody60_12

def globalData60 : Decl (BitVec 64) :=
.function { name := "mul64x64", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := globalBody60_13, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput60 := Pancake.PanLang.declToHOL globalData60
end InitECandidate.Proofs.FrontendStages.Declarations
