import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data589
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody589_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 7#64)

def globalBody589_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody589_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]))) globalBody589_0 globalBody589_1

def globalBody589_3 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "perr",
          Flapjack.Prog.seq
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.seq
                    (Flapjack.Prog.seq
                      (Flapjack.Prog.seq
                        (Flapjack.Prog.seq
                          (Flapjack.Prog.ite
                            (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "perr")
                              (Flapjack.Exp.const 1#64))
                            (Flapjack.Prog.seq
                              (Flapjack.Prog.seq
                                (Flapjack.Prog.seq
                                  (Flapjack.Prog.seq
                                    (Flapjack.Prog.call (some (none, none)) "scratch_release"
                                      [Flapjack.Exp.load Flapjack.Shape.one
                                          (Flapjack.Exp.op Flapjack.BinOp.add
                                            [Flapjack.Exp.var Flapjack.VarKind.local "child",
                                              Flapjack.Exp.const 208#64])])
                                    (Flapjack.Prog.call (some (none, none)) "frame_mem_release"
                                      [Flapjack.Exp.load Flapjack.Shape.one
                                          (Flapjack.Exp.op Flapjack.BinOp.add
                                            [Flapjack.Exp.var Flapjack.VarKind.local "child",
                                              Flapjack.Exp.const 224#64])]))
                                  (Flapjack.Prog.store
                                    (Flapjack.Exp.op Flapjack.BinOp.sub
                                      [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])
                                    (Flapjack.Exp.var Flapjack.VarKind.local "parent")))
                                (Flapjack.Prog.store
                                  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64])
                                  (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont")))
                              (Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.var Flapjack.VarKind.local "perr")))
                            Flapjack.Prog.skip)
                          (Flapjack.Prog.call (some (none, none)) "state_restore"
                            [Flapjack.Exp.var Flapjack.VarKind.local "prep_snapshot"]))
                        (Flapjack.Prog.store
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])
                          (Flapjack.Exp.var Flapjack.VarKind.local "prep_reservoir")))
                      (Flapjack.Prog.store
                        (Flapjack.Exp.op Flapjack.BinOp.add
                          [Flapjack.Exp.load Flapjack.Shape.one
                              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
                            Flapjack.Exp.const 200#64])
                        (Flapjack.Exp.const 0#64)))
                    (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" []))
                  (Flapjack.Prog.call (some (none, none)) "frame_halt"
                    [Flapjack.Exp.var Flapjack.VarKind.local "perr"]))
                (Flapjack.Prog.store
                  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])
                  (Flapjack.Exp.var Flapjack.VarKind.local "parent")))
              (Flapjack.Prog.store
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64])
                (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont")))
            (Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")))))
  "depth0_prepare" []

def globalBody589_4 : Prog (BitVec 64) :=
.dec ("perr") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody589_3

def globalBody589_5 : Prog (BitVec 64) :=
.dec ("prep_reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])) globalBody589_4

def globalBody589_6 : Prog (BitVec 64) :=
.decCall ("prep_snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) globalBody589_5

def globalBody589_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]))
  (Flapjack.Exp.const 0#64)) globalBody589_6 globalBody589_1

def globalBody589_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "snapshot")

def globalBody589_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_start" []

def globalBody589_10 : Prog (BitVec 64) :=
.seq globalBody589_8 globalBody589_9

def globalBody589_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "run_frames" []

def globalBody589_12 : Prog (BitVec 64) :=
.seq globalBody589_10 globalBody589_11

def globalBody589_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def globalBody589_14 : Prog (BitVec 64) :=
.seq globalBody589_12 globalBody589_13

def globalBody589_15 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) globalBody589_14

def globalBody589_16 : Prog (BitVec 64) :=
.seq globalBody589_7 globalBody589_15

def globalBody589_17 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_open") ([Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64]) globalBody589_16

def globalBody589_18 : Prog (BitVec 64) :=
.dec ("parent_cont") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 288#64])) globalBody589_17

def globalBody589_19 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64])) globalBody589_18

def globalBody589_20 : Prog (BitVec 64) :=
.seq globalBody589_2 globalBody589_19

def globalData589 : Decl (BitVec 64) :=
.function { name := "process_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := globalBody589_20, returnShape := (Flapjack.Shape.one) }
def globalOutput589 := Pancake.PanLang.declToHOL globalData589
end InitECandidate.Proofs.FrontendStages.Declarations
