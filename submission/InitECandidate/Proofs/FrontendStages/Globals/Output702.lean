import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data702
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody702_0 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r0" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.const 1#64]

def globalBody702_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r1" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r0")]

def globalBody702_2 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r2" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r1")]

def globalBody702_3 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r3" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r2")]

def globalBody702_4 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r4" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r3")]

def globalBody702_5 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r5" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r4")]

def globalBody702_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r0"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r1"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r2"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r3"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r4"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r5"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r5")])

def globalBody702_7 : Prog (BitVec 64) :=
.seq globalBody702_5 globalBody702_6

def globalBody702_8 : Prog (BitVec 64) :=
.dec ("r5") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_7

def globalBody702_9 : Prog (BitVec 64) :=
.seq globalBody702_4 globalBody702_8

def globalBody702_10 : Prog (BitVec 64) :=
.dec ("r4") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_9

def globalBody702_11 : Prog (BitVec 64) :=
.seq globalBody702_3 globalBody702_10

def globalBody702_12 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_11

def globalBody702_13 : Prog (BitVec 64) :=
.seq globalBody702_2 globalBody702_12

def globalBody702_14 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_13

def globalBody702_15 : Prog (BitVec 64) :=
.seq globalBody702_1 globalBody702_14

def globalBody702_16 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_15

def globalBody702_17 : Prog (BitVec 64) :=
.seq globalBody702_0 globalBody702_16

def globalBody702_18 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody702_17

def globalData702 : Decl (BitVec 64) :=
.function { name := "bls_fp_sub_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody702_18, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput702 := Pancake.PanLang.declToHOL globalData702
end InitECandidate.Proofs.FrontendStages.Declarations
