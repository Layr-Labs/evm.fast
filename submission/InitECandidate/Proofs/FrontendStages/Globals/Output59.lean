import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data59
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate43
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody59_0 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r0" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.const 0#64,
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.const 1#64]

def globalBody59_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r1" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.const 0#64,
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r0")]

def globalBody59_2 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r2" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.const 0#64,
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r1")]

def globalBody59_3 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r3" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.const 0#64,
    Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64]],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r2")]

def globalBody59_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r0"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r1"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r2"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r3")])

def globalBody59_5 : Prog (BitVec 64) :=
.seq globalBody59_3 globalBody59_4

def globalBody59_6 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody59_5

def globalBody59_7 : Prog (BitVec 64) :=
.seq globalBody59_2 globalBody59_6

def globalBody59_8 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody59_7

def globalBody59_9 : Prog (BitVec 64) :=
.seq globalBody59_1 globalBody59_8

def globalBody59_10 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody59_9

def globalBody59_11 : Prog (BitVec 64) :=
.seq globalBody59_0 globalBody59_10

def globalBody59_12 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody59_11

def globalData59 : Decl (BitVec 64) :=
.function { name := "u256_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody59_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput59 := Pancake.PanLang.declToHOL globalData59
end InitECandidate.Proofs.FrontendStages.Declarations
