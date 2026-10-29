import InitECandidate.Proofs.FrontendStages.Declarations.Data98
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody98_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_state_init"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64])]

def globalBody98_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
        Flapjack.Exp.const 32#64],
    Flapjack.Exp.var Flapjack.VarKind.local "input_a", Flapjack.Exp.const 32#64]

def globalBody98_2 : Prog (BitVec 64) :=
.seq globalBody98_0 globalBody98_1

def globalBody98_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
        Flapjack.Exp.const 64#64],
    Flapjack.Exp.var Flapjack.VarKind.local "input_b", Flapjack.Exp.const 32#64]

def globalBody98_4 : Prog (BitVec 64) :=
.seq globalBody98_2 globalBody98_3

def globalBody98_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
        Flapjack.Exp.const 32#64]]

def globalBody98_6 : Prog (BitVec 64) :=
.seq globalBody98_4 globalBody98_5

def globalBody98_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
        Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 64#64]

def globalBody98_8 : Prog (BitVec 64) :=
.seq globalBody98_6 globalBody98_7

def globalBody98_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 128#64)

def globalBody98_10 : Prog (BitVec 64) :=
.seq globalBody98_8 globalBody98_9

def globalBody98_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 64#64]),
        Flapjack.Exp.const 88#64],
    Flapjack.Exp.const 512#64]

def globalBody98_12 : Prog (BitVec 64) :=
.seq globalBody98_10 globalBody98_11

def globalBody98_13 : Prog (BitVec 64) :=
.seq globalBody98_12 globalBody98_5

def globalBody98_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_finish"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody98_15 : Prog (BitVec 64) :=
.seq globalBody98_13 globalBody98_14

def globalBody98_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody98_17 : Prog (BitVec 64) :=
.seq globalBody98_15 globalBody98_16

def globalData98 : Decl (BitVec 64) := .function { name := "sha256_pair", inline := false, exported := false, params := [("input_a", Flapjack.Shape.one), ("input_b", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody98_17, returnShape := (Flapjack.Shape.one) }
def globalOutput98 := Pancake.PanLang.declToHOL globalData98
end InitECandidate.Proofs.FrontendStages.Declarations
