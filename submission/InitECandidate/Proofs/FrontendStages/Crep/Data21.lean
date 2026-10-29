import InitECandidate.Proofs.FrontendStages.Crep.Translate5
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody21_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bswap64" [Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)]

def crepBody21_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody21_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody21_0 crepBody21_1

def crepBody21_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.op Flapjack.BinOp.or
            [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))
                (Flapjack.CrepExp.const 24#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
                (Flapjack.CrepExp.const 16#64),
              Flapjack.CrepExp.shift Flapjack.Shift.lsl
                (Flapjack.CrepExp.loadByte
                  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]))
                (Flapjack.CrepExp.const 8#64),
              Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64])])
          (Flapjack.CrepExp.const 32#64),
        Flapjack.CrepExp.op Flapjack.BinOp.or
          [Flapjack.CrepExp.shift Flapjack.Shift.lsl
              (Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64]))
              (Flapjack.CrepExp.const 24#64),
            Flapjack.CrepExp.shift Flapjack.Shift.lsl
              (Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 1#64]))
              (Flapjack.CrepExp.const 16#64),
            Flapjack.CrepExp.shift Flapjack.Shift.lsl
              (Flapjack.CrepExp.loadByte
                (Flapjack.CrepExp.op Flapjack.BinOp.add
                  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 2#64]))
              (Flapjack.CrepExp.const 8#64),
            Flapjack.CrepExp.loadByte
              (Flapjack.CrepExp.op Flapjack.BinOp.add
                [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 3#64])]]]

def crepBody21_4 : CrepProg (BitVec 64) :=
.seq crepBody21_2 crepBody21_3

def data21 : CrepProg (BitVec 64) := crepBody21_4
def output21 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 98#8, 101#8, 54#8, 52#8], [0], crepProgToHOL data21)
end InitECandidate.Proofs.FrontendStages.Crep
