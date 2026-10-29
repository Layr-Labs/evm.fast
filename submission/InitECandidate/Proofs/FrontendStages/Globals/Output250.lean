import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data250
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody250_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 5#64]

def globalBody250_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody250_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody250_0 globalBody250_1

def globalBody250_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "c0", Flapjack.Exp.const 15#64])

def globalBody250_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 1#64)

def globalBody250_5 : Prog (BitVec 64) :=
.seq globalBody250_3 globalBody250_4

def globalBody250_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "odd") (Flapjack.Exp.const 0#64)) globalBody250_5 globalBody250_1

def globalBody250_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "k"]]

def globalBody250_8 : Prog (BitVec 64) :=
.seq globalBody250_6 globalBody250_7

def globalBody250_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "k",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.const 2#64,
              Flapjack.Exp.op Flapjack.BinOp.sub
                [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64]]],
      Flapjack.Exp.var Flapjack.VarKind.local "is_leaf"])

def globalBody250_10 : Prog (BitVec 64) :=
.seq globalBody250_8 globalBody250_9

def globalBody250_11 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody250_10

def globalBody250_12 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]]) globalBody250_11

def globalBody250_13 : Prog (BitVec 64) :=
.dec ("odd") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "first", Flapjack.Exp.const 1#64]) globalBody250_12

def globalBody250_14 : Prog (BitVec 64) :=
.dec ("is_leaf") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "first") (Flapjack.Exp.const 1#64),
    Flapjack.Exp.const 1#64]) globalBody250_13

def globalBody250_15 : Prog (BitVec 64) :=
.dec ("first") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "c0") (Flapjack.Exp.const 4#64)) globalBody250_14

def globalBody250_16 : Prog (BitVec 64) :=
.dec ("c0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody250_15

def globalBody250_17 : Prog (BitVec 64) :=
.seq globalBody250_2 globalBody250_16

def globalData250 : Decl (BitVec 64) :=
.function { name := "compact_to_nibbles", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody250_17, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput250 := Pancake.PanLang.declToHOL globalData250
end InitECandidate.Proofs.FrontendStages.Declarations
