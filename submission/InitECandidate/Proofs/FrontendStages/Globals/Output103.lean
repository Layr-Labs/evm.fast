import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data103
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody103_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i"])])

def globalBody103_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64])

def globalBody103_2 : Prog (BitVec 64) :=
.seq globalBody103_0 globalBody103_1

def globalBody103_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 136#64)) globalBody103_2

def globalBody103_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i"]),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 1#64]))
            (Flapjack.Exp.const 8#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 2#64]))
            (Flapjack.Exp.const 16#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                  Flapjack.Exp.const 3#64]))
            (Flapjack.Exp.const 24#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.op Flapjack.BinOp.or
              [Flapjack.Exp.loadByte
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                      Flapjack.Exp.const 4#64]),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
                  (Flapjack.Exp.const 8#64),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
                  (Flapjack.Exp.const 16#64),
                Flapjack.Exp.shift Flapjack.Shift.lsl
                  (Flapjack.Exp.loadByte
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.var Flapjack.VarKind.local "i",
                        Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64]))
                  (Flapjack.Exp.const 24#64)])
            (Flapjack.Exp.const 32#64)]])

def globalBody103_5 : Prog (BitVec 64) :=
.seq globalBody103_4 globalBody103_1

def globalBody103_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 136#64)) globalBody103_5

def globalBody103_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "blk", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody103_3 globalBody103_6

def globalBody103_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_f1600" [Flapjack.Exp.var Flapjack.VarKind.local "stp"]

def globalBody103_9 : Prog (BitVec 64) :=
.seq globalBody103_7 globalBody103_8

def globalBody103_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody103_11 : Prog (BitVec 64) :=
.seq globalBody103_9 globalBody103_10

def globalBody103_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody103_11

def globalData103 : Decl (BitVec 64) :=
.function { name := "keccak_absorb_block", inline := false, exported := false, params := [("stp", Flapjack.Shape.one), ("blk", Flapjack.Shape.one)], body := globalBody103_12, returnShape := (Flapjack.Shape.one) }
def globalOutput103 := Pancake.PanLang.declToHOL globalData103
end InitECandidate.Proofs.FrontendStages.Declarations
