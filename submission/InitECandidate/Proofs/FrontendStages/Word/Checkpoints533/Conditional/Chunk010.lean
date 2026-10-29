import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints533.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
theorem node3840_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 164) = (output3840, (597, 164)) := by
  rw [output3840_def]
  kernel_rfl

theorem node3841_conditional
    (child3840 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 164) = (output3840, (597, 164))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 164) = (output3841, (597, 164)) := by
  rw [output3841_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3840

theorem node3842_conditional
    (child3839 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 164) = (output3839, (597, 164)))
    (child3841 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 164) = (output3841, (597, 164))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 164) = (output3842, (597, 164)) := by
  rw [output3842_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3839 child3841

theorem node3843_conditional
    (child3842 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 164) = (output3842, (597, 164))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 164) = (output3843, (597, 164)) := by
  rw [output3843_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3842

theorem node3844_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 164) = (output3844, (597, 164)) := by
  rw [output3844_def]
  kernel_rfl

theorem node3845_conditional
    (child3844 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 164) = (output3844, (597, 164))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 164) = (output3845, (597, 164)) := by
  rw [output3845_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3844

theorem node3846_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2216 (597, 164) = (output3846, (597, 166)) := by
  rw [output3846_def]
  kernel_rfl

theorem node3847_conditional
    (child3846 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2216 (597, 164) = (output3846, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2217 (597, 164) = (output3847, (597, 166)) := by
  rw [output3847_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3846

theorem node3848_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 166) = (output3848, (597, 166)) := by
  rw [output3848_def]
  kernel_rfl

theorem node3849_conditional
    (child3848 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 166) = (output3848, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166)) := by
  rw [output3849_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3848

theorem node3850_conditional
    (child3847 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2217 (597, 164) = (output3847, (597, 166)))
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2218 (597, 164) = (output3850, (597, 166)) := by
  rw [output3850_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3847 child3849

theorem node3851_conditional
    (child3850 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2218 (597, 164) = (output3850, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2219 (597, 164) = (output3851, (597, 166)) := by
  rw [output3851_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3850

theorem node3852_conditional
    (child3803 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 164) = (output3803, (597, 164)))
    (child3851 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2219 (597, 164) = (output3851, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2220 (597, 164) = (output3852, (597, 166)) := by
  rw [output3852_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3803 child3851

theorem node3853_conditional
    (child3852 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2220 (597, 164) = (output3852, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2221 (597, 164) = (output3853, (597, 166)) := by
  rw [output3853_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3852

theorem node3854_conditional
    (child3803 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 164) = (output3803, (597, 164)))
    (child3853 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2221 (597, 164) = (output3853, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2222 (597, 164) = (output3854, (597, 166)) := by
  rw [output3854_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3803 child3853

theorem node3855_conditional
    (child3854 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2222 (597, 164) = (output3854, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2223 (597, 164) = (output3855, (597, 166)) := by
  rw [output3855_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3854

theorem node3856_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 166) = (output3856, (597, 166)) := by
  rw [output3856_def]
  kernel_rfl

theorem node3857_conditional
    (child3856 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 166) = (output3856, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 166) = (output3857, (597, 166)) := by
  rw [output3857_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3856

theorem node3858_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 166) = (output3858, (597, 166)) := by
  rw [output3858_def]
  kernel_rfl

theorem node3859_conditional
    (child3858 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 166) = (output3858, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 166) = (output3859, (597, 166)) := by
  rw [output3859_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3858

theorem node3860_conditional
    (child3859 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 166) = (output3859, (597, 166)))
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 166) = (output3860, (597, 166)) := by
  rw [output3860_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3859 child3849

theorem node3861_conditional
    (child3860 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 166) = (output3860, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 166) = (output3861, (597, 166)) := by
  rw [output3861_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3860

theorem node3862_conditional
    (child3857 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 166) = (output3857, (597, 166)))
    (child3861 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 166) = (output3861, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 166) = (output3862, (597, 166)) := by
  rw [output3862_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3857 child3861

theorem node3863_conditional
    (child3862 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 166) = (output3862, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 166) = (output3863, (597, 166)) := by
  rw [output3863_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3862

theorem node3864_conditional
    (child3855 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2223 (597, 164) = (output3855, (597, 166)))
    (child3863 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 166) = (output3863, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2224 (597, 164) = (output3864, (597, 166)) := by
  rw [output3864_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3855 child3863

theorem node3865_conditional
    (child3864 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2224 (597, 164) = (output3864, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2225 (597, 164) = (output3865, (597, 166)) := by
  rw [output3865_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3864

theorem node3866_conditional
    (child3865 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2225 (597, 164) = (output3865, (597, 166)))
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2226 (597, 164) = (output3866, (597, 166)) := by
  rw [output3866_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3865 child3849

theorem node3867_conditional
    (child3866 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2226 (597, 164) = (output3866, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2227 (597, 164) = (output3867, (597, 166)) := by
  rw [output3867_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3866

theorem node3868_conditional
    (child3867 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2227 (597, 164) = (output3867, (597, 166)))
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2228 (597, 164) = (output3868, (597, 166)) := by
  rw [output3868_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3867 child3849

theorem node3869_conditional
    (child3868 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2228 (597, 164) = (output3868, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2229 (597, 164) = (output3869, (597, 166)) := by
  rw [output3869_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3868

theorem node3870_conditional
    (child3845 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 164) = (output3845, (597, 164)))
    (child3869 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2229 (597, 164) = (output3869, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2230 (597, 164) = (output3870, (597, 166)) := by
  rw [output3870_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3845 child3869

theorem node3871_conditional
    (child3870 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2230 (597, 164) = (output3870, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2231 (597, 164) = (output3871, (597, 166)) := by
  rw [output3871_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3870

theorem node3872_conditional
    (child3843 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 164) = (output3843, (597, 164)))
    (child3871 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2231 (597, 164) = (output3871, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2232 (597, 164) = (output3872, (597, 166)) := by
  rw [output3872_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3843 child3871

theorem node3873_conditional
    (child3872 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2232 (597, 164) = (output3872, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2233 (597, 164) = (output3873, (597, 166)) := by
  rw [output3873_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3872

theorem node3874_conditional
    (child3837 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2215 (597, 164) = (output3837, (597, 164)))
    (child3873 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2233 (597, 164) = (output3873, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2234 (597, 164) = (output3874, (597, 166)) := by
  rw [output3874_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3837 child3873

theorem node3875_conditional
    (child3874 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2234 (597, 164) = (output3874, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2235 (597, 164) = (output3875, (597, 166)) := by
  rw [output3875_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3874

theorem node3876_conditional
    (child3835 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 164) = (output3835, (597, 164)))
    (child3875 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2235 (597, 164) = (output3875, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2236 (597, 164) = (output3876, (597, 166)) := by
  rw [output3876_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3835 child3875

theorem node3877_conditional
    (child3876 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2236 (597, 164) = (output3876, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2237 (597, 164) = (output3877, (597, 166)) := by
  rw [output3877_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3876

theorem node3878_conditional
    (child3833 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2213 (597, 2) = (output3833, (597, 164)))
    (child3877 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2237 (597, 164) = (output3877, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2238 (597, 2) = (output3878, (597, 166)) := by
  rw [output3878_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3833 child3877

theorem node3879_conditional
    (child3878 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2238 (597, 2) = (output3878, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2239 (597, 2) = (output3879, (597, 166)) := by
  rw [output3879_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3878

theorem node3880_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 166) = (output3880, (597, 166)) := by
  rw [output3880_def]
  kernel_rfl

theorem node3881_conditional
    (child3880 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 166) = (output3880, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 166) = (output3881, (597, 166)) := by
  rw [output3881_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3880

theorem node3882_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2240 (597, 166) = (output3882, (597, 166)) := by
  rw [output3882_def]
  kernel_rfl

theorem node3883_conditional
    (child3882 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2240 (597, 166) = (output3882, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2241 (597, 166) = (output3883, (597, 166)) := by
  rw [output3883_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3882

theorem node3884_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 166) = (output3884, (597, 166)) := by
  rw [output3884_def]
  kernel_rfl

theorem node3885_conditional
    (child3884 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 166) = (output3884, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 166) = (output3885, (597, 166)) := by
  rw [output3885_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3884

theorem node3886_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 166) = (output3886, (597, 166)) := by
  rw [output3886_def]
  kernel_rfl

theorem node3887_conditional
    (child3886 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 166) = (output3886, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 166) = (output3887, (597, 166)) := by
  rw [output3887_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3886

theorem node3888_conditional
    (child3885 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 166) = (output3885, (597, 166)))
    (child3887 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 166) = (output3887, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 166) = (output3888, (597, 166)) := by
  rw [output3888_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3885 child3887

theorem node3889_conditional
    (child3888 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 166) = (output3888, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 166) = (output3889, (597, 166)) := by
  rw [output3889_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3888

theorem node3890_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 166) = (output3890, (597, 166)) := by
  rw [output3890_def]
  kernel_rfl

theorem node3891_conditional
    (child3890 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 166) = (output3890, (597, 166))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 166) = (output3891, (597, 166)) := by
  rw [output3891_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3890

theorem node3892_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2242 (597, 166) = (output3892, (597, 168)) := by
  rw [output3892_def]
  kernel_rfl

theorem node3893_conditional
    (child3892 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2242 (597, 166) = (output3892, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2243 (597, 166) = (output3893, (597, 168)) := by
  rw [output3893_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3892

theorem node3894_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 168) = (output3894, (597, 168)) := by
  rw [output3894_def]
  kernel_rfl

theorem node3895_conditional
    (child3894 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 168) = (output3894, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168)) := by
  rw [output3895_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3894

theorem node3896_conditional
    (child3893 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2243 (597, 166) = (output3893, (597, 168)))
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2244 (597, 166) = (output3896, (597, 168)) := by
  rw [output3896_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3893 child3895

theorem node3897_conditional
    (child3896 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2244 (597, 166) = (output3896, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2245 (597, 166) = (output3897, (597, 168)) := by
  rw [output3897_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3896

theorem node3898_conditional
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166)))
    (child3897 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2245 (597, 166) = (output3897, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2246 (597, 166) = (output3898, (597, 168)) := by
  rw [output3898_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3849 child3897

theorem node3899_conditional
    (child3898 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2246 (597, 166) = (output3898, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2247 (597, 166) = (output3899, (597, 168)) := by
  rw [output3899_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3898

theorem node3900_conditional
    (child3849 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 166) = (output3849, (597, 166)))
    (child3899 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2247 (597, 166) = (output3899, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2248 (597, 166) = (output3900, (597, 168)) := by
  rw [output3900_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3849 child3899

theorem node3901_conditional
    (child3900 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2248 (597, 166) = (output3900, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2249 (597, 166) = (output3901, (597, 168)) := by
  rw [output3901_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3900

theorem node3902_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 168) = (output3902, (597, 168)) := by
  rw [output3902_def]
  kernel_rfl

theorem node3903_conditional
    (child3902 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 168) = (output3902, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 168) = (output3903, (597, 168)) := by
  rw [output3903_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3902

theorem node3904_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 168) = (output3904, (597, 168)) := by
  rw [output3904_def]
  kernel_rfl

theorem node3905_conditional
    (child3904 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 168) = (output3904, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 168) = (output3905, (597, 168)) := by
  rw [output3905_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3904

theorem node3906_conditional
    (child3905 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 168) = (output3905, (597, 168)))
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 168) = (output3906, (597, 168)) := by
  rw [output3906_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3905 child3895

theorem node3907_conditional
    (child3906 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 168) = (output3906, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 168) = (output3907, (597, 168)) := by
  rw [output3907_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3906

theorem node3908_conditional
    (child3903 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 168) = (output3903, (597, 168)))
    (child3907 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 168) = (output3907, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 168) = (output3908, (597, 168)) := by
  rw [output3908_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3903 child3907

theorem node3909_conditional
    (child3908 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 168) = (output3908, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 168) = (output3909, (597, 168)) := by
  rw [output3909_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3908

theorem node3910_conditional
    (child3901 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2249 (597, 166) = (output3901, (597, 168)))
    (child3909 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 168) = (output3909, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2250 (597, 166) = (output3910, (597, 168)) := by
  rw [output3910_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3901 child3909

theorem node3911_conditional
    (child3910 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2250 (597, 166) = (output3910, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2251 (597, 166) = (output3911, (597, 168)) := by
  rw [output3911_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3910

theorem node3912_conditional
    (child3911 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2251 (597, 166) = (output3911, (597, 168)))
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2252 (597, 166) = (output3912, (597, 168)) := by
  rw [output3912_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3911 child3895

theorem node3913_conditional
    (child3912 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2252 (597, 166) = (output3912, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2253 (597, 166) = (output3913, (597, 168)) := by
  rw [output3913_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3912

theorem node3914_conditional
    (child3913 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2253 (597, 166) = (output3913, (597, 168)))
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2254 (597, 166) = (output3914, (597, 168)) := by
  rw [output3914_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3913 child3895

theorem node3915_conditional
    (child3914 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2254 (597, 166) = (output3914, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2255 (597, 166) = (output3915, (597, 168)) := by
  rw [output3915_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3914

theorem node3916_conditional
    (child3891 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 166) = (output3891, (597, 166)))
    (child3915 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2255 (597, 166) = (output3915, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2256 (597, 166) = (output3916, (597, 168)) := by
  rw [output3916_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3891 child3915

theorem node3917_conditional
    (child3916 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2256 (597, 166) = (output3916, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2257 (597, 166) = (output3917, (597, 168)) := by
  rw [output3917_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3916

theorem node3918_conditional
    (child3889 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 166) = (output3889, (597, 166)))
    (child3917 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2257 (597, 166) = (output3917, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2258 (597, 166) = (output3918, (597, 168)) := by
  rw [output3918_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3889 child3917

theorem node3919_conditional
    (child3918 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2258 (597, 166) = (output3918, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2259 (597, 166) = (output3919, (597, 168)) := by
  rw [output3919_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3918

theorem node3920_conditional
    (child3883 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2241 (597, 166) = (output3883, (597, 166)))
    (child3919 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2259 (597, 166) = (output3919, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2260 (597, 166) = (output3920, (597, 168)) := by
  rw [output3920_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3883 child3919

theorem node3921_conditional
    (child3920 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2260 (597, 166) = (output3920, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2261 (597, 166) = (output3921, (597, 168)) := by
  rw [output3921_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3920

theorem node3922_conditional
    (child3881 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 166) = (output3881, (597, 166)))
    (child3921 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2261 (597, 166) = (output3921, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2262 (597, 166) = (output3922, (597, 168)) := by
  rw [output3922_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3881 child3921

theorem node3923_conditional
    (child3922 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2262 (597, 166) = (output3922, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2263 (597, 166) = (output3923, (597, 168)) := by
  rw [output3923_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3922

theorem node3924_conditional
    (child3879 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2239 (597, 2) = (output3879, (597, 166)))
    (child3923 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2263 (597, 166) = (output3923, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2264 (597, 2) = (output3924, (597, 168)) := by
  rw [output3924_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3879 child3923

theorem node3925_conditional
    (child3924 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2264 (597, 2) = (output3924, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2265 (597, 2) = (output3925, (597, 168)) := by
  rw [output3925_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3924

theorem node3926_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 168) = (output3926, (597, 168)) := by
  rw [output3926_def]
  kernel_rfl

theorem node3927_conditional
    (child3926 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 168) = (output3926, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 168) = (output3927, (597, 168)) := by
  rw [output3927_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3926

theorem node3928_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2266 (597, 168) = (output3928, (597, 168)) := by
  rw [output3928_def]
  kernel_rfl

theorem node3929_conditional
    (child3928 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2266 (597, 168) = (output3928, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2267 (597, 168) = (output3929, (597, 168)) := by
  rw [output3929_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3928

theorem node3930_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 168) = (output3930, (597, 168)) := by
  rw [output3930_def]
  kernel_rfl

theorem node3931_conditional
    (child3930 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 168) = (output3930, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 168) = (output3931, (597, 168)) := by
  rw [output3931_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3930

theorem node3932_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 168) = (output3932, (597, 168)) := by
  rw [output3932_def]
  kernel_rfl

theorem node3933_conditional
    (child3932 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 168) = (output3932, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 168) = (output3933, (597, 168)) := by
  rw [output3933_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3932

theorem node3934_conditional
    (child3931 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 168) = (output3931, (597, 168)))
    (child3933 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 168) = (output3933, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 168) = (output3934, (597, 168)) := by
  rw [output3934_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3931 child3933

theorem node3935_conditional
    (child3934 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 168) = (output3934, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 168) = (output3935, (597, 168)) := by
  rw [output3935_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3934

theorem node3936_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 168) = (output3936, (597, 168)) := by
  rw [output3936_def]
  kernel_rfl

theorem node3937_conditional
    (child3936 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 168) = (output3936, (597, 168))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 168) = (output3937, (597, 168)) := by
  rw [output3937_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3936

theorem node3938_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2268 (597, 168) = (output3938, (597, 170)) := by
  rw [output3938_def]
  kernel_rfl

theorem node3939_conditional
    (child3938 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2268 (597, 168) = (output3938, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2269 (597, 168) = (output3939, (597, 170)) := by
  rw [output3939_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3938

theorem node3940_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 170) = (output3940, (597, 170)) := by
  rw [output3940_def]
  kernel_rfl

theorem node3941_conditional
    (child3940 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 170) = (output3940, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170)) := by
  rw [output3941_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3940

theorem node3942_conditional
    (child3939 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2269 (597, 168) = (output3939, (597, 170)))
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2270 (597, 168) = (output3942, (597, 170)) := by
  rw [output3942_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3939 child3941

theorem node3943_conditional
    (child3942 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2270 (597, 168) = (output3942, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2271 (597, 168) = (output3943, (597, 170)) := by
  rw [output3943_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3942

theorem node3944_conditional
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168)))
    (child3943 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2271 (597, 168) = (output3943, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2272 (597, 168) = (output3944, (597, 170)) := by
  rw [output3944_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3895 child3943

theorem node3945_conditional
    (child3944 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2272 (597, 168) = (output3944, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2273 (597, 168) = (output3945, (597, 170)) := by
  rw [output3945_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3944

theorem node3946_conditional
    (child3895 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 168) = (output3895, (597, 168)))
    (child3945 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2273 (597, 168) = (output3945, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2274 (597, 168) = (output3946, (597, 170)) := by
  rw [output3946_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3895 child3945

theorem node3947_conditional
    (child3946 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2274 (597, 168) = (output3946, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2275 (597, 168) = (output3947, (597, 170)) := by
  rw [output3947_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3946

theorem node3948_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 170) = (output3948, (597, 170)) := by
  rw [output3948_def]
  kernel_rfl

theorem node3949_conditional
    (child3948 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 170) = (output3948, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 170) = (output3949, (597, 170)) := by
  rw [output3949_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3948

theorem node3950_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 170) = (output3950, (597, 170)) := by
  rw [output3950_def]
  kernel_rfl

theorem node3951_conditional
    (child3950 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 170) = (output3950, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 170) = (output3951, (597, 170)) := by
  rw [output3951_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3950

theorem node3952_conditional
    (child3951 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 170) = (output3951, (597, 170)))
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 170) = (output3952, (597, 170)) := by
  rw [output3952_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3951 child3941

theorem node3953_conditional
    (child3952 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 170) = (output3952, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 170) = (output3953, (597, 170)) := by
  rw [output3953_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3952

theorem node3954_conditional
    (child3949 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 170) = (output3949, (597, 170)))
    (child3953 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 170) = (output3953, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 170) = (output3954, (597, 170)) := by
  rw [output3954_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3949 child3953

theorem node3955_conditional
    (child3954 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 170) = (output3954, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 170) = (output3955, (597, 170)) := by
  rw [output3955_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3954

theorem node3956_conditional
    (child3947 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2275 (597, 168) = (output3947, (597, 170)))
    (child3955 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 170) = (output3955, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2276 (597, 168) = (output3956, (597, 170)) := by
  rw [output3956_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3947 child3955

theorem node3957_conditional
    (child3956 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2276 (597, 168) = (output3956, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2277 (597, 168) = (output3957, (597, 170)) := by
  rw [output3957_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3956

theorem node3958_conditional
    (child3957 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2277 (597, 168) = (output3957, (597, 170)))
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2278 (597, 168) = (output3958, (597, 170)) := by
  rw [output3958_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3957 child3941

theorem node3959_conditional
    (child3958 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2278 (597, 168) = (output3958, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2279 (597, 168) = (output3959, (597, 170)) := by
  rw [output3959_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3958

theorem node3960_conditional
    (child3959 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2279 (597, 168) = (output3959, (597, 170)))
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2280 (597, 168) = (output3960, (597, 170)) := by
  rw [output3960_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3959 child3941

theorem node3961_conditional
    (child3960 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2280 (597, 168) = (output3960, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2281 (597, 168) = (output3961, (597, 170)) := by
  rw [output3961_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3960

theorem node3962_conditional
    (child3937 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 168) = (output3937, (597, 168)))
    (child3961 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2281 (597, 168) = (output3961, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2282 (597, 168) = (output3962, (597, 170)) := by
  rw [output3962_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3937 child3961

theorem node3963_conditional
    (child3962 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2282 (597, 168) = (output3962, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2283 (597, 168) = (output3963, (597, 170)) := by
  rw [output3963_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3962

theorem node3964_conditional
    (child3935 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 168) = (output3935, (597, 168)))
    (child3963 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2283 (597, 168) = (output3963, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2284 (597, 168) = (output3964, (597, 170)) := by
  rw [output3964_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3935 child3963

theorem node3965_conditional
    (child3964 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2284 (597, 168) = (output3964, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2285 (597, 168) = (output3965, (597, 170)) := by
  rw [output3965_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3964

theorem node3966_conditional
    (child3929 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2267 (597, 168) = (output3929, (597, 168)))
    (child3965 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2285 (597, 168) = (output3965, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2286 (597, 168) = (output3966, (597, 170)) := by
  rw [output3966_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3929 child3965

theorem node3967_conditional
    (child3966 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2286 (597, 168) = (output3966, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2287 (597, 168) = (output3967, (597, 170)) := by
  rw [output3967_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3966

theorem node3968_conditional
    (child3927 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 168) = (output3927, (597, 168)))
    (child3967 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2287 (597, 168) = (output3967, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2288 (597, 168) = (output3968, (597, 170)) := by
  rw [output3968_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3927 child3967

theorem node3969_conditional
    (child3968 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2288 (597, 168) = (output3968, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2289 (597, 168) = (output3969, (597, 170)) := by
  rw [output3969_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3968

theorem node3970_conditional
    (child3925 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2265 (597, 2) = (output3925, (597, 168)))
    (child3969 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2289 (597, 168) = (output3969, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2290 (597, 2) = (output3970, (597, 170)) := by
  rw [output3970_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3925 child3969

theorem node3971_conditional
    (child3970 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2290 (597, 2) = (output3970, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2291 (597, 2) = (output3971, (597, 170)) := by
  rw [output3971_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3970

theorem node3972_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 170) = (output3972, (597, 170)) := by
  rw [output3972_def]
  kernel_rfl

theorem node3973_conditional
    (child3972 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 170) = (output3972, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 170) = (output3973, (597, 170)) := by
  rw [output3973_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3972

theorem node3974_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2292 (597, 170) = (output3974, (597, 170)) := by
  rw [output3974_def]
  kernel_rfl

theorem node3975_conditional
    (child3974 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2292 (597, 170) = (output3974, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2293 (597, 170) = (output3975, (597, 170)) := by
  rw [output3975_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3974

theorem node3976_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 170) = (output3976, (597, 170)) := by
  rw [output3976_def]
  kernel_rfl

theorem node3977_conditional
    (child3976 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 170) = (output3976, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 170) = (output3977, (597, 170)) := by
  rw [output3977_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3976

theorem node3978_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 170) = (output3978, (597, 170)) := by
  rw [output3978_def]
  kernel_rfl

theorem node3979_conditional
    (child3978 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 170) = (output3978, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 170) = (output3979, (597, 170)) := by
  rw [output3979_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3978

theorem node3980_conditional
    (child3977 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 170) = (output3977, (597, 170)))
    (child3979 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 170) = (output3979, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 170) = (output3980, (597, 170)) := by
  rw [output3980_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child3977 child3979

theorem node3981_conditional
    (child3980 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 170) = (output3980, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 170) = (output3981, (597, 170)) := by
  rw [output3981_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3980

theorem node3982_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 170) = (output3982, (597, 170)) := by
  rw [output3982_def]
  kernel_rfl

theorem node3983_conditional
    (child3982 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 170) = (output3982, (597, 170))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 170) = (output3983, (597, 170)) := by
  rw [output3983_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3982

theorem node3984_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2294 (597, 170) = (output3984, (597, 172)) := by
  rw [output3984_def]
  kernel_rfl

theorem node3985_conditional
    (child3984 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2294 (597, 170) = (output3984, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2295 (597, 170) = (output3985, (597, 172)) := by
  rw [output3985_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3984

theorem node3986_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 172) = (output3986, (597, 172)) := by
  rw [output3986_def]
  kernel_rfl

theorem node3987_conditional
    (child3986 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 172) = (output3986, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172)) := by
  rw [output3987_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3986

theorem node3988_conditional
    (child3985 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2295 (597, 170) = (output3985, (597, 172)))
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2296 (597, 170) = (output3988, (597, 172)) := by
  rw [output3988_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3985 child3987

theorem node3989_conditional
    (child3988 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2296 (597, 170) = (output3988, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2297 (597, 170) = (output3989, (597, 172)) := by
  rw [output3989_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3988

theorem node3990_conditional
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170)))
    (child3989 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2297 (597, 170) = (output3989, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2298 (597, 170) = (output3990, (597, 172)) := by
  rw [output3990_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3941 child3989

theorem node3991_conditional
    (child3990 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2298 (597, 170) = (output3990, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2299 (597, 170) = (output3991, (597, 172)) := by
  rw [output3991_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3990

theorem node3992_conditional
    (child3941 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 170) = (output3941, (597, 170)))
    (child3991 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2299 (597, 170) = (output3991, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2300 (597, 170) = (output3992, (597, 172)) := by
  rw [output3992_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3941 child3991

theorem node3993_conditional
    (child3992 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2300 (597, 170) = (output3992, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2301 (597, 170) = (output3993, (597, 172)) := by
  rw [output3993_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3992

theorem node3994_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 172) = (output3994, (597, 172)) := by
  rw [output3994_def]
  kernel_rfl

theorem node3995_conditional
    (child3994 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 172) = (output3994, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 172) = (output3995, (597, 172)) := by
  rw [output3995_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3994

theorem node3996_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 172) = (output3996, (597, 172)) := by
  rw [output3996_def]
  kernel_rfl

theorem node3997_conditional
    (child3996 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 172) = (output3996, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 172) = (output3997, (597, 172)) := by
  rw [output3997_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3996

theorem node3998_conditional
    (child3997 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 172) = (output3997, (597, 172)))
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 172) = (output3998, (597, 172)) := by
  rw [output3998_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3997 child3987

theorem node3999_conditional
    (child3998 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 172) = (output3998, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 172) = (output3999, (597, 172)) := by
  rw [output3999_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3998

theorem node4000_conditional
    (child3995 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 172) = (output3995, (597, 172)))
    (child3999 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 172) = (output3999, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 172) = (output4000, (597, 172)) := by
  rw [output4000_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3995 child3999

theorem node4001_conditional
    (child4000 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 172) = (output4000, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 172) = (output4001, (597, 172)) := by
  rw [output4001_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4000

theorem node4002_conditional
    (child3993 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2301 (597, 170) = (output3993, (597, 172)))
    (child4001 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 172) = (output4001, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2302 (597, 170) = (output4002, (597, 172)) := by
  rw [output4002_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3993 child4001

theorem node4003_conditional
    (child4002 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2302 (597, 170) = (output4002, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2303 (597, 170) = (output4003, (597, 172)) := by
  rw [output4003_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4002

theorem node4004_conditional
    (child4003 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2303 (597, 170) = (output4003, (597, 172)))
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2304 (597, 170) = (output4004, (597, 172)) := by
  rw [output4004_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4003 child3987

theorem node4005_conditional
    (child4004 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2304 (597, 170) = (output4004, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2305 (597, 170) = (output4005, (597, 172)) := by
  rw [output4005_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4004

theorem node4006_conditional
    (child4005 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2305 (597, 170) = (output4005, (597, 172)))
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2306 (597, 170) = (output4006, (597, 172)) := by
  rw [output4006_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4005 child3987

theorem node4007_conditional
    (child4006 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2306 (597, 170) = (output4006, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2307 (597, 170) = (output4007, (597, 172)) := by
  rw [output4007_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4006

theorem node4008_conditional
    (child3983 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 170) = (output3983, (597, 170)))
    (child4007 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2307 (597, 170) = (output4007, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2308 (597, 170) = (output4008, (597, 172)) := by
  rw [output4008_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3983 child4007

theorem node4009_conditional
    (child4008 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2308 (597, 170) = (output4008, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2309 (597, 170) = (output4009, (597, 172)) := by
  rw [output4009_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4008

theorem node4010_conditional
    (child3981 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 170) = (output3981, (597, 170)))
    (child4009 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2309 (597, 170) = (output4009, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2310 (597, 170) = (output4010, (597, 172)) := by
  rw [output4010_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3981 child4009

theorem node4011_conditional
    (child4010 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2310 (597, 170) = (output4010, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2311 (597, 170) = (output4011, (597, 172)) := by
  rw [output4011_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4010

theorem node4012_conditional
    (child3975 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2293 (597, 170) = (output3975, (597, 170)))
    (child4011 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2311 (597, 170) = (output4011, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2312 (597, 170) = (output4012, (597, 172)) := by
  rw [output4012_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3975 child4011

theorem node4013_conditional
    (child4012 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2312 (597, 170) = (output4012, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2313 (597, 170) = (output4013, (597, 172)) := by
  rw [output4013_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4012

theorem node4014_conditional
    (child3973 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 170) = (output3973, (597, 170)))
    (child4013 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2313 (597, 170) = (output4013, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2314 (597, 170) = (output4014, (597, 172)) := by
  rw [output4014_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3973 child4013

theorem node4015_conditional
    (child4014 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2314 (597, 170) = (output4014, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2315 (597, 170) = (output4015, (597, 172)) := by
  rw [output4015_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4014

theorem node4016_conditional
    (child3971 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2291 (597, 2) = (output3971, (597, 170)))
    (child4015 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2315 (597, 170) = (output4015, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2316 (597, 2) = (output4016, (597, 172)) := by
  rw [output4016_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3971 child4015

theorem node4017_conditional
    (child4016 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2316 (597, 2) = (output4016, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2317 (597, 2) = (output4017, (597, 172)) := by
  rw [output4017_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4016

theorem node4018_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 172) = (output4018, (597, 172)) := by
  rw [output4018_def]
  kernel_rfl

theorem node4019_conditional
    (child4018 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 172) = (output4018, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 172) = (output4019, (597, 172)) := by
  rw [output4019_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4018

theorem node4020_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2318 (597, 172) = (output4020, (597, 172)) := by
  rw [output4020_def]
  kernel_rfl

theorem node4021_conditional
    (child4020 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2318 (597, 172) = (output4020, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2319 (597, 172) = (output4021, (597, 172)) := by
  rw [output4021_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4020

theorem node4022_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 172) = (output4022, (597, 172)) := by
  rw [output4022_def]
  kernel_rfl

theorem node4023_conditional
    (child4022 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 172) = (output4022, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 172) = (output4023, (597, 172)) := by
  rw [output4023_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4022

theorem node4024_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 172) = (output4024, (597, 172)) := by
  rw [output4024_def]
  kernel_rfl

theorem node4025_conditional
    (child4024 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 172) = (output4024, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 172) = (output4025, (597, 172)) := by
  rw [output4025_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4024

theorem node4026_conditional
    (child4023 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 172) = (output4023, (597, 172)))
    (child4025 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 172) = (output4025, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 172) = (output4026, (597, 172)) := by
  rw [output4026_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4023 child4025

theorem node4027_conditional
    (child4026 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 172) = (output4026, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 172) = (output4027, (597, 172)) := by
  rw [output4027_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4026

theorem node4028_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 172) = (output4028, (597, 172)) := by
  rw [output4028_def]
  kernel_rfl

theorem node4029_conditional
    (child4028 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 172) = (output4028, (597, 172))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 172) = (output4029, (597, 172)) := by
  rw [output4029_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4028

theorem node4030_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2320 (597, 172) = (output4030, (597, 174)) := by
  rw [output4030_def]
  kernel_rfl

theorem node4031_conditional
    (child4030 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2320 (597, 172) = (output4030, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2321 (597, 172) = (output4031, (597, 174)) := by
  rw [output4031_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4030

theorem node4032_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 174) = (output4032, (597, 174)) := by
  rw [output4032_def]
  kernel_rfl

theorem node4033_conditional
    (child4032 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 174) = (output4032, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174)) := by
  rw [output4033_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4032

theorem node4034_conditional
    (child4031 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2321 (597, 172) = (output4031, (597, 174)))
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2322 (597, 172) = (output4034, (597, 174)) := by
  rw [output4034_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4031 child4033

theorem node4035_conditional
    (child4034 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2322 (597, 172) = (output4034, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2323 (597, 172) = (output4035, (597, 174)) := by
  rw [output4035_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4034

theorem node4036_conditional
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172)))
    (child4035 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2323 (597, 172) = (output4035, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2324 (597, 172) = (output4036, (597, 174)) := by
  rw [output4036_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3987 child4035

theorem node4037_conditional
    (child4036 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2324 (597, 172) = (output4036, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2325 (597, 172) = (output4037, (597, 174)) := by
  rw [output4037_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4036

theorem node4038_conditional
    (child3987 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 172) = (output3987, (597, 172)))
    (child4037 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2325 (597, 172) = (output4037, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2326 (597, 172) = (output4038, (597, 174)) := by
  rw [output4038_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3987 child4037

theorem node4039_conditional
    (child4038 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2326 (597, 172) = (output4038, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2327 (597, 172) = (output4039, (597, 174)) := by
  rw [output4039_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4038

theorem node4040_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 174) = (output4040, (597, 174)) := by
  rw [output4040_def]
  kernel_rfl

theorem node4041_conditional
    (child4040 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 174) = (output4040, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 174) = (output4041, (597, 174)) := by
  rw [output4041_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4040

theorem node4042_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 174) = (output4042, (597, 174)) := by
  rw [output4042_def]
  kernel_rfl

theorem node4043_conditional
    (child4042 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 174) = (output4042, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 174) = (output4043, (597, 174)) := by
  rw [output4043_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4042

theorem node4044_conditional
    (child4043 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 174) = (output4043, (597, 174)))
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 174) = (output4044, (597, 174)) := by
  rw [output4044_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4043 child4033

theorem node4045_conditional
    (child4044 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 174) = (output4044, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 174) = (output4045, (597, 174)) := by
  rw [output4045_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4044

theorem node4046_conditional
    (child4041 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 174) = (output4041, (597, 174)))
    (child4045 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 174) = (output4045, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 174) = (output4046, (597, 174)) := by
  rw [output4046_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4041 child4045

theorem node4047_conditional
    (child4046 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 174) = (output4046, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 174) = (output4047, (597, 174)) := by
  rw [output4047_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4046

theorem node4048_conditional
    (child4039 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2327 (597, 172) = (output4039, (597, 174)))
    (child4047 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 174) = (output4047, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2328 (597, 172) = (output4048, (597, 174)) := by
  rw [output4048_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4039 child4047

theorem node4049_conditional
    (child4048 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2328 (597, 172) = (output4048, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2329 (597, 172) = (output4049, (597, 174)) := by
  rw [output4049_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4048

theorem node4050_conditional
    (child4049 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2329 (597, 172) = (output4049, (597, 174)))
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2330 (597, 172) = (output4050, (597, 174)) := by
  rw [output4050_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4049 child4033

theorem node4051_conditional
    (child4050 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2330 (597, 172) = (output4050, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2331 (597, 172) = (output4051, (597, 174)) := by
  rw [output4051_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4050

theorem node4052_conditional
    (child4051 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2331 (597, 172) = (output4051, (597, 174)))
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2332 (597, 172) = (output4052, (597, 174)) := by
  rw [output4052_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4051 child4033

theorem node4053_conditional
    (child4052 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2332 (597, 172) = (output4052, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2333 (597, 172) = (output4053, (597, 174)) := by
  rw [output4053_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4052

theorem node4054_conditional
    (child4029 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 172) = (output4029, (597, 172)))
    (child4053 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2333 (597, 172) = (output4053, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2334 (597, 172) = (output4054, (597, 174)) := by
  rw [output4054_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4029 child4053

theorem node4055_conditional
    (child4054 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2334 (597, 172) = (output4054, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2335 (597, 172) = (output4055, (597, 174)) := by
  rw [output4055_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4054

theorem node4056_conditional
    (child4027 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 172) = (output4027, (597, 172)))
    (child4055 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2335 (597, 172) = (output4055, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2336 (597, 172) = (output4056, (597, 174)) := by
  rw [output4056_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4027 child4055

theorem node4057_conditional
    (child4056 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2336 (597, 172) = (output4056, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2337 (597, 172) = (output4057, (597, 174)) := by
  rw [output4057_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4056

theorem node4058_conditional
    (child4021 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2319 (597, 172) = (output4021, (597, 172)))
    (child4057 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2337 (597, 172) = (output4057, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2338 (597, 172) = (output4058, (597, 174)) := by
  rw [output4058_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4021 child4057

theorem node4059_conditional
    (child4058 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2338 (597, 172) = (output4058, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2339 (597, 172) = (output4059, (597, 174)) := by
  rw [output4059_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4058

theorem node4060_conditional
    (child4019 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 172) = (output4019, (597, 172)))
    (child4059 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2339 (597, 172) = (output4059, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2340 (597, 172) = (output4060, (597, 174)) := by
  rw [output4060_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4019 child4059

theorem node4061_conditional
    (child4060 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2340 (597, 172) = (output4060, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2341 (597, 172) = (output4061, (597, 174)) := by
  rw [output4061_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4060

theorem node4062_conditional
    (child4017 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2317 (597, 2) = (output4017, (597, 172)))
    (child4061 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2341 (597, 172) = (output4061, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2342 (597, 2) = (output4062, (597, 174)) := by
  rw [output4062_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4017 child4061

theorem node4063_conditional
    (child4062 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2342 (597, 2) = (output4062, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2343 (597, 2) = (output4063, (597, 174)) := by
  rw [output4063_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4062

theorem node4064_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 174) = (output4064, (597, 174)) := by
  rw [output4064_def]
  kernel_rfl

theorem node4065_conditional
    (child4064 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 174) = (output4064, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 174) = (output4065, (597, 174)) := by
  rw [output4065_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4064

theorem node4066_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2344 (597, 174) = (output4066, (597, 174)) := by
  rw [output4066_def]
  kernel_rfl

theorem node4067_conditional
    (child4066 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2344 (597, 174) = (output4066, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2345 (597, 174) = (output4067, (597, 174)) := by
  rw [output4067_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4066

theorem node4068_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 174) = (output4068, (597, 174)) := by
  rw [output4068_def]
  kernel_rfl

theorem node4069_conditional
    (child4068 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 174) = (output4068, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 174) = (output4069, (597, 174)) := by
  rw [output4069_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4068

theorem node4070_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 174) = (output4070, (597, 174)) := by
  rw [output4070_def]
  kernel_rfl

theorem node4071_conditional
    (child4070 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 174) = (output4070, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 174) = (output4071, (597, 174)) := by
  rw [output4071_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4070

theorem node4072_conditional
    (child4069 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 174) = (output4069, (597, 174)))
    (child4071 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 174) = (output4071, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 174) = (output4072, (597, 174)) := by
  rw [output4072_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4069 child4071

theorem node4073_conditional
    (child4072 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_16 (597, 174) = (output4072, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 174) = (output4073, (597, 174)) := by
  rw [output4073_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4072

theorem node4074_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 174) = (output4074, (597, 174)) := by
  rw [output4074_def]
  kernel_rfl

theorem node4075_conditional
    (child4074 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 174) = (output4074, (597, 174))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 174) = (output4075, (597, 174)) := by
  rw [output4075_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4074

theorem node4076_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2346 (597, 174) = (output4076, (597, 176)) := by
  rw [output4076_def]
  kernel_rfl

theorem node4077_conditional
    (child4076 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2346 (597, 174) = (output4076, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2347 (597, 174) = (output4077, (597, 176)) := by
  rw [output4077_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4076

theorem node4078_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 176) = (output4078, (597, 176)) := by
  rw [output4078_def]
  kernel_rfl

theorem node4079_conditional
    (child4078 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 176) = (output4078, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176)) := by
  rw [output4079_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4078

theorem node4080_conditional
    (child4077 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2347 (597, 174) = (output4077, (597, 176)))
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2348 (597, 174) = (output4080, (597, 176)) := by
  rw [output4080_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4077 child4079

theorem node4081_conditional
    (child4080 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2348 (597, 174) = (output4080, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2349 (597, 174) = (output4081, (597, 176)) := by
  rw [output4081_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4080

theorem node4082_conditional
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174)))
    (child4081 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2349 (597, 174) = (output4081, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2350 (597, 174) = (output4082, (597, 176)) := by
  rw [output4082_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4033 child4081

theorem node4083_conditional
    (child4082 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2350 (597, 174) = (output4082, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2351 (597, 174) = (output4083, (597, 176)) := by
  rw [output4083_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4082

theorem node4084_conditional
    (child4033 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 174) = (output4033, (597, 174)))
    (child4083 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2351 (597, 174) = (output4083, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2352 (597, 174) = (output4084, (597, 176)) := by
  rw [output4084_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4033 child4083

theorem node4085_conditional
    (child4084 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2352 (597, 174) = (output4084, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2353 (597, 174) = (output4085, (597, 176)) := by
  rw [output4085_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4084

theorem node4086_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 176) = (output4086, (597, 176)) := by
  rw [output4086_def]
  kernel_rfl

theorem node4087_conditional
    (child4086 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 176) = (output4086, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 176) = (output4087, (597, 176)) := by
  rw [output4087_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4086

theorem node4088_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 176) = (output4088, (597, 176)) := by
  rw [output4088_def]
  kernel_rfl

theorem node4089_conditional
    (child4088 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 176) = (output4088, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 176) = (output4089, (597, 176)) := by
  rw [output4089_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4088

theorem node4090_conditional
    (child4089 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 176) = (output4089, (597, 176)))
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 176) = (output4090, (597, 176)) := by
  rw [output4090_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4089 child4079

theorem node4091_conditional
    (child4090 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 176) = (output4090, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 176) = (output4091, (597, 176)) := by
  rw [output4091_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4090

theorem node4092_conditional
    (child4087 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 176) = (output4087, (597, 176)))
    (child4091 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 176) = (output4091, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 176) = (output4092, (597, 176)) := by
  rw [output4092_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4087 child4091

theorem node4093_conditional
    (child4092 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 176) = (output4092, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 176) = (output4093, (597, 176)) := by
  rw [output4093_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4092

theorem node4094_conditional
    (child4085 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2353 (597, 174) = (output4085, (597, 176)))
    (child4093 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 176) = (output4093, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2354 (597, 174) = (output4094, (597, 176)) := by
  rw [output4094_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4085 child4093

theorem node4095_conditional
    (child4094 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2354 (597, 174) = (output4094, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2355 (597, 174) = (output4095, (597, 176)) := by
  rw [output4095_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4094

theorem node4096_conditional
    (child4095 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2355 (597, 174) = (output4095, (597, 176)))
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2356 (597, 174) = (output4096, (597, 176)) := by
  rw [output4096_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4095 child4079

theorem node4097_conditional
    (child4096 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2356 (597, 174) = (output4096, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2357 (597, 174) = (output4097, (597, 176)) := by
  rw [output4097_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4096

theorem node4098_conditional
    (child4097 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2357 (597, 174) = (output4097, (597, 176)))
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2358 (597, 174) = (output4098, (597, 176)) := by
  rw [output4098_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4097 child4079

theorem node4099_conditional
    (child4098 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2358 (597, 174) = (output4098, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2359 (597, 174) = (output4099, (597, 176)) := by
  rw [output4099_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4098

theorem node4100_conditional
    (child4075 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 174) = (output4075, (597, 174)))
    (child4099 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2359 (597, 174) = (output4099, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2360 (597, 174) = (output4100, (597, 176)) := by
  rw [output4100_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4075 child4099

theorem node4101_conditional
    (child4100 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2360 (597, 174) = (output4100, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2361 (597, 174) = (output4101, (597, 176)) := by
  rw [output4101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4100

theorem node4102_conditional
    (child4073 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_17 (597, 174) = (output4073, (597, 174)))
    (child4101 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2361 (597, 174) = (output4101, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2362 (597, 174) = (output4102, (597, 176)) := by
  rw [output4102_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4073 child4101

theorem node4103_conditional
    (child4102 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2362 (597, 174) = (output4102, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2363 (597, 174) = (output4103, (597, 176)) := by
  rw [output4103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4102

theorem node4104_conditional
    (child4067 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2345 (597, 174) = (output4067, (597, 174)))
    (child4103 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2363 (597, 174) = (output4103, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2364 (597, 174) = (output4104, (597, 176)) := by
  rw [output4104_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4067 child4103

theorem node4105_conditional
    (child4104 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2364 (597, 174) = (output4104, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2365 (597, 174) = (output4105, (597, 176)) := by
  rw [output4105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4104

theorem node4106_conditional
    (child4065 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 174) = (output4065, (597, 174)))
    (child4105 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2365 (597, 174) = (output4105, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2366 (597, 174) = (output4106, (597, 176)) := by
  rw [output4106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4065 child4105

theorem node4107_conditional
    (child4106 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2366 (597, 174) = (output4106, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2367 (597, 174) = (output4107, (597, 176)) := by
  rw [output4107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4106

theorem node4108_conditional
    (child4063 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2343 (597, 2) = (output4063, (597, 174)))
    (child4107 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2367 (597, 174) = (output4107, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2368 (597, 2) = (output4108, (597, 176)) := by
  rw [output4108_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4063 child4107

theorem node4109_conditional
    (child4108 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2368 (597, 2) = (output4108, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2369 (597, 2) = (output4109, (597, 176)) := by
  rw [output4109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4108

theorem node4110_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 176) = (output4110, (597, 176)) := by
  rw [output4110_def]
  kernel_rfl

theorem node4111_conditional
    (child4110 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_0 (597, 176) = (output4110, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 176) = (output4111, (597, 176)) := by
  rw [output4111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4110

theorem node4112_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2370 (597, 176) = (output4112, (597, 176)) := by
  rw [output4112_def]
  kernel_rfl

theorem node4113_conditional
    (child4112 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2370 (597, 176) = (output4112, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2371 (597, 176) = (output4113, (597, 176)) := by
  rw [output4113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4112

theorem node4114_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 176) = (output4114, (597, 176)) := by
  rw [output4114_def]
  kernel_rfl

theorem node4115_conditional
    (child4114 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_4 (597, 176) = (output4114, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 176) = (output4115, (597, 176)) := by
  rw [output4115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4114

theorem node4116_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 176) = (output4116, (597, 176)) := by
  rw [output4116_def]
  kernel_rfl

theorem node4117_conditional
    (child4116 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_6 (597, 176) = (output4116, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 176) = (output4117, (597, 176)) := by
  rw [output4117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4116

theorem node4118_conditional
    (child4115 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_5 (597, 176) = (output4115, (597, 176)))
    (child4117 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_7 (597, 176) = (output4117, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_314 (597, 176) = (output4118, (597, 176)) := by
  rw [output4118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4115 child4117

theorem node4119_conditional
    (child4118 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_314 (597, 176) = (output4118, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_315 (597, 176) = (output4119, (597, 176)) := by
  rw [output4119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4118

theorem node4120_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 176) = (output4120, (597, 176)) := by
  rw [output4120_def]
  kernel_rfl

theorem node4121_conditional
    (child4120 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_10 (597, 176) = (output4120, (597, 176))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 176) = (output4121, (597, 176)) := by
  rw [output4121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4120

theorem node4122_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2372 (597, 176) = (output4122, (597, 178)) := by
  rw [output4122_def]
  kernel_rfl

theorem node4123_conditional
    (child4122 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2372 (597, 176) = (output4122, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2373 (597, 176) = (output4123, (597, 178)) := by
  rw [output4123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4122

theorem node4124_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 178) = (output4124, (597, 178)) := by
  rw [output4124_def]
  kernel_rfl

theorem node4125_conditional
    (child4124 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_18 (597, 178) = (output4124, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178)) := by
  rw [output4125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4124

theorem node4126_conditional
    (child4123 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2373 (597, 176) = (output4123, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2374 (597, 176) = (output4126, (597, 178)) := by
  rw [output4126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4123 child4125

theorem node4127_conditional
    (child4126 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2374 (597, 176) = (output4126, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2375 (597, 176) = (output4127, (597, 178)) := by
  rw [output4127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4126

theorem node4128_conditional
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176)))
    (child4127 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2375 (597, 176) = (output4127, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2376 (597, 176) = (output4128, (597, 178)) := by
  rw [output4128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4079 child4127

theorem node4129_conditional
    (child4128 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2376 (597, 176) = (output4128, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2377 (597, 176) = (output4129, (597, 178)) := by
  rw [output4129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4128

theorem node4130_conditional
    (child4079 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 176) = (output4079, (597, 176)))
    (child4129 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2377 (597, 176) = (output4129, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2378 (597, 176) = (output4130, (597, 178)) := by
  rw [output4130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4079 child4129

theorem node4131_conditional
    (child4130 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2378 (597, 176) = (output4130, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2379 (597, 176) = (output4131, (597, 178)) := by
  rw [output4131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4130

theorem node4132_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 178) = (output4132, (597, 178)) := by
  rw [output4132_def]
  kernel_rfl

theorem node4133_conditional
    (child4132 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_30 (597, 178) = (output4132, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 178) = (output4133, (597, 178)) := by
  rw [output4133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4132

theorem node4134_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 178) = (output4134, (597, 178)) := by
  rw [output4134_def]
  kernel_rfl

theorem node4135_conditional
    (child4134 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_32 (597, 178) = (output4134, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 178) = (output4135, (597, 178)) := by
  rw [output4135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4134

theorem node4136_conditional
    (child4135 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_33 (597, 178) = (output4135, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 178) = (output4136, (597, 178)) := by
  rw [output4136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4135 child4125

theorem node4137_conditional
    (child4136 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_34 (597, 178) = (output4136, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 178) = (output4137, (597, 178)) := by
  rw [output4137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4136

theorem node4138_conditional
    (child4133 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_31 (597, 178) = (output4133, (597, 178)))
    (child4137 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_35 (597, 178) = (output4137, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 178) = (output4138, (597, 178)) := by
  rw [output4138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4133 child4137

theorem node4139_conditional
    (child4138 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_36 (597, 178) = (output4138, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 178) = (output4139, (597, 178)) := by
  rw [output4139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4138

theorem node4140_conditional
    (child4131 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2379 (597, 176) = (output4131, (597, 178)))
    (child4139 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 178) = (output4139, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2380 (597, 176) = (output4140, (597, 178)) := by
  rw [output4140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4131 child4139

theorem node4141_conditional
    (child4140 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2380 (597, 176) = (output4140, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2381 (597, 176) = (output4141, (597, 178)) := by
  rw [output4141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4140

theorem node4142_conditional
    (child4141 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2381 (597, 176) = (output4141, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2382 (597, 176) = (output4142, (597, 178)) := by
  rw [output4142_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child4141 child4125

theorem node4143_conditional
    (child4142 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2382 (597, 176) = (output4142, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2383 (597, 176) = (output4143, (597, 178)) := by
  rw [output4143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4142

theorem node4144_conditional
    (child4143 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2383 (597, 176) = (output4143, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2384 (597, 176) = (output4144, (597, 178)) := by
  rw [output4144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4143 child4125

theorem node4145_conditional
    (child4144 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2384 (597, 176) = (output4144, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2385 (597, 176) = (output4145, (597, 178)) := by
  rw [output4145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4144

theorem node4146_conditional
    (child4121 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_11 (597, 176) = (output4121, (597, 176)))
    (child4145 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2385 (597, 176) = (output4145, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2386 (597, 176) = (output4146, (597, 178)) := by
  rw [output4146_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4121 child4145

theorem node4147_conditional
    (child4146 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2386 (597, 176) = (output4146, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2387 (597, 176) = (output4147, (597, 178)) := by
  rw [output4147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4146

theorem node4148_conditional
    (child4119 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_315 (597, 176) = (output4119, (597, 176)))
    (child4147 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2387 (597, 176) = (output4147, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2388 (597, 176) = (output4148, (597, 178)) := by
  rw [output4148_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4119 child4147

theorem node4149_conditional
    (child4148 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2388 (597, 176) = (output4148, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2389 (597, 176) = (output4149, (597, 178)) := by
  rw [output4149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4148

theorem node4150_conditional
    (child4113 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2371 (597, 176) = (output4113, (597, 176)))
    (child4149 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2389 (597, 176) = (output4149, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2390 (597, 176) = (output4150, (597, 178)) := by
  rw [output4150_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4113 child4149

theorem node4151_conditional
    (child4150 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2390 (597, 176) = (output4150, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2391 (597, 176) = (output4151, (597, 178)) := by
  rw [output4151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4150

theorem node4152_conditional
    (child4111 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_1 (597, 176) = (output4111, (597, 176)))
    (child4151 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2391 (597, 176) = (output4151, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2392 (597, 176) = (output4152, (597, 178)) := by
  rw [output4152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4111 child4151

theorem node4153_conditional
    (child4152 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2392 (597, 176) = (output4152, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2393 (597, 176) = (output4153, (597, 178)) := by
  rw [output4153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4152

theorem node4154_conditional
    (child4109 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2369 (597, 2) = (output4109, (597, 176)))
    (child4153 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2393 (597, 176) = (output4153, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2394 (597, 2) = (output4154, (597, 178)) := by
  rw [output4154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4109 child4153

theorem node4155_conditional
    (child4154 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2394 (597, 2) = (output4154, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2395 (597, 2) = (output4155, (597, 178)) := by
  rw [output4155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4154

theorem node4156_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_738 (597, 178) = (output4156, (597, 178)) := by
  rw [output4156_def]
  kernel_rfl

theorem node4157_conditional
    (child4156 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_738 (597, 178) = (output4156, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_739 (597, 178) = (output4157, (597, 178)) := by
  rw [output4157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4156

theorem node4158_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_740 (597, 178) = (output4158, (597, 178)) := by
  rw [output4158_def]
  kernel_rfl

theorem node4159_conditional
    (child4158 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_740 (597, 178) = (output4158, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_741 (597, 178) = (output4159, (597, 178)) := by
  rw [output4159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4158

theorem node4160_conditional
    (child4159 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_741 (597, 178) = (output4159, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_742 (597, 178) = (output4160, (597, 178)) := by
  rw [output4160_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4159 child4125

theorem node4161_conditional
    (child4160 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_742 (597, 178) = (output4160, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_743 (597, 178) = (output4161, (597, 178)) := by
  rw [output4161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4160

theorem node4162_conditional
    (child4161 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_743 (597, 178) = (output4161, (597, 178)))
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_744 (597, 178) = (output4162, (597, 178)) := by
  rw [output4162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4161 child4125

theorem node4163_conditional
    (child4162 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_744 (597, 178) = (output4162, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_745 (597, 178) = (output4163, (597, 178)) := by
  rw [output4163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4162

theorem node4164_conditional
    (child4157 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_739 (597, 178) = (output4157, (597, 178)))
    (child4163 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_745 (597, 178) = (output4163, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_746 (597, 178) = (output4164, (597, 178)) := by
  rw [output4164_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4157 child4163

theorem node4165_conditional
    (child4164 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_746 (597, 178) = (output4164, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_747 (597, 178) = (output4165, (597, 178)) := by
  rw [output4165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4164

theorem node4166_conditional
    (child4125 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_19 (597, 178) = (output4125, (597, 178)))
    (child4165 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_747 (597, 178) = (output4165, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_748 (597, 178) = (output4166, (597, 178)) := by
  rw [output4166_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4125 child4165

theorem node4167_conditional
    (child4166 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_748 (597, 178) = (output4166, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_749 (597, 178) = (output4167, (597, 178)) := by
  rw [output4167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4166

theorem node4168_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_750 (597, 178) = (output4168, (597, 178)) := by
  rw [output4168_def]
  kernel_rfl

theorem node4169_conditional
    (child4168 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_750 (597, 178) = (output4168, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_751 (597, 178) = (output4169, (597, 178)) := by
  rw [output4169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4168

theorem node4170_conditional : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_752 (597, 178) = (output4170, (597, 178)) := by
  rw [output4170_def]
  kernel_rfl

theorem node4171_conditional
    (child4170 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_752 (597, 178) = (output4170, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_753 (597, 178) = (output4171, (597, 178)) := by
  rw [output4171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4170

theorem node4172_conditional
    (child4169 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_751 (597, 178) = (output4169, (597, 178)))
    (child4171 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_753 (597, 178) = (output4171, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_754 (597, 178) = (output4172, (597, 178)) := by
  rw [output4172_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4169 child4171

theorem node4173_conditional
    (child4172 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_754 (597, 178) = (output4172, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_755 (597, 178) = (output4173, (597, 178)) := by
  rw [output4173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4172

theorem node4174_conditional
    (child4167 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_749 (597, 178) = (output4167, (597, 178)))
    (child4173 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_755 (597, 178) = (output4173, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_756 (597, 178) = (output4174, (597, 178)) := by
  rw [output4174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4167 child4173

theorem node4175_conditional
    (child4174 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_756 (597, 178) = (output4174, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_757 (597, 178) = (output4175, (597, 178)) := by
  rw [output4175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4174

theorem node4176_conditional
    (child4155 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2395 (597, 2) = (output4155, (597, 178)))
    (child4175 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_757 (597, 178) = (output4175, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2396 (597, 2) = (output4176, (597, 178)) := by
  rw [output4176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4155 child4175

theorem node4177_conditional
    (child4176 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2396 (597, 2) = (output4176, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2397 (597, 2) = (output4177, (597, 178)) := by
  rw [output4177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4176

theorem node4178_conditional
    (child4177 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2397 (597, 2) = (output4177, (597, 178)))
    (child4139 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_37 (597, 178) = (output4139, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2398 (597, 2) = (output4178, (597, 178)) := by
  rw [output4178_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child4177 child4139

theorem node4179_conditional
    (child4178 : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2398 (597, 2) = (output4178, (597, 178))) : Flapjack.LoopToWord.compHOL Word.context533
    Loop.loopBody533_2399 (597, 2) = (output4179, (597, 178)) := by
  rw [output4179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4178

#print axioms node4179_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
