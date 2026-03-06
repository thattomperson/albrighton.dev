# templUI Pro Block Library

This file contains all templUI Pro blocks for use with LLM tools like Claude Code, Cursor, and other AI coding assistants.

**Total blocks:** 222  
**Categories:** 33

---

**Copyright © 2024 templUI Pro**  
**Contact:** hello@axeladrian.com  
**License:** This library is licensed for use by templUI Pro customers only.

---

## Account

### account_settings_001.templ

**Path:** `account/account_settings_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/radio"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

templ AccountSettings001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-4xl mx-auto">
			@AccountSettings001Header()
			@AccountSettings001Form()
		</div>
	</div>
}

templ AccountSettings001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Account Settings</h2>
		<p class="text-muted-foreground">Manage your account preferences and privacy settings</p>
	</div>
}

templ AccountSettings001Form() {
	<form class="bg-card rounded-lg border overflow-hidden">
		@tabs.Tabs() {
			@AccountSettings001TabsList()
			<div class="p-4 sm:p-6 lg:p-8">
				@tabs.Content(tabs.ContentProps{Value: "general", IsActive: true}) {
					@AccountSettings001GeneralTab()
				}
				@tabs.Content(tabs.ContentProps{Value: "notifications"}) {
					@AccountSettings001NotificationsTab()
				}
				@tabs.Content(tabs.ContentProps{Value: "privacy"}) {
					@AccountSettings001PrivacyTab()
				}
				@tabs.Content(tabs.ContentProps{Value: "appearance"}) {
					@AccountSettings001AppearanceTab()
				}
				@AccountSettings001Actions()
			</div>
		}
	</form>
}

templ AccountSettings001TabsList() {
	<div class="border-b bg-muted/30 overflow-x-auto">
		@tabs.List(tabs.ListProps{Class: "h-auto p-0 bg-transparent min-w-fit"}) {
			@tabs.Trigger(tabs.TriggerProps{Value: "general", IsActive: true}) {
				General
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "notifications"}) {
				Notifications
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "privacy"}) {
				Privacy
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "appearance"}) {
				Appearance
			}
		}
	</div>
}

templ AccountSettings001GeneralTab() {
	<div class="space-y-6">
		<div>
			<h3 class="text-lg font-semibold mb-4">General Preferences</h3>
			<div class="space-y-4">
				@form.Item() {
					@label.Label(label.Props{For: "account003-language"}) {
						Language
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID: "account003-language",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Select language",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "en"}) {
								English
							}
							@selectbox.Item(selectbox.ItemProps{Value: "es"}) {
								Spanish
							}
							@selectbox.Item(selectbox.ItemProps{Value: "fr"}) {
								French
							}
							@selectbox.Item(selectbox.ItemProps{Value: "de"}) {
								German
							}
							@selectbox.Item(selectbox.ItemProps{Value: "ja"}) {
								Japanese
							}
						}
					}
				}
				@form.Item() {
					@label.Label(label.Props{For: "account003-timezone"}) {
						Timezone
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID: "account003-timezone",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Select timezone",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "pst"}) {
								Pacific Time (PT)
							}
							@selectbox.Item(selectbox.ItemProps{Value: "est"}) {
								Eastern Time (ET)
							}
							@selectbox.Item(selectbox.ItemProps{Value: "cst"}) {
								Central Time (CT)
							}
							@selectbox.Item(selectbox.ItemProps{Value: "mst"}) {
								Mountain Time (MT)
							}
							@selectbox.Item(selectbox.ItemProps{Value: "utc"}) {
								UTC
							}
						}
					}
				}
				@form.Item() {
					@label.Label(label.Props{For: "account003-dateformat"}) {
						Date Format
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID: "account003-dateformat",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Select format",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "mdy"}) {
								MM/DD/YYYY
							}
							@selectbox.Item(selectbox.ItemProps{Value: "dmy"}) {
								DD/MM/YYYY
							}
							@selectbox.Item(selectbox.ItemProps{Value: "ymd"}) {
								YYYY-MM-DD
							}
						}
					}
				}
			</div>
		</div>
		<div class="pt-6 border-t">
			<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
				<div>
					<h4 class="font-medium">Beta Features</h4>
					<p class="text-sm text-muted-foreground">Try out new features before they're released</p>
				</div>
				@switchcomp.Switch(switchcomp.Props{
					ID: "account003-beta",
				})
			</div>
		</div>
	</div>
}

templ AccountSettings001NotificationsTab() {
	<div class="space-y-6">
		<h3 class="text-lg font-semibold mb-4">Notification Preferences</h3>
		<div>
			<h4 class="font-medium mb-3">Email Notifications</h4>
			<div class="space-y-4">
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Product Updates</p>
						<p class="text-sm text-muted-foreground">News about product features and improvements</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-product-updates",
						Checked: true,
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Security Alerts</p>
						<p class="text-sm text-muted-foreground">Important notifications about your account security</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-security-alerts",
						Checked: true,
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Marketing Emails</p>
						<p class="text-sm text-muted-foreground">Tips, tutorials, and promotional content</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID: "account003-marketing",
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Team Activity</p>
						<p class="text-sm text-muted-foreground">Updates about your team members' activities</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-team-activity",
						Checked: true,
					})
				</div>
			</div>
		</div>
		<div class="pt-6 border-t">
			<h4 class="font-medium mb-3">Push Notifications</h4>
			<div class="space-y-4">
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Desktop Notifications</p>
						<p class="text-sm text-muted-foreground">Show notifications on your desktop</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID: "account003-desktop",
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Mobile Push Notifications</p>
						<p class="text-sm text-muted-foreground">Receive notifications on your mobile device</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-mobile",
						Checked: true,
					})
				</div>
			</div>
		</div>
	</div>
}

templ AccountSettings001PrivacyTab() {
	<div class="space-y-6">
		<h3 class="text-lg font-semibold mb-4">Privacy Settings</h3>
		<div>
			<h4 class="font-medium mb-3">Profile Visibility</h4>
			<div class="space-y-2">
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:      "account003-visibility-public",
						Name:    "visibility",
						Value:   "public",
						Checked: true,
					})
					@label.Label(label.Props{For: "account003-visibility-public", Class: "text-sm font-normal"}) {
						<div>
							<p class="font-medium">Public</p>
							<p class="text-muted-foreground">Anyone can see your profile</p>
						</div>
					}
				}
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:    "account003-visibility-friends",
						Name:  "visibility",
						Value: "friends",
					})
					@label.Label(label.Props{For: "account003-visibility-friends", Class: "text-sm font-normal"}) {
						<div>
							<p class="font-medium">Friends Only</p>
							<p class="text-muted-foreground">Only people you follow can see your profile</p>
						</div>
					}
				}
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:    "account003-visibility-private",
						Name:  "visibility",
						Value: "private",
					})
					@label.Label(label.Props{For: "account003-visibility-private", Class: "text-sm font-normal"}) {
						<div>
							<p class="font-medium">Private</p>
							<p class="text-muted-foreground">Only you can see your profile</p>
						</div>
					}
				}
			</div>
		</div>
		<div class="pt-6 border-t">
			<h4 class="font-medium mb-3">Data & Privacy</h4>
			<div class="space-y-4">
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Activity Status</p>
						<p class="text-sm text-muted-foreground">Show when you're active</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-activity-status",
						Checked: true,
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Read Receipts</p>
						<p class="text-sm text-muted-foreground">Let people know when you've seen their messages</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-read-receipts",
						Checked: true,
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Profile Suggestions</p>
						<p class="text-sm text-muted-foreground">Suggest your profile to others</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID: "account003-suggestions",
					})
				</div>
			</div>
		</div>
		<div class="pt-6 border-t">
			<h4 class="font-medium mb-3">Search Engine Visibility</h4>
			@form.ItemFlex() {
				@checkbox.Checkbox(checkbox.Props{
					ID: "account003-search-engines",
				})
				@label.Label(label.Props{For: "account003-search-engines", Class: "text-sm font-normal"}) {
					Allow search engines to index my profile
				}
			}
		</div>
	</div>
}

templ AccountSettings001AppearanceTab() {
	<div class="space-y-6">
		<h3 class="text-lg font-semibold mb-4">Appearance Settings</h3>
		<div>
			<h4 class="font-medium mb-3">Theme</h4>
			<div class="space-y-2">
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:      "account003-theme-light",
						Name:    "theme",
						Value:   "light",
						Checked: true,
					})
					@label.Label(label.Props{For: "account003-theme-light", Class: "text-sm font-normal"}) {
						<div class="flex items-center gap-2">
							@icon.Sun(icon.Props{Size: 16})
							<span>Light</span>
						</div>
					}
				}
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:    "account003-theme-dark",
						Name:  "theme",
						Value: "dark",
					})
					@label.Label(label.Props{For: "account003-theme-dark", Class: "text-sm font-normal"}) {
						<div class="flex items-center gap-2">
							@icon.Moon(icon.Props{Size: 16})
							<span>Dark</span>
						</div>
					}
				}
				@form.ItemFlex() {
					@radio.Radio(radio.Props{
						ID:    "account003-theme-system",
						Name:  "theme",
						Value: "system",
					})
					@label.Label(label.Props{For: "account003-theme-system", Class: "text-sm font-normal"}) {
						<div class="flex items-center gap-2">
							@icon.Monitor(icon.Props{Size: 16})
							<span>System</span>
						</div>
					}
				}
			</div>
		</div>
		<div class="pt-6 border-t">
			<h4 class="font-medium mb-3">Display Options</h4>
			<div class="space-y-4">
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Compact Mode</p>
						<p class="text-sm text-muted-foreground">Reduce spacing between elements</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID: "account003-compact",
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">Animations</p>
						<p class="text-sm text-muted-foreground">Enable interface animations</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID:      "account003-animations",
						Checked: true,
					})
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
					<div class="flex-1">
						<p class="font-medium">High Contrast</p>
						<p class="text-sm text-muted-foreground">Increase contrast for better visibility</p>
					</div>
					@switchcomp.Switch(switchcomp.Props{
						ID: "account003-contrast",
					})
				</div>
			</div>
		</div>
		<div class="pt-6 border-t">
			@form.Item() {
				@label.Label(label.Props{For: "account003-font-size"}) {
					Font Size
				}
				@selectbox.SelectBox() {
					@selectbox.Trigger(selectbox.TriggerProps{
						ID: "account003-font-size",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Select size",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: "small"}) {
							Small
						}
						@selectbox.Item(selectbox.ItemProps{Value: "medium"}) {
							Medium (Default)
						}
						@selectbox.Item(selectbox.ItemProps{Value: "large"}) {
							Large
						}
						@selectbox.Item(selectbox.ItemProps{Value: "xlarge"}) {
							Extra Large
						}
					}
				}
			}
		</div>
	</div>
}

templ AccountSettings001Actions() {
	<div class="flex flex-col sm:flex-row flex-wrap gap-3 pt-6 mt-6 border-t">
		@button.Button(button.Props{
			Type:    "button",
			Variant: button.VariantOutline,
		}) {
			Reset to Defaults
		}
		@button.Button(button.Props{
			Type:    "button",
			Variant: button.VariantGhost,
		}) {
			Cancel
		}
		@button.Button() {
			@icon.Save(icon.Props{Size: 16})
			<span class="ml-2">Save Changes</span>
		}
	</div>
}
```

### activity_log_001.templ

**Path:** `account/activity_log_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

templ ActivityLog001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@ActivityLog001Header()
			@ActivityLog001Filters()
			@ActivityLog001ActivityLog()
		</div>
	</div>
}

templ ActivityLog001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Activity Log</h2>
		<p class="text-muted-foreground">Track all activities and changes made to your account</p>
	</div>
}

templ ActivityLog001Filters() {
	@card.Card(card.Props{Class: "mb-6"}) {
		@card.Content() {
			<div class="flex flex-col md:flex-row gap-4">
				<div class="flex-1">
					@label.Label(label.Props{For: "account008-search", Class: "sr-only"}) {
						Search
					}
					<div class="relative">
						<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
							@icon.Search(icon.Props{Size: 16, Class: "text-muted-foreground"})
						</div>
						@input.Input(input.Props{
							ID:          "account008-search",
							Placeholder: "Search activities...",
							Class:       "pl-10",
						})
					</div>
				</div>
				<div class="flex flex-wrap gap-2">
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID:    "account008-type",
							Class: "w-full sm:w-[180px]",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "All Activities",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "all"}) {
								All Activities
							}
							@selectbox.Item(selectbox.ItemProps{Value: "account"}) {
								Account Changes
							}
							@selectbox.Item(selectbox.ItemProps{Value: "security"}) {
								Security Events
							}
							@selectbox.Item(selectbox.ItemProps{Value: "billing"}) {
								Billing Updates
							}
							@selectbox.Item(selectbox.ItemProps{Value: "team"}) {
								Team Activities
							}
						}
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID:    "account008-date",
							Class: "w-full sm:w-[150px]",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Last 7 days",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "today"}) {
								Today
							}
							@selectbox.Item(selectbox.ItemProps{Value: "week"}) {
								Last 7 days
							}
							@selectbox.Item(selectbox.ItemProps{Value: "month"}) {
								Last 30 days
							}
							@selectbox.Item(selectbox.ItemProps{Value: "year"}) {
								Last year
							}
						}
					}
				</div>
			</div>
		}
	}
}

templ ActivityLog001ActivityLog() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-0"}) {
			<div class="divide-y">
				@ActivityLog001ActivityItem(
					icon.User(icon.Props{Size: 16}),
					"Profile Updated",
					"You updated your profile information",
					"account",
					"2 hours ago",
					"127.0.0.1",
				)
				@ActivityLog001ActivityItem(
					icon.Key(icon.Props{Size: 16}),
					"API Key Generated",
					"New production API key created: sk_live_...4242",
					"security",
					"5 hours ago",
					"192.168.1.1",
				)
				@ActivityLog001ActivityItem(
					icon.UserPlus(icon.Props{Size: 16}),
					"Team Member Invited",
					"Invited sarah@example.com as Editor",
					"team",
					"1 day ago",
					"10.0.0.1",
				)
				@ActivityLog001ActivityItem(
					icon.Shield(icon.Props{Size: 16}),
					"Two-Factor Enabled",
					"Two-factor authentication was enabled",
					"security",
					"3 days ago",
					"172.16.0.1",
				)
				@ActivityLog001ActivityItem(
					icon.CreditCard(icon.Props{Size: 16}),
					"Payment Method Added",
					"Added Visa ending in 4242",
					"billing",
					"5 days ago",
					"192.168.0.1",
				)
				@ActivityLog001ActivityItem(
					icon.LogIn(icon.Props{Size: 16}),
					"New Login",
					"Login from Chrome on macOS",
					"security",
					"1 week ago",
					"8.8.8.8",
				)
				@ActivityLog001ActivityItem(
					icon.Settings(icon.Props{Size: 16}),
					"Settings Changed",
					"Updated notification preferences",
					"account",
					"1 week ago",
					"127.0.0.1",
				)
				@ActivityLog001ActivityItem(
					icon.Mail(icon.Props{Size: 16}),
					"Email Verified",
					"Verified email address john@example.com",
					"account",
					"2 weeks ago",
					"192.168.1.1",
				)
			</div>
		}
		@card.Footer() {
			<div class="flex flex-col sm:flex-row items-center justify-between gap-4 mt-3">
				<p class="text-sm text-muted-foreground">Showing 8 of 150 activities</p>
				<div class="flex items-center gap-2">
					@button.Button(button.Props{
						Variant: button.VariantOutline,
					}) {
						@icon.ChevronLeft(icon.Props{Size: 16})
						Previous
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
					}) {
						Next
						@icon.ChevronRight(icon.Props{Size: 16})
					}
				</div>
			</div>
		}
	}
}

templ ActivityLog001ActivityItem(iconComponent templ.Component, title, description, category, time, ipAddress string) {
	<div class={ "p-4 hover:bg-muted/50 transition-colors" }>
		<div class="flex items-start gap-3">
			<div class="p-2 rounded-full flex-shrink-0 bg-muted">
				@iconComponent
			</div>
			<div class="flex-1 min-w-0">
				<div class="flex items-start justify-between gap-2">
					<div class="flex-1">
						<p class="font-medium">{ title }</p>
						<p class="text-sm text-muted-foreground mt-1">{ description }</p>
						<div class="flex items-center gap-3 mt-2 text-xs text-muted-foreground">
							<span>{ time }</span>
							<span>•</span>
							<span>IP: { ipAddress }</span>
						</div>
					</div>
					@badge.Badge(badge.Props{
						Variant: badge.VariantOutline,
						Class:   "text-xs flex-shrink-0",
					}) {
						{ category }
					}
				</div>
			</div>
		</div>
	</div>
}
```

### api_integrations_001.templ

**Path:** `account/api_integrations_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/code"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

templ ApiIntegrations001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@ApiIntegrations001Header()
			@ApiIntegrations001APIKeysSection()
			@ApiIntegrations001WebhooksSection()
			@ApiIntegrations001DocumentationSection()
		</div>
	</div>
}

templ ApiIntegrations001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">API & Integrations</h2>
		<p class="text-muted-foreground">Manage API keys, webhooks, and developer settings</p>
	</div>
}

templ ApiIntegrations001APIKeysSection() {
	@card.Card(card.Props{Class: "mb-6"}) {
		@card.Header() {
			@card.Title() {
				API Keys
			}
			@card.Description() {
				Create and manage API keys for accessing our services
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@ApiIntegrations001APIKeyItem(
					"Production API Key",
					"sk_live_...4242",
					"Created Jan 5, 2024",
					"150K calls this month",
					true,
				)
				@ApiIntegrations001APIKeyItem(
					"Development API Key",
					"sk_test_...5555",
					"Created Dec 10, 2023",
					"5K calls this month",
					false,
				)
			</div>
			<div class="mt-6 pt-6 border-t">
				<form class="space-y-4">
					<h4 class="font-medium mb-3">Create New API Key</h4>
					<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						@form.Item() {
							@label.Label(label.Props{For: "account007-key-name"}) {
								Key Name
							}
							@input.Input(input.Props{
								ID:          "account007-key-name",
								Placeholder: "My API Key",
							})
						}
						@form.Item() {
							@label.Label(label.Props{For: "account007-key-type"}) {
								Environment
							}
							@selectbox.SelectBox() {
								@selectbox.Trigger(selectbox.TriggerProps{
									ID: "account007-key-type",
								}) {
									@selectbox.Value(selectbox.ValueProps{
										Placeholder: "Select environment",
									})
								}
								@selectbox.Content() {
									@selectbox.Item(selectbox.ItemProps{Value: "production"}) {
										Production
									}
									@selectbox.Item(selectbox.ItemProps{Value: "development"}) {
										Development
									}
								}
							}
						}
					</div>
					@button.Button() {
						@icon.Key(icon.Props{Size: 16})
						<span class="ml-2">Generate API Key</span>
					}
				</form>
			</div>
		}
	}
}

templ ApiIntegrations001APIKeyItem(name, key, created, usage string, isProduction bool) {
	<div class="p-4 border rounded-lg">
		<div class="flex flex-col sm:flex-row sm:items-start sm:justify-between mb-3 gap-3">
			<div class="min-w-0">
				<div class="flex flex-wrap items-center gap-2">
					<p class="font-medium">{ name }</p>
					if isProduction {
						@badge.Badge(badge.Props{Variant: badge.VariantDefault}) {
							Production
						}
					} else {
						@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
							Development
						}
					}
				</div>
				<p class="text-sm text-muted-foreground">{ created } • { usage }</p>
			</div>
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.Settings(icon.Props{Size: 16})
					}
				}
				@dropdown.Content() {
					@dropdown.Item() {
						@icon.Copy(icon.Props{Size: 14})
						<span class="ml-2">Copy Key</span>
					}
					@dropdown.Item() {
						@icon.Eye(icon.Props{Size: 14})
						<span class="ml-2">View Full Key</span>
					}
					@dropdown.Item() {
						@icon.RotateCw(icon.Props{Size: 14})
						<span class="ml-2">Regenerate</span>
					}
					@dropdown.Separator()
					@dropdown.Item(dropdown.ItemProps{Class: "text-destructive"}) {
						@icon.Trash(icon.Props{Size: 14})
						<span class="ml-2">Revoke Key</span>
					}
				}
			}
		</div>
		<div class="flex items-center gap-2">
			<div class="flex-1 overflow-hidden">
				@code.Code(code.Props{Class: "font-mono text-xs sm:text-sm truncate block"}) {
					{ key }
				}
			</div>
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Copy(icon.Props{Size: 16})
			}
		</div>
	</div>
}

templ ApiIntegrations001WebhooksSection() {
	@card.Card(card.Props{Class: "mb-6"}) {
		@card.Header() {
			@card.Title() {
				Webhooks
			}
			@card.Description() {
				Configure webhooks to receive real-time updates
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@ApiIntegrations001WebhookItem(
					"https://api.example.com/webhooks/events",
					"All Events",
					true,
					"200 OK - 5 min ago",
				)
				@ApiIntegrations001WebhookItem(
					"https://api.example.com/webhooks/payments",
					"Payment Events",
					true,
					"200 OK - 1 hour ago",
				)
			</div>
		}
		@card.Footer() {
			@button.Button() {
				@icon.Plus(icon.Props{Size: 16})
				<span class="ml-2">Add Webhook Endpoint</span>
			}
		}
	}
}

templ ApiIntegrations001WebhookItem(url, events string, isActive bool, lastResponse string) {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-3">
		<div class="flex-1 min-w-0">
			<div class="flex flex-wrap items-center gap-2 mb-1">
				<p class="font-medium text-sm break-all">{ url }</p>
				if isActive {
					@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
						Active
					}
				} else {
					@badge.Badge(badge.Props{Variant: badge.VariantOutline}) {
						Inactive
					}
				}
			</div>
			<p class="text-sm text-muted-foreground">{ events } • { lastResponse }</p>
		</div>
		<div class="flex items-center gap-2 flex-shrink-0">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Test
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Edit
			}
		</div>
	</div>
}

templ ApiIntegrations001DocumentationSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Quick Start
			}
			@card.Description() {
				Get started with our API in minutes
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div>
					<h4 class="font-medium mb-2">1. Install the SDK</h4>
					<div class="overflow-x-auto">
						@code.Code(code.Props{Class: "font-mono text-xs sm:text-sm"}) {
							go get github.com/example/api-sdk
						}
					</div>
				</div>
				<div>
					<h4 class="font-medium mb-2">2. Initialize the client</h4>
					<div class="overflow-x-auto">
						@code.Code(code.Props{Class: "font-mono text-xs sm:text-sm"}) {
							const api = new ExampleAPI()
						}
					</div>
				</div>
				<div>
					<h4 class="font-medium mb-2">3. Make your first request</h4>
					<div class="overflow-x-auto">
						@code.Code(code.Props{Class: "font-mono text-xs sm:text-sm"}) {
							const response = await api.users.list()
						}
					</div>
				</div>
			</div>
		}
		@card.Footer() {
			<div class="flex flex-col sm:flex-row gap-3">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.Book(icon.Props{Size: 16})
					<span class="ml-2">View Full Documentation</span>
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.Github(icon.Props{Size: 16})
					<span class="ml-2">SDK on GitHub</span>
				}
			</div>
		}
	}
}
```

### billing_subscription_001.templ

**Path:** `account/billing_subscription_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ BillingSubscription001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@BillingSubscription001Header()
			<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
				@BillingSubscription001CurrentPlanCard()
				@BillingSubscription001UsageCard()
				@BillingSubscription001NextBillingCard()
			</div>
			<div class="space-y-6">
				@BillingSubscription001PaymentMethods()
				@BillingSubscription001BillingHistory()
			</div>
		</div>
	</div>
}

templ BillingSubscription001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Billing & Subscription</h2>
		<p class="text-muted-foreground">Manage your subscription, payment methods, and billing information</p>
	</div>
}

templ BillingSubscription001CurrentPlanCard() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-6"}) {
			<div class="flex items-start justify-between mb-4">
				<div>
					<p class="text-sm text-muted-foreground">Current Plan</p>
					<h3 class="text-2xl font-bold">Professional</h3>
				</div>
				@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
					Active
				}
			</div>
			<div class="space-y-2 mb-4">
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<span>Unlimited projects</span>
				</div>
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<span>Priority support</span>
				</div>
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<span>Advanced analytics</span>
				</div>
			</div>
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Change Plan
			}
		}
	}
}

templ BillingSubscription001UsageCard() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-6"}) {
			<p class="text-sm text-muted-foreground mb-2">Monthly Usage</p>
			<h3 class="text-2xl font-bold mb-4">$89 / $99</h3>
			<div class="space-y-3">
				<div>
					<div class="flex justify-between text-sm mb-1 gap-2">
						<span>API Calls</span>
						<span class="text-right">850K / 1M</span>
					</div>
					<div class="w-full bg-muted rounded-full h-2">
						<div class="bg-muted-foreground h-2 rounded-full" style="width: 85%"></div>
					</div>
				</div>
				<div>
					<div class="flex justify-between text-sm mb-1 gap-2">
						<span>Storage</span>
						<span class="text-right">45 GB / 100 GB</span>
					</div>
					<div class="w-full bg-muted rounded-full h-2">
						<div class="bg-muted-foreground h-2 rounded-full" style="width: 45%"></div>
					</div>
				</div>
			</div>
		}
	}
}

templ BillingSubscription001NextBillingCard() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-6"}) {
			<p class="text-sm text-muted-foreground mb-2">Next Billing Date</p>
			<h3 class="text-2xl font-bold mb-4">Jan 15, 2024</h3>
			<div class="space-y-2 text-sm">
				<div class="flex justify-between">
					<span class="text-muted-foreground">Subscription</span>
					<span>$99.00</span>
				</div>
				<div class="flex justify-between">
					<span class="text-muted-foreground">Add-ons</span>
					<span>$0.00</span>
				</div>
				<div class="flex justify-between pt-2 border-t font-medium">
					<span>Total</span>
					<span>$99.00</span>
				</div>
			</div>
		}
	}
}

templ BillingSubscription001PaymentMethods() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Payment Methods
			}
			@card.Description() {
				Add or remove payment methods for your subscription
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@BillingSubscription001PaymentMethodItem(
					"•••• 4242",
					"Visa",
					"12/2025",
					true,
				)
				@BillingSubscription001PaymentMethodItem(
					"•••• 5555",
					"Mastercard",
					"09/2024",
					false,
				)
			</div>
		}
		@card.Footer() {
			@button.Button() {
				@icon.Plus(icon.Props{Size: 16})
				<span class="ml-2">Add Payment Method</span>
			}
		}
	}
}

templ BillingSubscription001PaymentMethodItem(last4, brand, expiry string, isDefault bool) {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-3">
		<div class="flex items-center gap-3">
			<div class="p-2 bg-muted rounded flex-shrink-0">
				@icon.CreditCard(icon.Props{Size: 20})
			</div>
			<div class="min-w-0">
				<div class="flex flex-wrap items-center gap-2">
					<p class="font-medium">{ brand } { last4 }</p>
					if isDefault {
						@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
							Default
						}
					}
				</div>
				<p class="text-sm text-muted-foreground">Expires { expiry }</p>
			</div>
		</div>
		<div class="flex flex-wrap items-center gap-2">
			if !isDefault {
				@button.Button(button.Props{
					Variant: button.VariantGhost,
				}) {
					Make Default
				}
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Remove
			}
		</div>
	</div>
}

templ BillingSubscription001BillingHistory() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Billing History
			}
			@card.Description() {
				Download invoices and view past payments
			}
		}
		@card.Content(card.ContentProps{Class: "p-0"}) {
			<div class="overflow-x-auto">
				@table.Table() {
					@table.Header() {
						@table.Row() {
							@table.Head() {
								Invoice 
							}
							@table.Head() {
								Date 
							}
							@table.Head() {
								Amount 
							}
							@table.Head() {
								Status 
							}
							@table.Head(table.HeadProps{Class: "text-right"}) {
								Actions 
							}
						}
					}
					@table.Body() {
						@BillingSubscription001InvoiceRow("INV-2024-001", "Jan 1, 2024", "$99.00", "Paid")
						@BillingSubscription001InvoiceRow("INV-2023-012", "Dec 1, 2023", "$99.00", "Paid")
						@BillingSubscription001InvoiceRow("INV-2023-011", "Nov 1, 2023", "$99.00", "Paid")
						@BillingSubscription001InvoiceRow("INV-2023-010", "Oct 1, 2023", "$99.00", "Paid")
						@BillingSubscription001InvoiceRow("INV-2023-009", "Sep 1, 2023", "$99.00", "Paid")
					}
				}
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				View All Invoices
			}
		}
	}
}

templ BillingSubscription001InvoiceRow(invoice, date, amount, status string) {
	@table.Row() {
		@table.Cell() {
			<span class="font-medium">{ invoice }</span>
		}
		@table.Cell() {
			{ date }
		}
		@table.Cell() {
			{ amount }
		}
		@table.Cell() {
			@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
				{ status }
			}
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "text-xs sm:text-sm",
			}) {
				@icon.Download(icon.Props{Size: 14})
				<span class="ml-1 hidden sm:inline">Download</span>
			}
		}
	}
}
```

### data_privacy_001.templ

**Path:** `account/data_privacy_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/alert"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
)

templ DataPrivacy001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-4xl mx-auto">
			@DataPrivacy001Header()
			<div class="space-y-6">
				@DataPrivacy001ExportDataSection()
				@DataPrivacy001DeleteAccountSection()
			</div>
		</div>
	</div>
}

templ DataPrivacy001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Data & Privacy</h2>
		<p class="text-muted-foreground">Download your data or permanently delete your account</p>
	</div>
}

templ DataPrivacy001ExportDataSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@icon.Download(icon.Props{Size: 20})
					Export Your Data
				</div>
			}
			@card.Description() {
				Download a copy of all your data stored in our systems
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<p class="text-sm text-muted-foreground">
					You can request a complete copy of your data at any time. This includes:
				</p>
				<div class="grid grid-cols-1 md:grid-cols-2 gap-3">
					@DataPrivacy001DataItem("Profile information", icon.User(icon.Props{Size: 16}))
					@DataPrivacy001DataItem("Account settings", icon.Settings(icon.Props{Size: 16}))
					@DataPrivacy001DataItem("Activity history", icon.Clock(icon.Props{Size: 16}))
					@DataPrivacy001DataItem("Uploaded files", icon.File(icon.Props{Size: 16}))
					@DataPrivacy001DataItem("API usage data", icon.ChartBar(icon.Props{Size: 16}))
					@DataPrivacy001DataItem("Billing records", icon.CreditCard(icon.Props{Size: 16}))
				</div>
				<div class="pt-4">
					<h4 class="font-medium mb-3">Select Export Format</h4>
					<div class="space-y-2">
						@form.ItemFlex() {
							@checkbox.Checkbox(checkbox.Props{
								ID:      "account009-json",
								Checked: true,
							})
							@label.Label(label.Props{For: "account009-json", Class: "text-sm font-normal"}) {
								<div>
									<p class="font-medium">JSON Format</p>
									<p class="text-muted-foreground">Machine-readable format, ideal for data portability</p>
								</div>
							}
						}
						@form.ItemFlex() {
							@checkbox.Checkbox(checkbox.Props{
								ID: "account009-csv",
							})
							@label.Label(label.Props{For: "account009-csv", Class: "text-sm font-normal"}) {
								<div>
									<p class="font-medium">CSV Format</p>
									<p class="text-muted-foreground">Spreadsheet format for easy viewing and analysis</p>
								</div>
							}
						}
					</div>
				</div>
			</div>
		}
		@card.Footer(card.FooterProps{
			Class: "flex-col gap-2 items-start",
		}) {
			@button.Button() {
				@icon.Download(icon.Props{Size: 16})
				<span class="ml-2">Request Data Export</span>
			}
			<p class="text-sm text-muted-foreground">
				We'll email you when your data export is ready. This usually takes 24-48 hours.
			</p>
		}
	}
}

templ DataPrivacy001DataItem(label string, iconComponent templ.Component) {
	<div class="flex items-center gap-2">
		<div class="text-muted-foreground">
			@iconComponent
		</div>
		<span class="text-sm">{ label }</span>
	</div>
}

templ DataPrivacy001DeleteAccountSection() {
	@card.Card(card.Props{Class: "border-destructive/50"}) {
		@card.Header() {
			@card.Title(card.TitleProps{Class: "text-destructive"}) {
				<div class="flex items-center gap-2">
					@icon.TriangleAlert(icon.Props{Size: 20})
					Delete Account
				</div>
			}
			@card.Description() {
				Permanently delete your account and all associated data
			}
		}
		@card.Content() {
			@alert.Alert(alert.Props{Variant: alert.VariantDestructive}) {
				@icon.TriangleAlert(icon.Props{Size: 16})
				@alert.Title() {
					Warning: This action cannot be undone
				}
				@alert.Description() {
					Once you delete your account, all your data will be permanently removed from our servers.
				}
			}
			<div class="mt-4 space-y-4">
				<div>
					<h4 class="font-medium mb-2">What happens when you delete your account:</h4>
					<ul class="space-y-2 text-sm text-muted-foreground">
						<li class="flex items-start gap-2">
							<span class="text-destructive mt-0.5">•</span>
							<span>All your personal information will be permanently deleted</span>
						</li>
						<li class="flex items-start gap-2">
							<span class="text-destructive mt-0.5">•</span>
							<span>You will lose access to all services and features</span>
						</li>
						<li class="flex items-start gap-2">
							<span class="text-destructive mt-0.5">•</span>
							<span>Any active subscriptions will be cancelled immediately</span>
						</li>
						<li class="flex items-start gap-2">
							<span class="text-destructive mt-0.5">•</span>
							<span>Your username and email cannot be used to create a new account</span>
						</li>
					</ul>
				</div>
				<div class="pt-4 border-t">
					<form class="space-y-4">
						@form.Item() {
							@label.Label(label.Props{For: "account009-confirm"}) {
								To confirm deletion, type "DELETE" below:
							}
							@input.Input(input.Props{
								ID:          "account009-confirm",
								Placeholder: "Type DELETE to confirm",
							})
						}
						@form.ItemFlex() {
							@checkbox.Checkbox(checkbox.Props{
								ID: "account009-understand",
							})
							@label.Label(label.Props{For: "account009-understand", Class: "text-sm font-normal"}) {
								I understand that this action is permanent and cannot be undone
							}
						}
					</form>
				</div>
			</div>
		}
		@card.Footer() {
			<div class="flex flex-col sm:flex-row gap-3">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full sm:w-auto",
				}) {
					Cancel
				}
				@button.Button(button.Props{
					Variant: button.VariantDestructive,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.Trash2(icon.Props{Size: 16})
					<span class="ml-2">Delete My Account</span>
				}
			</div>
		}
	}
}
```

### integrations_001.templ

**Path:** `account/integrations_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
)

templ Integrations001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@Integrations001Header()
			<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
				@Integrations001IntegrationCard(
					"GitHub",
					"Connect your GitHub repositories",
					"Version Control",
					icon.Github(icon.Props{Size: 24}),
					true,
					"Connected to 12 repositories",
				)
				@Integrations001IntegrationCard(
					"Slack",
					"Get notifications in your Slack workspace",
					"Communication",
					icon.MessageSquare(icon.Props{Size: 24}),
					true,
					"Connected to workspace 'Acme Inc'",
				)
				@Integrations001IntegrationCard(
					"Google Drive",
					"Sync files with Google Drive",
					"Storage",
					icon.HardDrive(icon.Props{Size: 24}),
					false,
					"",
				)
				@Integrations001IntegrationCard(
					"Stripe",
					"Process payments with Stripe",
					"Payments",
					icon.CreditCard(icon.Props{Size: 24}),
					true,
					"Live mode enabled",
				)
				@Integrations001IntegrationCard(
					"Zapier",
					"Automate workflows with 5000+ apps",
					"Automation",
					icon.Zap(icon.Props{Size: 24}),
					false,
					"",
				)
				@Integrations001IntegrationCard(
					"Discord",
					"Join your community on Discord",
					"Community",
					icon.Users(icon.Props{Size: 24}),
					false,
					"",
				)
			</div>
			@Integrations001CustomIntegrations()
		</div>
	</div>
}

templ Integrations001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Integrations</h2>
		<p class="text-muted-foreground">Connect your favorite tools and services</p>
	</div>
}

templ Integrations001IntegrationCard(name, description, category string, iconComponent templ.Component, isConnected bool, connectionInfo string) {
	@card.Card(card.Props{Class: "h-full"}) {
		@card.Content(card.ContentProps{Class: "p-6 h-full flex flex-col"}) {
			<div class="flex items-start justify-between mb-4">
				<div class="p-3 bg-muted rounded-lg">
					@iconComponent
				</div>
				if isConnected {
					@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
						Connected
					}
				}
			</div>
			<div class="flex-1">
				<h3 class="font-semibold text-lg mb-1">{ name }</h3>
				<p class="text-sm text-muted-foreground mb-2">{ description }</p>
				<p class="text-xs text-muted-foreground mb-4">{ category }</p>
				if isConnected && connectionInfo != "" {
					<p class="text-sm text-muted-foreground mb-4">{ connectionInfo }</p>
				}
			</div>
			<div class="flex gap-2 mt-auto pt-4">
				if isConnected {
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "flex-1",
					}) {
						Configure
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "flex-1",
					}) {
						Disconnect
					}
				} else {
					@button.Button(button.Props{
						Class: "w-full",
					}) {
						Connect
					}
				}
			</div>
		}
	}
}

templ Integrations001CustomIntegrations() {
	@card.Card(card.Props{Class: "mt-8"}) {
		@card.Header() {
			@card.Title() {
				Custom Integrations
			}
			@card.Description() {
				Build your own integrations using our API
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@Integrations001CustomIntegrationItem(
					"E-commerce Sync",
					"Syncs orders from Shopify to internal system",
					"Last run: 2 hours ago",
					true,
				)
				@Integrations001CustomIntegrationItem(
					"Analytics Pipeline",
					"Exports data to BigQuery for analysis",
					"Last run: 1 day ago",
					true,
				)
				@Integrations001CustomIntegrationItem(
					"Customer Support Bot",
					"Automated responses for common queries",
					"Disabled by user",
					false,
				)
			</div>
		}
		@card.Footer() {
			@button.Button() {
				@icon.Plus(icon.Props{Size: 16})
				<span class="ml-2">Create Custom Integration</span>
			}
		}
	}
}

templ Integrations001CustomIntegrationItem(name, description, status string, isActive bool) {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-4">
		<div class="flex items-center gap-3 flex-1 min-w-0">
			<div class="p-2 bg-muted rounded flex-shrink-0">
				@icon.Code(icon.Props{Size: 20})
			</div>
			<div class="min-w-0">
				<p class="font-medium truncate">{ name }</p>
				<p class="text-sm text-muted-foreground">{ description }</p>
				<p class="text-xs text-muted-foreground mt-1">{ status }</p>
			</div>
		</div>
		<div class="flex items-center gap-3 flex-shrink-0">
			@switchcomp.Switch(switchcomp.Props{
				ID:      "integration-" + name,
				Checked: isActive,
			})
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Settings(icon.Props{Size: 16})
			}
		</div>
	</div>
}
```

### security_settings_001.templ

**Path:** `account/security_settings_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
)

templ SecuritySettings001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-4xl mx-auto">
			@SecuritySettings001Header()
			<div class="space-y-6">
				@SecuritySettings001PasswordSection()
				@SecuritySettings001TwoFactorSection()
				@SecuritySettings001SessionsSection()
				@SecuritySettings001SecurityKeysSection()
			</div>
		</div>
	</div>
}

templ SecuritySettings001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold text-foreground mb-2">Security Settings</h2>
		<p class="text-muted-foreground">Manage your password, authentication methods, and active sessions</p>
	</div>
}

templ SecuritySettings001PasswordSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@icon.Lock(icon.Props{Size: 20})
					Password
				</div>
			}
			@card.Description() {
				Last changed 3 months ago
			}
		}
		@card.Content() {
			<form class="space-y-4">
				@form.Item() {
					@label.Label(label.Props{For: "account004-current-password"}) {
						Current Password
					}
					@input.Input(input.Props{
						ID:          "account004-current-password",
						Type:        input.TypePassword,
						Placeholder: "Enter current password",
					})
				}
				@form.Item() {
					@label.Label(label.Props{For: "account004-new-password"}) {
						New Password
					}
					@input.Input(input.Props{
						ID:          "account004-new-password",
						Type:        input.TypePassword,
						Placeholder: "Enter new password",
					})
					<p class="text-sm text-muted-foreground mt-1 break-words">Must be at least 8 characters with a mix of letters, numbers, and symbols</p>
				}
				@form.Item() {
					@label.Label(label.Props{For: "account004-confirm-password"}) {
						Confirm New Password
					}
					@input.Input(input.Props{
						ID:          "account004-confirm-password",
						Type:        input.TypePassword,
						Placeholder: "Confirm new password",
					})
				}
			</form>
		}
		@card.Footer() {
			@button.Button() {
				@icon.Save(icon.Props{Size: 16})
				<span class="ml-2">Update Password</span>
			}
		}
	}
}

templ SecuritySettings001TwoFactorSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@icon.Smartphone(icon.Props{Size: 20})
					Two-Factor Authentication
				</div>
			}
			@card.Description() {
				Add an extra layer of security to your account
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 bg-muted/50 rounded-lg gap-3">
					<div class="flex items-center gap-3">
						<div class="p-2 bg-green-500/10 dark:bg-green-500/20 text-green-500 rounded-full flex-shrink-0">
							@icon.Check(icon.Props{Size: 16})
						</div>
						<div class="min-w-0">
							<p class="font-medium">Authenticator App</p>
							<p class="text-sm text-muted-foreground">Google Authenticator configured</p>
						</div>
					</div>
					<div class="flex items-center gap-2 flex-shrink-0">
						@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
							Active
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
						}) {
							Remove
						}
					</div>
				</div>
				<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-3">
					<div class="flex items-center gap-3">
						<div class="p-2 bg-muted rounded-full flex-shrink-0">
							@icon.MessageSquare(icon.Props{Size: 16})
						</div>
						<div class="min-w-0">
							<p class="font-medium">SMS Backup</p>
							<p class="text-sm text-muted-foreground">Receive codes via text message</p>
						</div>
					</div>
					@button.Button(button.Props{
						Variant: button.VariantOutline,
					}) {
						Set Up
					}
				</div>
				<div class="pt-4 border-t">
					<h4 class="font-medium mb-3">Recovery Codes</h4>
					<p class="text-sm text-muted-foreground mb-3">Save these codes in a safe place. You can use them to access your account if you lose your device.</p>
					@button.Button(button.Props{
						Variant: button.VariantOutline,
					}) {
						@icon.Download(icon.Props{Size: 16})
						<span class="ml-2">Generate New Codes</span>
					}
				</div>
			</div>
		}
	}
}

templ SecuritySettings001SessionsSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@icon.Monitor(icon.Props{Size: 20})
					Active Sessions
				</div>
			}
			@card.Description() {
				Devices currently signed in to your account
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@SecuritySettings001SessionItem(
					"MacBook Pro",
					"Chrome on macOS",
					"San Francisco, CA",
					"Current session",
					true,
				)
				@SecuritySettings001SessionItem(
					"iPhone 14 Pro",
					"Mobile app",
					"San Francisco, CA",
					"Last active 2 hours ago",
					false,
				)
				@SecuritySettings001SessionItem(
					"iPad Air",
					"Safari on iPadOS",
					"Los Angeles, CA",
					"Last active 3 days ago",
					false,
				)
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantDestructive,
			}) {
				Sign Out All Other Sessions
			}
		}
	}
}

templ SecuritySettings001SessionItem(device, browser, location, activity string, current bool) {
	<div class="flex flex-col sm:flex-row sm:items-start sm:justify-between p-4 border rounded-lg gap-3">
		<div class="flex items-start gap-3">
			<div class="p-2 bg-muted rounded-full flex-shrink-0">
				@icon.Monitor(icon.Props{Size: 16})
			</div>
			<div class="min-w-0 flex-1">
				<div class="flex flex-wrap items-center gap-2">
					<p class="font-medium">{ device }</p>
					if current {
						@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
							Current
						}
					}
				</div>
				<p class="text-sm text-muted-foreground break-words">{ browser }</p>
				<p class="text-sm text-muted-foreground break-words">{ location } • { activity }</p>
			</div>
		</div>
		if !current {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "flex-shrink-0",
			}) {
				Sign Out
			}
		}
	</div>
}

templ SecuritySettings001SecurityKeysSection() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@icon.Key(icon.Props{Size: 20})
					Security Keys
				</div>
			}
			@card.Description() {
				Hardware keys for passwordless authentication
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="text-center py-8 border-2 border-dashed rounded-lg">
					<div class="inline-flex p-3 bg-muted rounded-full mb-3">
						@icon.ShieldCheck(icon.Props{Size: 24, Class: "text-muted-foreground"})
					</div>
					<p class="text-sm text-muted-foreground mb-4">No security keys added yet</p>
					@button.Button() {
						@icon.Plus(icon.Props{Size: 16})
						<span class="ml-2">Add Security Key</span>
					}
				</div>
				<div class="pt-4 border-t">
					<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
						<div class="flex-1">
							<p class="font-medium">Passkeys</p>
							<p class="text-sm text-muted-foreground">Sign in with Face ID, Touch ID, or Windows Hello</p>
						</div>
						@switchcomp.Switch(switchcomp.Props{
							ID: "account004-passkeys",
						})
					</div>
				</div>
			</div>
		}
	}
}
```

### team_management_001.templ

**Path:** `account/team_management_001.templ`

```templ
package account

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

templ TeamManagement001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@TeamManagement001Header()
			<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
				@TeamManagement001TeamStatsCard("Active Members", "8", "2 pending invites", icon.Users(icon.Props{Size: 20}))
				@TeamManagement001TeamStatsCard("Total Seats", "10", "2 seats available", icon.UserPlus(icon.Props{Size: 20}))
				@TeamManagement001TeamStatsCard("Roles", "4", "Admin, Editor, Viewer, Guest", icon.Shield(icon.Props{Size: 20}))
			</div>
			@TeamManagement001TeamMembers()
			<div class="mt-6"></div>
			@TeamManagement001PendingInvites()
		</div>
	</div>
}

templ TeamManagement001Header() {
	<div class="mb-8 flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
		<div>
			<h2 class="text-3xl font-bold text-foreground mb-2">Team Management</h2>
			<p class="text-muted-foreground">Manage team members, roles, and permissions</p>
		</div>
		@button.Button(button.Props{Class: "w-full md:w-auto"}) {
			@icon.UserPlus(icon.Props{Size: 16})
			<span class="ml-2">Invite Member</span>
		}
	</div>
}

templ TeamManagement001TeamStatsCard(title, value, subtitle string, iconComponent templ.Component) {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-6"}) {
			<div class="flex items-center justify-between mb-2">
				<span class="text-sm text-muted-foreground">{ title }</span>
				<div class="text-muted-foreground">
					@iconComponent
				</div>
			</div>
			<div class="text-2xl font-bold">{ value }</div>
			<p class="text-sm text-muted-foreground mt-1">{ subtitle }</p>
		}
	}
}

templ TeamManagement001TeamMembers() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Team Members
			}
			@card.Description() {
				Active members with access to your workspace
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@TeamManagement001MemberItem(
					"John Doe",
					"john@example.com",
					"Owner",
					"/assets/img/avatar-gh-1.png",
					true,
					true,
				)
				@TeamManagement001MemberItem(
					"Sarah Wilson",
					"sarah@example.com",
					"Admin",
					"/assets/img/avatar-gh-2.png",
					true,
					false,
				)
				@TeamManagement001MemberItem(
					"Michael Chen",
					"michael@example.com",
					"Editor",
					"/assets/img/avatar-gh-3.png",
					true,
					false,
				)
				@TeamManagement001MemberItem(
					"Emily Davis",
					"emily@example.com",
					"Viewer",
					"/assets/img/avatar-gh-4.png",
					false,
					false,
				)
			</div>
		}
	}
}

templ TeamManagement001MemberItem(name, email, role, avatarUrl string, isActive, isOwner bool) {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-3">
		<div class="flex items-center gap-3">
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: avatarUrl,
					Alt: name,
				})
				@avatar.Fallback() {
					{ string(name[0]) }{ string(name[1]) }
				}
			}
			<div class="min-w-0 flex-1">
				<div class="flex items-center gap-2">
					<p class="font-medium truncate">{ name }</p>
					if isActive {
						<div class="w-2 h-2 bg-green-500 rounded-full flex-shrink-0"></div>
					}
				</div>
				<p class="text-sm text-muted-foreground truncate">{ email }</p>
			</div>
		</div>
		<div class="flex items-center gap-2 flex-shrink-0">
			if isOwner {
				@badge.Badge(badge.Props{Variant: badge.VariantDefault}) {
					{ role }
				}
			} else {
				@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
					{ role }
				}
			}
			if !isOwner {
				@dropdown.Dropdown() {
					@dropdown.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
						}) {
							@icon.Settings(icon.Props{Size: 16})
						}
					}
					@dropdown.Content() {
						@dropdown.Item() {
							@icon.Settings(icon.Props{Size: 14})
							<span class="ml-2">Change Role</span>
						}
						@dropdown.Item() {
							@icon.Mail(icon.Props{Size: 14})
							<span class="ml-2">Resend Invite</span>
						}
						@dropdown.Separator()
						@dropdown.Item(dropdown.ItemProps{Class: "text-destructive"}) {
							@icon.UserX(icon.Props{Size: 14})
							<span class="ml-2">Remove Member</span>
						}
					}
				}
			}
		</div>
	</div>
}

templ TeamManagement001PendingInvites() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Pending Invites
			}
			@card.Description() {
				Team invitations waiting to be accepted
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@TeamManagement001InviteItem("alex@example.com", "Editor", "2 days ago")
				@TeamManagement001InviteItem("jordan@example.com", "Viewer", "5 days ago")
			</div>
			<div class="mt-6 pt-6 border-t">
				<form class="space-y-4">
					<h4 class="font-medium mb-3">Send New Invite</h4>
					<div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
						@form.Item(form.ItemProps{Class: "sm:col-span-2"}) {
							@label.Label(label.Props{For: "account006-email"}) {
								Email Address
							}
							@input.Input(input.Props{
								ID:          "account006-email",
								Type:        input.TypeEmail,
								Placeholder: "colleague@example.com",
							})
						}
						@form.Item() {
							@label.Label(label.Props{For: "account006-role"}) {
								Role
							}
							@selectbox.SelectBox() {
								@selectbox.Trigger(selectbox.TriggerProps{
									ID: "account006-role",
								}) {
									@selectbox.Value(selectbox.ValueProps{
										Placeholder: "Select role",
									})
								}
								@selectbox.Content() {
									@selectbox.Item(selectbox.ItemProps{Value: "admin"}) {
										Admin
									}
									@selectbox.Item(selectbox.ItemProps{Value: "editor"}) {
										Editor
									}
									@selectbox.Item(selectbox.ItemProps{Value: "viewer"}) {
										Viewer
									}
								}
							}
						}
					</div>
					@button.Button() {
						@icon.Send(icon.Props{Size: 16})
						<span class="ml-2">Send Invite</span>
					}
				</form>
			</div>
		}
	}
}

templ TeamManagement001InviteItem(email, role, sentTime string) {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between p-4 border rounded-lg gap-3">
		<div class="min-w-0 flex-1">
			<p class="font-medium truncate">{ email }</p>
			<p class="text-sm text-muted-foreground">Invited as { role } • { sentTime }</p>
		</div>
		<div class="flex items-center gap-2 flex-shrink-0">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Resend
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "text-destructive hover:text-destructive",
			}) {
				Cancel
			}
		</div>
	</div>
}
```

## Ai

### ai_001.templ

**Path:** `ai/ai_001.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/skeleton"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{Class: "w-full max-w-4xl max-h-svh flex flex-col"}) {
			@card.Header(card.HeaderProps{
				Class: "mb-2",
			}) {
				@AI001Header()
			}
			@separator.Separator()
			@card.Content(card.ContentProps{Class: "flex-1 overflow-scroll p-0"}) {
				@AI001Messages()
			}
			@separator.Separator()
			@card.Content() {
				@AI001Input()
			}
		}
	</section>
}

templ AI001Header() {
	<div class="flex items-center justify-between">
		<div class="flex items-center gap-3">
			<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center">
				@icon.Bot(icon.Props{
					Size:  20,
					Class: "text-primary-foreground",
				})
			</div>
			<div>
				@card.Title() {
					AI Assistant
				}
				@card.Description() {
					Always here to help
				}
			</div>
		</div>
		<div class="flex items-center gap-2">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.RotateCcw(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Settings(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}

templ AI001Messages() {
	<div class="flex-1 overflow-y-auto p-4 md:p-6 space-y-4">
		@AI001UserMessage("Can you explain goroutines?")
		@AI001AIMessage(
			true,
			false,
		)
		@AI001UserMessage("Show me a practical example")
		@AI001AIMessage(false, true)
	</div>
}

templ AI001UserMessage(message string) {
	<div class="flex gap-3 justify-end">
		<div class="max-w-[90%] sm:max-w-[80%] md:max-w-[70%] space-y-2">
			<div class="flex items-center gap-2 justify-end">
				<p class="font-medium text-sm">You</p>
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "User",
					})
				}
			</div>
			<div class="bg-primary text-primary-foreground rounded-lg p-4">
				<p class="text-sm whitespace-pre-wrap">{ message }</p>
			</div>
		</div>
	</div>
}

templ AI001AIMessage(showActions, isStreaming bool) {
	<div class="flex gap-3">
		<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center flex-shrink-0">
			@icon.Bot(icon.Props{
				Size:  20,
				Class: "text-primary-foreground",
			})
		</div>
		<div class="flex-1 max-w-[90%] sm:max-w-[85%] space-y-2">
			<p class="font-medium text-sm">AI Assistant</p>
			<div class="bg-muted rounded-lg p-3 md:p-4">
				if isStreaming {
					<div class="space-y-2">
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-3/4 bg-muted-foreground/20"})
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-full bg-muted-foreground/20"})
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-5/6 bg-muted-foreground/20"})
					</div>
				} else {
					<div class="space-y-2">
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-3/4 bg-muted-foreground/20 animate-none"})
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-full bg-muted-foreground/20 animate-none"})
						@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-5/6 bg-muted-foreground/20 animate-none"})
					</div>
				}
			</div>
			if showActions {
				<div class="flex items-center gap-2">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.Copy(icon.Props{
							Size: 14,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.ThumbsUp(icon.Props{
							Size: 14,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.ThumbsDown(icon.Props{
							Size: 14,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.RefreshCw(icon.Props{
							Size: 14,
						})
					}
				</div>
			}
		</div>
	</div>
}

templ AI001Input() {
	<div>
		@textarea.Textarea(textarea.Props{
			Placeholder: "Ask me anything...",
			Class:       "min-h-[100px] border-0 resize-none focus:ring-0",
			Rows:        4,
		})
		<div class="flex items-center justify-between p-3">
			<div class="flex items-center gap-2">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Paperclip(icon.Props{
						Size: 16,
					})
				}
				<span class="text-xs text-muted-foreground hidden sm:inline">Attach files</span>
			</div>
			@button.Button(button.Props{
				Size: button.SizeSm,
			}) {
				Send
				@icon.Send(icon.Props{
					Size:  14,
					Class: "ml-1",
				})
			}
		</div>
	</div>
	<div class="flex items-center justify-center gap-2 sm:gap-4 text-xs text-muted-foreground">
		<span>GPT-4</span>
		<span>•</span>
		<span class="hidden sm:inline">2,048 tokens</span>
		<span class="sm:hidden">2k</span>
		<span>•</span>
		<button class="hover:text-foreground">Clear</button>
	</div>
}
```

### ai_002.templ

**Path:** `ai/ai_002.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
	"github.com/templui/templui-pro/internal/ui/components/slider"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{Class: "w-full max-w-5xl h-[500px] md:h-[600px] lg:h-[700px] flex relative overflow-hidden"}) {
			<!-- Desktop sidebar -->
			<div class="hidden md:block">
				@AI002Sidebar()
			</div>
			<!-- Mobile sidebar drawer -->
			@sheet.Sheet(sheet.Props{Side: sheet.SideLeft}) {
				@sheet.Trigger(sheet.TriggerProps{
					Class: "md:hidden absolute top-4 left-4 z-10",
				}) {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.Menu(icon.Props{Size: 20})
					}
				}
				@sheet.Content(sheet.ContentProps{
					Class:           "p-4",
					HideCloseButton: true,
				}) {
					@AI002SidebarContent()
				}
			}
			<div class="flex-1 flex flex-col border-r">
				@AI002Header()
				@AI002Messages()
				@AI002Input()
			</div>
			<!-- Desktop settings panel -->
			<div class="hidden lg:block">
				@AI002Settings()
			</div>
		}
	</section>
}

templ AI002Sidebar() {
	<div class="w-64 border-r bg-muted/20 p-4 space-y-4">
		@AI002SidebarContent()
	</div>
}

templ AI002SidebarContent() {
	<div class="space-y-4">
		<div class="flex items-center justify-between">
			@card.Title(card.TitleProps{Class: "text-base"}) {
				Chat History
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
				Class:   "h-8 w-8",
			}) {
				@icon.Plus(icon.Props{
					Size: 16,
				})
			}
		</div>
		<div class="space-y-2">
			@AI002HistoryItem("Go Context Explanation", "2 hours ago", true)
			@AI002HistoryItem("Python Data Analysis", "Yesterday", false)
			@AI002HistoryItem("SQL Query Optimization", "2 days ago", false)
			@AI002HistoryItem("Docker Best Practices", "3 days ago", false)
			@AI002HistoryItem("API Design Patterns", "Last week", false)
		</div>
	</div>
}

templ AI002HistoryItem(title, time string, isActive bool) {
	<button
		class={
			"w-full text-left p-3 rounded-lg transition-colors",
			templ.KV("bg-background border", isActive),
			templ.KV("hover:bg-muted", !isActive),
		}
	>
		<p class="text-sm font-medium truncate">{ title }</p>
		<p class="text-xs text-muted-foreground">{ time }</p>
	</button>
}

templ AI002Header() {
	<div class="p-4 border-b space-y-3">
		<div class="flex items-center justify-between">
			<h2 class="font-semibold pl-10 md:pl-0">AI Chat</h2>
			<div class="flex items-center gap-2">
				<!-- Mobile settings trigger -->
				@sheet.Sheet() {
					@sheet.Trigger(sheet.TriggerProps{
						Class: "lg:hidden",
					}) {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
						}) {
							@icon.Settings(icon.Props{Size: 18})
						}
					}
					<!-- Mobile settings drawer -->
					@sheet.Content(sheet.ContentProps{
						Class:           "p-4",
						HideCloseButton: true,
					}) {
						@AI002SettingsContent()
					}
				}
				@dropdown.Dropdown() {
					@dropdown.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Size:    button.SizeSm,
							Class:   "gap-2",
						}) {
							<div class="w-2 h-2 bg-green-500 rounded-full"></div>
							GPT-4
							@icon.ChevronDown(icon.Props{
								Size: 14,
							})
						}
					}
					@dropdown.Content(dropdown.ContentProps{
						Class: "w-56",
					}) {
						@dropdown.Label() {
							Available Models
						}
						@dropdown.Separator()
						@dropdown.Group() {
							@dropdown.Item() {
								<div class="flex items-center justify-between w-full">
									<span>GPT-4</span>
									@badge.Badge(badge.Props{
										Variant: badge.VariantSecondary,
										Class:   "text-xs",
									}) {
										Powerful
									}
								</div>
							}
							@dropdown.Item() {
								<div class="flex items-center justify-between w-full">
									<span>GPT-3.5 Turbo</span>
									@badge.Badge(badge.Props{
										Variant: badge.VariantSecondary,
										Class:   "text-xs",
									}) {
										Fast
									}
								</div>
							}
							@dropdown.Item() {
								<div class="flex items-center justify-between w-full">
									<span>Claude 3</span>
									@badge.Badge(badge.Props{
										Variant: badge.VariantSecondary,
										Class:   "text-xs",
									}) {
										Creative
									}
								</div>
							}
							@dropdown.Item() {
								<div class="flex items-center justify-between w-full">
									<span>Llama 2</span>
									@badge.Badge(badge.Props{
										Variant: badge.VariantSecondary,
										Class:   "text-xs",
									}) {
										Open
									}
								</div>
							}
						}
					}
				}
			</div>
		</div>
	</div>
}

templ AI002Messages() {
	<div class="flex-1 overflow-y-auto p-6 space-y-6">
		@AI002Message(
			"user",
			"Which AI model should I use?",
			"",
		)
		@AI002Message(
			"ai",
			"**GPT-4** → Complex tasks, best quality\n**GPT-3.5** → Fast & affordable\n**Claude 3** → Creative writing\n**Llama 2** → Open source, local",
			"GPT-4",
		)
		@AI002Message(
			"user",
			"I need help with coding",
			"",
		)
		@AI002Message(
			"ai",
			"For coding: **GPT-4** is best for complex debugging.\nFor simple tasks: **GPT-3.5** is faster and cheaper.",
			"GPT-4",
		)
	</div>
}

templ AI002Message(role, content, model string) {
	<div class={ templ.KV("flex gap-3", true), templ.KV("justify-end", role == "user") }>
		if role == "user" {
			<div class="max-w-[85%] sm:max-w-[75%] md:max-w-[70%]">
				<div class="bg-primary text-primary-foreground rounded-lg p-3 sm:p-4">
					<p class="text-sm whitespace-pre-wrap">{ content }</p>
				</div>
			</div>
		} else {
			<div class="w-8 h-8 bg-muted rounded-lg flex items-center justify-center flex-shrink-0">
				@icon.Bot(icon.Props{
					Size: 18,
				})
			</div>
			<div class="flex-1 max-w-[85%] sm:max-w-[75%] md:max-w-[70%] space-y-2">
				<div class="flex items-center gap-2">
					<span class="text-xs text-muted-foreground">{ model }</span>
				</div>
				<div class="bg-muted rounded-lg p-3 sm:p-4">
					<div class="prose prose-sm max-w-none dark:prose-invert">
						@templ.Raw(content)
					</div>
				</div>
				<div class="flex items-center gap-2">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-7 w-7",
					}) {
						@icon.Copy(icon.Props{
							Size: 12,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-7 w-7",
					}) {
						@icon.RefreshCw(icon.Props{
							Size: 12,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-7 w-7",
					}) {
						@icon.Share(icon.Props{
							Size: 12,
						})
					}
				</div>
			</div>
		}
	</div>
}

templ AI002Settings() {
	<div class="w-80 p-4 space-y-4 bg-muted/10">
		@AI002SettingsContent()
	</div>
}

templ AI002SettingsContent() {
	<div class="space-y-4">
		@card.Title() {
			Model Settings
		}
		<div class="space-y-3">
			<div>
				<label class="text-sm font-medium">Temperature</label>
				<div class="mt-2">
					@slider.Slider(slider.Props{
						Class: "w-full",
					}) {
						@slider.Input(slider.InputProps{
							Value: 70,
							Max:   100,
							Step:  1,
						})
					}
				</div>
				<div class="flex justify-between mt-1">
					<span class="text-xs text-muted-foreground">Precise</span>
					<span class="text-xs">0.7</span>
					<span class="text-xs text-muted-foreground">Creative</span>
				</div>
			</div>
			<div>
				<label class="text-sm font-medium">Max Tokens</label>
				<div class="mt-2">
					@slider.Slider(slider.Props{
						Class: "w-full",
					}) {
						@slider.Input(slider.InputProps{
							Value: 2048,
							Max:   4096,
							Step:  256,
						})
					}
				</div>
				<span class="text-xs text-muted-foreground">2048 tokens</span>
			</div>
			<div>
				<label class="text-sm font-medium">System Prompt</label>
				@textarea.Textarea(textarea.Props{
					Placeholder: "You are a helpful AI assistant...",
					Class:       "mt-2 min-h-[100px] text-xs",
					Rows:        4,
				})
			</div>
			<div>
				<label class="text-sm font-medium">Response Format</label>
				@selectbox.SelectBox(selectbox.Props{
					Class: "mt-2",
				}) {
					@selectbox.Trigger() {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Select a format",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: "text"}) {
							Text
						}
						@selectbox.Item(selectbox.ItemProps{Value: "markdown"}) {
							Markdown
						}
						@selectbox.Item(selectbox.ItemProps{Value: "code"}) {
							Code
						}
						@selectbox.Item(selectbox.ItemProps{Value: "json"}) {
							JSON
						}
					}
				}
			</div>
		</div>
		<div class="pt-4 border-t space-y-2">
			<div class="flex justify-between text-sm">
				<span class="text-muted-foreground">Tokens used</span>
				<span>1,234 / 10,000</span>
			</div>
			<div class="flex justify-between text-sm">
				<span class="text-muted-foreground">Cost</span>
				<span>$0.42</span>
			</div>
		</div>
	</div>
}

templ AI002Input() {
	<div class="p-4 border-t">
		<div class="border rounded-lg">
			@textarea.Textarea(textarea.Props{
				Placeholder: "Ask anything... (@ to mention, / for commands)",
				Class:       "min-h-[80px] border-0 resize-none focus:ring-0",
				Rows:        3,
			})
			<div class="flex items-center justify-between p-3 border-t bg-muted/50">
				<div class="flex items-center gap-2">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.Paperclip(icon.Props{
							Size: 16,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.Code(icon.Props{
							Size: 16,
						})
					}
				</div>
				<div class="flex items-center gap-2">
					<span class="text-xs text-muted-foreground">⌘ Enter to send</span>
					@button.Button(button.Props{
						Size: button.SizeSm,
					}) {
						Send
						@icon.Send(icon.Props{
							Size:  14,
							Class: "ml-1",
						})
					}
				</div>
			</div>
		</div>
	</div>
}
```

### ai_003.templ

**Path:** `ai/ai_003.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ AI003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@sheet.Sheet(sheet.Props{
			Side: sheet.SideLeft,
		}) {
			@card.Card(card.Props{Class: "w-full max-w-6xl h-[500px] md:h-[600px] lg:h-[700px] overflow-hidden flex relative"}) {
				<!-- Mobile menu trigger -->
				@sheet.Trigger(sheet.TriggerProps{
					Class: "md:hidden absolute top-4 left-4 z-10",
				}) {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.Menu(icon.Props{Size: 20})
					}
				}
				<!-- Desktop sidebar -->
				<div class="hidden md:block">
					@AI003Sidebar()
				</div>
				@AI003EmptyState()
			}
			<!-- Mobile sidebar drawer -->
			@sheet.Content(sheet.ContentProps{
				HideCloseButton: true,
			}) {
				@AI003SidebarDrawerContent()
			}
		}
	</section>
}

templ AI003Sidebar() {
	<div class="w-80 border-r flex flex-col bg-muted/10 h-full">
		@AI003SidebarHeader()
		@AI003SidebarContent()
	</div>
}

templ AI003SidebarDrawerContent() {
	<div class="flex flex-col h-full">
		@AI003SidebarHeader()
		@AI003SidebarContent()
	</div>
}

templ AI003SidebarHeader() {
	<div class="p-4 border-b space-y-3">
		<div class="flex items-center justify-between">
			<h2 class="text-lg font-semibold">Conversations</h2>
			@button.Button(button.Props{
				Size: button.SizeIcon,
			}) {
				@icon.MapPinPen(icon.Props{
					Size: 18,
				})
			}
		</div>
		<div class="relative">
			<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
				@icon.Search(icon.Props{
					Size:  16,
					Class: "text-muted-foreground",
				})
			</div>
			@input.Input(input.Props{
				Placeholder: "Search conversations...",
				Class:       "pl-9 h-9",
			})
		</div>
		<div class="flex gap-2">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeSm,
				Class:   "flex-1",
			}) {
				@icon.FolderOpen(icon.Props{
					Size:  14,
					Class: "mr-1",
				})
				All Chats
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeSm,
				Class:   "flex-1",
			}) {
				@icon.Star(icon.Props{
					Size:  14,
					Class: "mr-1",
				})
				Starred
			}
		</div>
	</div>
}

templ AI003SidebarContent() {
	<div class="flex-1 overflow-y-auto">
		<div class="p-2 space-y-4">
			@AI003ConversationGroup("Today", []AI003_Conversation{
				{Title: "Go Performance Optimization", Time: "2m ago", Pinned: true, Model: "GPT-4"},
				{Title: "Python Data Analysis Help", Time: "1h ago", Pinned: false, Model: "Claude 3"},
				{Title: "SQL Query Debugging", Time: "3h ago", Pinned: false, Model: "GPT-3.5"},
			})
			@AI003ConversationGroup("Yesterday", []AI003_Conversation{
				{Title: "Docker Compose Setup", Time: "1d ago", Pinned: false, Model: "GPT-4"},
				{Title: "API Design Best Practices", Time: "1d ago", Pinned: true, Model: "Claude 3"},
				{Title: "Go Concurrency Patterns", Time: "1d ago", Pinned: false, Model: "GPT-3.5"},
			})
			@AI003ConversationGroup("Previous 7 Days", []AI003_Conversation{
				{Title: "Machine Learning Basics", Time: "3d ago", Pinned: false, Model: "GPT-4"},
				{Title: "CSS Grid Layout Tutorial", Time: "4d ago", Pinned: false, Model: "GPT-3.5"},
				{Title: "Git Advanced Commands", Time: "5d ago", Pinned: false, Model: "Claude 3"},
				{Title: "Go Generics", Time: "6d ago", Pinned: false, Model: "GPT-4"},
			})
		</div>
	</div>
}

type AI003_Conversation struct {
	Title  string
	Time   string
	Pinned bool
	Model  string
}

templ AI003ConversationGroup(title string, conversations []AI003_Conversation) {
	<div>
		<h3 class="text-xs font-medium text-muted-foreground px-2 mb-2">{ title }</h3>
		<div class="space-y-1">
			for _, conv := range conversations {
				@AI003ConversationItem(conv)
			}
		</div>
	</div>
}

templ AI003ConversationItem(conv AI003_Conversation) {
	<div class="group relative">
		<button class="w-full text-left px-3 py-2 rounded-lg hover:bg-background transition-colors">
			<div class="flex items-start justify-between gap-2">
				<div class="flex-1 min-w-0">
					<div class="flex items-center gap-2">
						if conv.Pinned {
							@icon.Pin(icon.Props{
								Size:  12,
								Class: "text-muted-foreground",
							})
						}
						<p class="text-sm font-medium truncate">{ conv.Title }</p>
					</div>
					<div class="flex items-center gap-2 mt-1">
						<span class="text-xs text-muted-foreground">{ conv.Time }</span>
						<span class="text-xs text-muted-foreground">•</span>
						<span class="text-xs text-muted-foreground">{ conv.Model }</span>
					</div>
				</div>
			</div>
		</button>
		<div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity">
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-7 w-7",
					}) {
						@icon.MessageCircleMore(icon.Props{
							Size: 14,
						})
					}
				}
				@dropdown.Content(dropdown.ContentProps{
					Class: "w-40",
				}) {
					@dropdown.Item() {
						@icon.Pin(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Pin/Unpin
					}
					@dropdown.Item() {
						@icon.Star(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Star
					}
					@dropdown.Item() {
						@icon.Pencil(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Rename
					}
					@dropdown.Item() {
						@icon.Share(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Share
					}
					@dropdown.Separator()
					@dropdown.Item() {
						@icon.Archive(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Archive
					}
					@dropdown.Item() {
						@icon.Trash2(icon.Props{
							Size:  14,
							Class: "mr-2",
						})
						Delete
					}
				}
			}
		</div>
	</div>
}

templ AI003EmptyState() {
	<div class="flex-1 flex items-center justify-center p-8 pt-16 md:pt-8">
		<div class="text-center max-w-md">
			<div class="w-16 h-16 bg-muted rounded-full flex items-center justify-center mx-auto mb-4">
				@icon.MessageSquare(icon.Props{
					Size:  32,
					Class: "text-muted-foreground",
				})
			</div>
			<h3 class="text-lg font-semibold mb-2">Start a New Conversation</h3>
			<p class="text-sm text-muted-foreground mb-6">
				Select a conversation from the sidebar or create a new one to begin chatting with AI
			</p>
			<div class="flex flex-col gap-3">
				@button.Button(button.Props{
					Class: "w-full",
				}) {
					@icon.Plus(icon.Props{
						Size:  16,
						Class: "mr-2",
					})
					New Conversation
				}
				<div class="flex gap-2">
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Size:    button.SizeSm,
						Class:   "flex-1",
					}) {
						@icon.Upload(icon.Props{
							Size:  14,
							Class: "mr-1",
						})
						Import
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Size:    button.SizeSm,
						Class:   "flex-1",
					}) {
						@icon.Download(icon.Props{
							Size:  14,
							Class: "mr-1",
						})
						Export
					}
				</div>
			</div>
			<div class="mt-8 p-4 bg-muted/50 rounded-lg">
				<h4 class="text-sm font-medium mb-2">Quick Templates</h4>
				<div class="grid grid-cols-2 gap-2">
					@AI003TemplateButton("Code Review", "code")
					@AI003TemplateButton("Writing Help", "writing")
					@AI003TemplateButton("Data Analysis", "data")
					@AI003TemplateButton("Learning", "learning")
				</div>
			</div>
		</div>
	</div>
}

templ AI003TemplateButton(label, category string) {
	<button class="flex items-center gap-2 p-2 text-sm bg-background border rounded-lg hover:bg-muted transition-colors">
		switch category {
			case "code":
				@icon.Code(icon.Props{Size: 14})
			case "writing":
				@icon.FileText(icon.Props{Size: 14})
			case "data":
				@icon.ChartBar(icon.Props{Size: 14})
			default:
				@icon.GraduationCap(icon.Props{Size: 14})
		}
		{ label }
	</button>
}
```

### ai_004.templ

**Path:** `ai/ai_004.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/popover"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@AI004BasicPrompt()
			@AI004AdvancedPrompt()
			@AI004TemplatePrompt()
		</div>
	</section>
}

templ AI004BasicPrompt() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				AI Prompt Input
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="flex items-center gap-2 pb-2">
					<span class="text-sm text-muted-foreground">Mode:</span>
					<div class="flex gap-1">
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Size:    button.SizeSm,
							Class:   "h-7",
						}) {
							Chat
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "h-7",
						}) {
							Complete
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "h-7",
						}) {
							Edit
						}
					</div>
				</div>
				@textarea.Textarea(textarea.Props{
					Placeholder: "Enter your prompt here...\n\nTip: Use @mentions for context, #tags for topics",
					Class:       "min-h-[120px]",
					Rows:        5,
				})
				<div class="flex flex-wrap items-center justify-between">
					<div class="flex items-center gap-2">
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
						}) {
							@icon.Paperclip(icon.Props{
								Size: 18,
							})
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
						}) {
							@icon.Image(icon.Props{
								Size: 18,
							})
						}
						<div class="h-4 w-px bg-border mx-1"></div>
						@popover.Trigger(popover.TriggerProps{
							For: "chat-001-popover",
						}) {
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeSm,
							}) {
								@icon.Sparkles(icon.Props{
									Size:  14,
									Class: "mr-1",
								})
								Enhance
							}
						}
						@popover.Content(popover.ContentProps{
							ID:    "chat-001-popover",
							Class: "w-64 p-3",
						}) {
							<div class="space-y-2">
								<button class="w-full text-left p-2 hover:bg-muted rounded text-sm">Make more detailed</button>
								<button class="w-full text-left p-2 hover:bg-muted rounded text-sm">Add examples</button>
								<button class="w-full text-left p-2 hover:bg-muted rounded text-sm">Improve clarity</button>
								<button class="w-full text-left p-2 hover:bg-muted rounded text-sm">Fix grammar</button>
							</div>
						}
					</div>
					<div class="flex items-center gap-3">
						<span class="text-sm text-muted-foreground">0/4000</span>
						@button.Button(button.Props{
							Class: "flex-1 sm:flex-none",
						}) {
							Generate
							@icon.Zap(icon.Props{
								Size:  16,
								Class: "ml-1",
							})
						}
					</div>
				</div>
			</div>
		}
	}
}

templ AI004AdvancedPrompt() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Advanced Parameters
			}
		}
		@card.Content() {
			<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
				<div class="space-y-4">
					@textarea.Textarea(textarea.Props{
						Placeholder: "System prompt (optional):\nYou are an expert programmer...",
						Class:       "min-h-[100px] text-sm",
						Rows:        4,
					})
					<div class="space-y-3">
						@AI004Parameter("Temperature", "0.7", "Controls randomness")
						@AI004Parameter("Max Tokens", "2048", "Maximum response length")
						@AI004Parameter("Top P", "1.0", "Nucleus sampling")
						@AI004Parameter("Frequency Penalty", "0.0", "Reduce repetition")
					</div>
				</div>
				<div class="space-y-4">
					@textarea.Textarea(textarea.Props{
						Placeholder: "User prompt:\nWrite a function that...",
						Class:       "min-h-[100px] text-sm",
						Rows:        4,
					})
					<div class="space-y-3">
						<div class="flex items-center justify-between">
							<span class="text-sm">Stream Response</span>
							@switchcomp.Switch(switchcomp.Props{
								Checked: true,
							})
						</div>
						<div class="flex items-center justify-between">
							<span class="text-sm">Include System Message</span>
							@switchcomp.Switch()
						</div>
						<div class="flex items-center justify-between">
							<span class="text-sm">JSON Mode</span>
							@switchcomp.Switch()
						</div>
					</div>
					<div class="pt-2">
						@button.Button(button.Props{
							Class: "w-full",
						}) {
							Run with Parameters
						}
					</div>
				</div>
			</div>
		}
	}
}

templ AI004Parameter(label, value, description string) {
	@form.Item() {
		@form.Label() {
			{ label }
		}
		@input.Input(input.Props{
			Value: value,
			Class: "w-20",
		})
		@form.Description(form.DescriptionProps{Class: "text-xs"}) {
			{ description }
		}
	}
}

templ AI004TemplatePrompt() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Prompt Templates
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="flex gap-2 flex-wrap">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Code Review
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Explain Code
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Write Tests
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Optimize Performance
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Debug Error
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer hover:bg-primary hover:text-primary-foreground",
					}) {
						Refactor
					}
					@dropdown.Dropdown() {
						@dropdown.Trigger() {
							@badge.Badge(badge.Props{
								Variant: badge.VariantOutline,
								Class:   "cursor-pointer",
							}) {
								More
								@icon.ChevronDown(icon.Props{
									Size:  12,
									Class: "ml-1",
								})
							}
						}
						@dropdown.Content(dropdown.ContentProps{
							Class: "w-48",
						}) {
							@dropdown.Item() {
								Documentation
							}
							@dropdown.Item() {
								API Design
							}
							@dropdown.Item() {
								Security Review
							}
							@dropdown.Item() {
								Architecture
							}
						}
					}
				</div>
				<div class="border rounded-lg bg-muted/50 p-4">
					<div class="flex items-start justify-between mb-2">
						<h4 class="text-sm font-medium">Code Review Template</h4>
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-6 w-6",
						}) {
							@icon.X(icon.Props{
								Size: 12,
							})
						}
					</div>
					<div class="space-y-3">
						<div class="text-sm space-y-2">
							<p class="text-muted-foreground">Review the following code for:</p>
							<ul class="list-disc list-inside text-muted-foreground space-y-1 ml-2">
								<li>Potential bugs or errors</li>
								<li>Performance improvements</li>
								<li>Code style and best practices</li>
								<li>Security vulnerabilities</li>
							</ul>
						</div>
						@textarea.Textarea(textarea.Props{
							Placeholder: "Paste your code here...",
							Class:       "min-h-[100px] font-mono text-sm",
							Rows:        4,
						})
						<div class="flex flex-col sm:flex-row items-stretch sm:items-center gap-2">
							@button.Button(button.Props{
								Variant: button.VariantOutline,
								Size:    button.SizeSm,
								Class:   "w-full sm:w-auto",
							}) {
								@icon.Save(icon.Props{
									Size:  14,
									Class: "mr-1",
								})
								Save Template
							}
							@button.Button(button.Props{
								Size:  button.SizeSm,
								Class: "w-full sm:w-auto",
							}) {
								Use This Prompt
							}
						</div>
					</div>
				</div>
			</div>
		}
	}
}
```

### ai_005.templ

**Path:** `ai/ai_005.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ AI005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@AI005UserQuery()
			@AI005AIResponseWithCitations()
		</div>
	</section>
}

templ AI005UserQuery() {
	<div class="flex gap-3 justify-end">
		<div class="max-w-[90%] sm:max-w-[80%] md:max-w-[70%] space-y-2">
			<div class="flex items-center gap-2 justify-end">
				<p class="font-medium text-sm">You</p>
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "User",
					})
				}
			</div>
			<div class="bg-primary text-primary-foreground rounded-lg p-3 sm:p-4">
				<p class="text-sm">What are the latest developments in quantum computing?</p>
			</div>
		</div>
	</div>
}

templ AI005AIResponseWithCitations() {
	<div class="flex gap-3">
		<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center flex-shrink-0">
			@icon.Bot(icon.Props{
				Size:  20,
				Class: "text-primary-foreground",
			})
		</div>
		<div class="flex-1 max-w-[90%] sm:max-w-[85%] space-y-3">
			<div class="flex items-center gap-2">
				<p class="font-medium text-sm">AI Assistant</p>
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "text-xs",
				}) {
					cited response
				}
			</div>
			<div class="bg-muted rounded-lg p-3 sm:p-4">
				<div class="prose prose-sm max-w-none dark:prose-invert">
					<p class="mb-3">
						Quantum computing has seen significant breakthroughs in 2024. IBM announced their 1,121-qubit 
						Condor processor<sup class="text-primary text-xs ml-0.5">[1]</sup>, marking a major milestone 
						in scalability. Google's latest error correction techniques have achieved a 99.9% fidelity 
						rate<sup class="text-primary text-xs ml-0.5">[2]</sup>, bringing us closer to fault-tolerant 
						quantum computers.
					</p>
					<p class="mb-3">
						The most exciting development is in quantum advantage applications. Recent demonstrations show 
						quantum computers solving optimization problems 100x faster than classical computers in specific 
						domains<sup class="text-primary text-xs ml-0.5">[3]</sup>. This has immediate applications in:
					</p>
					<ul class="list-disc pl-6 mb-3 space-y-1">
						<li>Drug discovery and molecular simulation</li>
						<li>Financial portfolio optimization</li>
						<li>Cryptography and security</li>
						<li>Machine learning acceleration</li>
					</ul>
					<p>
						Investment in quantum computing reached $2.4 billion in 2024<sup class="text-primary text-xs ml-0.5">[4]</sup>, 
						with major tech companies and governments racing to achieve quantum supremacy in practical applications.
					</p>
				</div>
				<div class="mt-4 pt-4 border-t space-y-2">
					<p class="text-xs font-medium text-muted-foreground">Sources:</p>
					<div class="text-xs space-y-1">
						<div class="flex items-start gap-2">
							<span class="text-primary font-medium">[1]</span>
							<span class="text-muted-foreground">IBM Research - "Condor: Breaking the 1000-qubit barrier" (2024)</span>
						</div>
						<div class="flex items-start gap-2">
							<span class="text-primary font-medium">[2]</span>
							<span class="text-muted-foreground">Nature - "Quantum error correction at 99.9% fidelity" (2024)</span>
						</div>
						<div class="flex items-start gap-2">
							<span class="text-primary font-medium">[3]</span>
							<span class="text-muted-foreground">Science - "Quantum advantage in real-world optimization" (2024)</span>
						</div>
						<div class="flex items-start gap-2">
							<span class="text-primary font-medium">[4]</span>
							<span class="text-muted-foreground">McKinsey - "Quantum Technology Monitor 2024"</span>
						</div>
					</div>
				</div>
			</div>
			<div class="flex items-center gap-2 pt-3">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Copy(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.ThumbsUp(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.ThumbsDown(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Share(icon.Props{
						Size: 14,
					})
				}
			</div>
		</div>
	</div>
}
```

### ai_006.templ

**Path:** `ai/ai_006.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/popover"
	"github.com/templui/templui-pro/internal/utils"
)

templ AI006() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@AI006UserQuery()
			@AI006AIResponseWithCitations()
			@AI006SourcesPanel()
		</div>
	</section>
}

templ AI006UserQuery() {
	<div class="flex gap-3 justify-end">
		<div class="max-w-[90%] sm:max-w-[80%] md:max-w-[70%] space-y-2">
			<div class="flex items-center gap-2 justify-end">
				<p class="font-medium text-sm">You</p>
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "User",
					})
				}
			</div>
			<div class="bg-primary text-primary-foreground rounded-lg p-3 sm:p-4">
				<p class="text-sm">How do I implement secure authentication?</p>
			</div>
		</div>
	</div>
}

templ AI006AIResponseWithCitations() {
	<div class="flex gap-3">
		<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center flex-shrink-0">
			@icon.Bot(icon.Props{
				Size:  20,
				Class: "text-primary-foreground",
			})
		</div>
		<div class="flex-1 max-w-[90%] sm:max-w-[85%] space-y-3">
			<div class="flex items-center gap-2">
				<p class="font-medium text-sm">AI Assistant</p>
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "text-xs",
				}) {
					with sources
				}
			</div>
			<div class="bg-muted rounded-lg p-3 sm:p-4">
				<div class="prose prose-sm max-w-none dark:prose-invert">
					<p class="mb-3">Here are the key authentication best practices:</p>
					<div class="space-y-3">
						<div>
							<strong>JWT Tokens</strong> @AI006Citation("1", "OWASP")
							<ul class="mt-1 text-sm space-y-1">
								<li>• 15-30 min expiry</li>
								<li>• HttpOnly cookies</li>
								<li>• Strong secrets</li>
							</ul>
						</div>
						<div>
							<strong>OAuth 2.0</strong> @AI006Citation("3", "RFC 6749")
							<ul class="mt-1 text-sm space-y-1">
								<li>• Use PKCE flow</li>
								<li>• Validate redirects</li>
							</ul>
						</div>
						<div>
							<strong>Security</strong> @AI006Citation("5", "NIST")
							<ul class="mt-1 text-sm space-y-1">
								<li>• Rate limiting</li>
								<li>• HTTPS only</li>
								<li>• Enable MFA</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="flex items-center gap-2 pt-3">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Copy(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.ThumbsUp(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Share(icon.Props{
						Size: 14,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeSm,
					Class:   "ml-auto",
				}) {
					@icon.FileText(icon.Props{
						Size:  14,
						Class: "mr-1",
					})
					View 6 Sources
				}
			</div>
		</div>
	</div>
}

templ AI006Citation(number, source string) {
	@popover.Trigger(popover.TriggerProps{
		For: "chat-13-popover",
	}) {
		<sup class="inline-flex items-center">
			<button class="text-primary hover:underline text-xs font-medium ml-0.5">
				[{ number }]
			</button>
		</sup>
	}
	@popover.Content(popover.ContentProps{
		ID:    "chat-13-popover",
		Class: "w-80 p-0",
	}) {
		<div class="p-4 space-y-3">
			<div class="flex items-start justify-between">
				<h4 class="font-medium text-sm">{ source }</h4>
				<button class="text-muted-foreground hover:text-foreground">
					@icon.ExternalLink(icon.Props{
						Size: 14,
					})
				</button>
			</div>
			<p class="text-sm text-muted-foreground">
				Comprehensive security guidelines for JSON Web Token implementation in production applications.
			</p>
			<div class="flex items-center gap-4 text-xs text-muted-foreground">
				<span>Last updated: 2024</span>
				<span>High reliability</span>
			</div>
		</div>
	}
}

templ AI006SourcesPanel() {
	@card.Card() {
		@card.Header() {
			<div class="flex items-center justify-between">
				@card.Title() {
					Sources & References
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeSm,
				}) {
					@icon.Download(icon.Props{
						Size:  14,
						Class: "mr-1",
					})
					Export
				}
			</div>
		}
		@card.Content(card.ContentProps{Class: "pt-0"}) {
			<div class="grid gap-3">
				@AI006SourceCard(
					"1",
					"OWASP JWT Security Cheat Sheet",
					"owasp.org",
					"Comprehensive security guidelines for JSON Web Token implementation in production applications.",
					"Security Guide",
					true,
				)
				@AI006SourceCard(
					"2",
					"Auth0 Best Practices Guide",
					"auth0.com",
					"Industry best practices for authentication and authorization in modern applications.",
					"Documentation",
					true,
				)
				@AI006SourceCard(
					"3",
					"RFC 6749 - OAuth 2.0 Framework",
					"ietf.org",
					"The OAuth 2.0 authorization framework specification.",
					"Standard",
					false,
				)
				@AI006SourceCard(
					"4",
					"OAuth Security Best Current Practice",
					"datatracker.ietf.org",
					"Security considerations and best practices for OAuth 2.0 implementations.",
					"RFC Draft",
					false,
				)
				@AI006SourceCard(
					"5",
					"NIST Digital Identity Guidelines",
					"nist.gov",
					"Federal guidelines for digital identity and authentication.",
					"Government Standard",
					false,
				)
				@AI006SourceCard(
					"6",
					"Microsoft Identity Platform Best Practices",
					"microsoft.com",
					"Security best practices for modern authentication scenarios.",
					"Technical Guide",
					false,
				)
			</div>
		}
	}
}

templ AI006SourceCard(number, title, domain, description, category string, isPrimary bool) {
	@card.Card(card.Props{
		Class: utils.If(isPrimary, "border-primary"),
	}) {
		@card.Content(card.ContentProps{
			Class: "p-4",
		}) {
			<div class="flex items-start gap-3">
				<div
					class={
						"w-8 h-8 rounded flex items-center justify-center text-sm font-medium",
						templ.KV("bg-primary text-primary-foreground", isPrimary),
						templ.KV("bg-muted", !isPrimary),
					}
				>
					{ number }
				</div>
				<div class="flex-1 space-y-2">
					<div class="flex items-start justify-between">
						<div>
							<h4 class="font-medium text-sm">{ title }</h4>
							<p class="text-xs text-muted-foreground flex items-center gap-1 mt-0.5">
								@icon.Globe(icon.Props{
									Size: 10,
								})
								{ domain }
							</p>
						</div>
						<div class="flex items-center gap-1">
							@badge.Badge(badge.Props{
								Variant: badge.VariantSecondary,
								Class:   "text-xs",
							}) {
								{ category }
							}
							<button class="p-1 hover:bg-muted rounded">
								@icon.ExternalLink(icon.Props{
									Size:  14,
									Class: "text-muted-foreground",
								})
							</button>
						</div>
					</div>
					<p class="text-sm text-muted-foreground">{ description }</p>
					if isPrimary {
						<div class="flex items-center gap-2 text-xs text-primary">
							@icon.Zap(icon.Props{
								Size: 12,
							})
							<span>Primary source for this response</span>
						</div>
					}
				</div>
			</div>
		}
	}
}
```

### ai_007.templ

**Path:** `ai/ai_007.templ`

```templ
package ai

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"github.com/templui/templui-pro/internal/ui/components/skeleton"
)

templ AI007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@AI007StreamingExample()
			@AI007StreamingWithProgress()
		</div>
	</section>
}

templ AI007StreamingExample() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Streaming AI Response
			}
		}
		@card.Content(card.ContentProps{Class: "space-y-6"}) {
			<div class="flex gap-3 justify-end">
				<div class="max-w-[90%] sm:max-w-[80%] md:max-w-[70%]">
					<div class="flex items-center gap-2 justify-end mb-2">
						<p class="font-medium text-sm">You</p>
						@avatar.Avatar(avatar.Props{
							Class: "h-8 w-8",
						}) {
							@avatar.Image(avatar.ImageProps{
								Src: "/assets/img/avatar-gh-1.png",
								Alt: "User",
							})
						}
					</div>
					<div class="bg-primary text-primary-foreground rounded-lg p-3 sm:p-4">
						<p class="text-sm">Explain quantum computing</p>
					</div>
				</div>
			</div>
			<div class="flex gap-3">
				<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center flex-shrink-0">
					@icon.Bot(icon.Props{
						Size:  20,
						Class: "text-primary-foreground",
					})
				</div>
				<div class="flex-1 max-w-[90%] sm:max-w-[85%] space-y-3">
					<p class="font-medium text-sm">AI Assistant</p>
					<div class="bg-muted rounded-lg p-3 sm:p-4">
						<div class="space-y-3">
							<p class="text-sm">Quantum computing uses quantum mechanics principles...</p>
							@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-full bg-muted-foreground/20"})
							@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-5/6 bg-muted-foreground/20"})
							@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-4/5 bg-muted-foreground/20"})
							<div class="flex items-center gap-1">
								@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-24 bg-muted-foreground/20"})
								<span class="animate-pulse text-muted-foreground">|</span>
							</div>
						</div>
						<div class="flex flex-wrap gap-3 items-center justify-between mt-4 pt-4 border-t">
							<div class="flex flex-wrap items-center gap-3 text-sm text-muted-foreground">
								<div class="flex items-center gap-1">
									<div class="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
									<span>Streaming</span>
								</div>
								<span>•</span>
								<span>248 tokens</span>
								<span>•</span>
								<span>3.2 tokens/sec</span>
							</div>
							@button.Button(button.Props{
								Variant: button.VariantDestructive,
								Size:    button.SizeSm,
							}) {
								@icon.Square(icon.Props{
									Size:  14,
									Class: "mr-1",
								})
								Stop
							}
						</div>
					</div>
				</div>
			</div>
		}
	}
}

templ AI007StreamingWithProgress() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Streaming with Progress
			}
		}
		@card.Content() {
			<div class="flex gap-3">
				<div class="w-8 h-8 bg-gradient-to-br from-violet-500 to-purple-600 rounded-lg flex items-center justify-center flex-shrink-0">
					@icon.Sparkles(icon.Props{
						Size:  20,
						Class: "text-white",
					})
				</div>
				<div class="flex-1 space-y-3">
					<div class="flex items-center justify-between">
						<p class="font-medium text-sm">Advanced AI Model</p>
						<span class="text-xs text-muted-foreground">GPT-4 Turbo</span>
					</div>
					<div class="space-y-3">
						<div class="bg-muted rounded-lg p-3 sm:p-4">
							<h4 class="font-medium mb-2">Processing...</h4>
							<div class="space-y-2">
								@AI007StreamingStep("Understanding context", true)
								@AI007StreamingStep("Gathering information", true)
								@AI007StreamingStep("Generating response", false)
							</div>
						</div>
						<div class="bg-muted rounded-lg p-3 sm:p-4">
							<div class="space-y-2">
								@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-3/4 bg-muted-foreground/20"})
								@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-full bg-muted-foreground/20"})
								@skeleton.Skeleton(skeleton.Props{Class: "h-4 w-5/6 bg-muted-foreground/20"})
							</div>
						</div>
						<div class="flex items-center gap-4">
							@progress.Progress(progress.Props{
								Value: 45,
								Class: "h-2",
							})
							<span class="text-sm text-muted-foreground whitespace-nowrap">45%</span>
							@button.Button(button.Props{
								Variant: button.VariantOutline,
								Size:    button.SizeSm,
							}) {
								@icon.Pause(icon.Props{
									Size:  14,
									Class: "mr-1",
								})
								Pause
							}
						</div>
					</div>
				</div>
			</div>
		}
	}
}

templ AI007StreamingStep(step string, completed bool) {
	<div class="flex items-center gap-2 text-sm">
		switch completed {
			case true:
				<div class="w-5 h-5 rounded-full bg-green-500 flex items-center justify-center">
					@icon.Check(icon.Props{
						Size:  12,
						Class: "text-white",
					})
				</div>
				<span class="text-muted-foreground line-through">{ step }</span>
			default:
				<div class="w-5 h-5 rounded-full border-2 border-primary flex items-center justify-center">
					<div class="w-2 h-2 bg-primary rounded-full animate-pulse"></div>
				</div>
				<span>{ step }</span>
		}
	</div>
}

templ AI007StreamingState(title, content, state string, tokens int, showStop bool) {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4 space-y-3"}) {
			<div class="flex items-center justify-between">
				<h4 class="font-medium">{ title }</h4>
				switch state {
					case "connecting":
						<div class="flex items-center gap-2 text-sm text-muted-foreground">
							<div class="flex space-x-1">
								<div class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 0ms"></div>
								<div class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 150ms"></div>
								<div class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 300ms"></div>
							</div>
							<span>Connecting</span>
						</div>
					case "streaming":
						<div class="flex items-center gap-2">
							<div class="flex items-center gap-1 text-sm">
								<div class="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
								<span class="text-muted-foreground">Live</span>
							</div>
						</div>
					case "completed":
						@badge.Badge(badge.Props{
							Variant: badge.VariantDefault,
							Class:   "bg-green-500 text-white",
						}) {
							Complete
						}
					case "interrupted":
						@badge.Badge(badge.Props{
							Variant: badge.VariantDestructive,
						}) {
							Stopped
						}
				}
			</div>
			<div class="bg-muted rounded p-3 text-sm">
				{ content }
				if state == "streaming" {
					<span class="animate-pulse">|</span>
				}
			</div>
			<div class="flex items-center justify-between">
				<div class="flex items-center gap-4 text-xs text-muted-foreground">
					if tokens > 0 {
						<span>{ fmt.Sprintf("%d tokens", tokens) }</span>
					}
					switch state {
						case "streaming":
							<span>5.4 tokens/sec</span>
							<span>~12s remaining</span>
						case "completed":
							<span>Total time: 18.3s</span>
							<span>Avg: 4.8 tokens/sec</span>
					}
				</div>
				<div class="flex items-center gap-2">
					switch showStop {
						case true:
							@button.Button(button.Props{
								Variant: button.VariantDestructive,
								Size:    button.SizeSm,
							}) {
								@icon.Square(icon.Props{
									Size:  12,
									Class: "mr-1",
								})
								Stop
							}
						default:
							switch state {
								case "completed":
									@button.Button(button.Props{
										Variant: button.VariantGhost,
										Size:    button.SizeSm,
									}) {
										@icon.RefreshCw(icon.Props{
											Size:  12,
											Class: "mr-1",
										})
										Regenerate
									}
								case "interrupted":
									@button.Button(button.Props{
										Variant: button.VariantOutline,
										Size:    button.SizeSm,
									}) {
										@icon.Play(icon.Props{
											Size:  12,
											Class: "mr-1",
										})
										Continue
									}
							}
					}
				</div>
			</div>
		}
	}
}
```

### ai_008.templ

**Path:** `ai/ai_008.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI008() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			@AI008SimplePrompt()
		</div>
	</section>
}

templ AI008SimplePrompt() {
	@card.Card() {
		@card.Header(card.HeaderProps{Class: "pb-4"}) {
			@card.Title(card.TitleProps{Class: "text-base"}) {
				Simple AI Prompt Input
			}
		}
		@card.Content(card.ContentProps{Class: "pt-0"}) {
			@textarea.Textarea(textarea.Props{
				Placeholder: "Ask me anything...",
				Class:       "min-h-[100px] border-0 resize-none focus:ring-0 p-4",
				Rows:        4,
			})
			<div class="flex items-center justify-between p-3">
				<span class="text-xs text-muted-foreground">AI Assistant is ready to help</span>
				@button.Button(button.Props{
					Size: button.SizeSm,
				}) {
					Send
					@icon.Send(icon.Props{
						Size:  14,
						Class: "ml-1",
					})
				}
			</div>
		}
	}
}
```

### ai_009.templ

**Path:** `ai/ai_009.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI009() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			@AI009WithMetadata()
		</div>
	</section>
}

templ AI009WithMetadata() {
	@card.Card() {
		@card.Header(card.HeaderProps{Class: "pb-4"}) {
			@card.Title(card.TitleProps{Class: "text-base"}) {
				AI Prompt with Metadata
			}
		}
		@card.Content() {
			<div class="space-y-3">
				<div class="flex items-center justify-between">
					<div class="flex items-center gap-2">
						<div class="w-8 h-8 bg-primary rounded-lg flex items-center justify-center">
							@icon.Bot(icon.Props{
								Size:  20,
								Class: "text-primary-foreground",
							})
						</div>
						<div>
							<p class="text-sm font-medium">AI Assistant</p>
							<p class="text-xs text-muted-foreground">Model: GPT-4</p>
						</div>
					</div>
					<div class="flex items-center gap-2">
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
							Class:   "text-xs",
						}) {
							2,048 tokens left
						}
					</div>
				</div>
				@textarea.Textarea(textarea.Props{
					Placeholder: "Type your prompt here...",
					Class:       "min-h-[100px] border-0 resize-none focus:ring-0 p-4",
					Rows:        4,
				})
				<div class="flex flex-wrap gap-3 items-center justify-between p-3">
					<div class="flex items-center gap-3 text-xs text-muted-foreground">
						<button class="hover:text-foreground transition-colors flex items-center gap-1">
							@icon.Paperclip(icon.Props{
								Size: 14,
							})
							Attach
						</button>
						<button class="hover:text-foreground transition-colors flex items-center gap-1">
							@icon.History(icon.Props{
								Size: 14,
							})
							History
						</button>
						<button class="hover:text-foreground transition-colors flex items-center gap-1">
							@icon.Settings(icon.Props{
								Size: 14,
							})
							Settings
						</button>
					</div>
					@button.Button(button.Props{
						Size: button.SizeSm,
					}) {
						Generate
						@icon.Sparkles(icon.Props{
							Size:  14,
							Class: "ml-1",
						})
					}
				</div>
			</div>
		}
	}
}
```

### ai_010.templ

**Path:** `ai/ai_010.templ`

```templ
package ai

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/slider"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ AI010() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			@AI010AdvancedPrompt()
		</div>
	</section>
}

templ AI010AdvancedPrompt() {
	@card.Card() {
		@card.Header(card.HeaderProps{Class: "pb-4"}) {
			@card.Title(card.TitleProps{Class: "text-base"}) {
				Advanced AI Prompt
			}
		}
		@card.Content(card.ContentProps{Class: "pt-0"}) {
			<div class="space-y-4">
				<!-- File Attachments -->
				<div class="border-2 border-dashed rounded-lg p-4 text-center">
					<div class="flex flex-col items-center gap-2">
						@icon.Upload(icon.Props{
							Size:  24,
							Class: "text-muted-foreground",
						})
						<p class="text-sm text-muted-foreground">
							Drop files here or click to upload
						</p>
						<p class="text-xs text-muted-foreground">
							PDF, TXT, MD, CSV (max 10MB)
						</p>
					</div>
				</div>
				<!-- Advanced Settings -->
				<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
					<div class="space-y-2">
						@label.Label(label.Props{
							For:   "temperature",
							Class: "text-xs",
						}) {
							Temperature
						}
						<div class="flex items-center gap-2">
							@slider.Slider(slider.Props{
								Class: "flex-1",
							}) {
								@slider.Input(slider.InputProps{
									ID:    "temperature",
									Min:   0,
									Max:   2,
									Step:  1,
									Value: 1,
								})
							}
							<span class="text-xs text-muted-foreground w-10">0.7</span>
						</div>
					</div>
					<div class="space-y-2">
						@label.Label(label.Props{
							For:   "max-tokens",
							Class: "text-xs",
						}) {
							Max Tokens
						}
						@input.Input(input.Props{
							ID:          "max-tokens",
							Type:        "number",
							Placeholder: "2048",
							Value:       "2048",
							Class:       "h-8 text-sm",
						})
					</div>
				</div>
				<!-- Prompt Input -->
				<div class="border rounded-lg">
					<div class="p-3 border-b bg-muted/50">
						<div class="flex items-center justify-between">
							<span class="text-xs font-medium">System Message (Optional)</span>
							<button class="text-xs text-muted-foreground hover:text-foreground">
								Clear
							</button>
						</div>
						@textarea.Textarea(textarea.Props{
							Placeholder: "You are a helpful assistant...",
							Class:       "min-h-[60px] mt-2 text-sm bg-background",
							Rows:        2,
						})
					</div>
					@textarea.Textarea(textarea.Props{
						Placeholder: "Enter your prompt here...",
						Class:       "min-h-[120px] rounded-none border-none",
						Rows:        5,
					})
					<div class="flex flex-wrap gap-3 items-center justify-between p-3 border-t">
						<div class="flex items-center gap-3">
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeIcon,
								Class:   "h-8 w-8",
							}) {
								@icon.Save(icon.Props{
									Size: 16,
								})
							}
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeIcon,
								Class:   "h-8 w-8",
							}) {
								@icon.History(icon.Props{
									Size: 16,
								})
							}
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeIcon,
								Class:   "h-8 w-8",
							}) {
								@icon.BookOpen(icon.Props{
									Size: 16,
								})
							}
						</div>
						@button.Button() {
							Generate Response
							@icon.Sparkles(icon.Props{
								Size:  16,
								Class: "ml-2",
							})
						}
					</div>
				</div>
			</div>
		}
	}
}
```

## Announcement

### announcement_001.templ

**Path:** `announcement/announcement_001.templ`

```templ
package announcement

import "github.com/templui/templui-pro/internal/ui/components/icon"

templ Announcement001() {
	<div class="bg-background border-b border-border w-full">
		<div class="container mx-auto px-4 py-2 flex items-center justify-between">
			<div class="flex items-center gap-2 text-sm">
				<span>✨</span>
				<p>New features available! <a href="#" class="underline font-medium text-primary">Check our latest update</a></p>
			</div>
			<button class="text-muted-foreground hover:text-foreground transition-colors" aria-label="Close">
				@icon.X(icon.Props{Size: 16})
			</button>
		</div>
	</div>
}
```

### announcement_002.templ

**Path:** `announcement/announcement_002.templ`

```templ
package announcement

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Announcement002() {
	<div class="bg-secondary w-full">
		<div class="container mx-auto px-4 py-2 flex items-center justify-between">
			<div class="flex items-center gap-2">
				@icon.TriangleAlert(icon.Props{
					Size:  18,
					Class: "text-primary",
				})
				<p class="text-sm text-secondary-foreground">Your account requires verification. <a href="#" class="font-medium underline text-primary">Verify now</a> to continue using all features.</p>
			</div>
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.X(icon.Props{Size: 16})
			}
		</div>
	</div>
}
```

### announcement_003.templ

**Path:** `announcement/announcement_003.templ`

```templ
package announcement

import "github.com/templui/templui-pro/internal/ui/components/icon"
import "github.com/templui/templui-pro/internal/ui/components/button"

templ Announcement003() {
	<div class="bg-muted/10 w-full border-y border-border">
		<div class="container mx-auto px-4 py-2 flex flex-col sm:flex-row items-center justify-center sm:justify-between">
			<div class="flex items-center gap-2">
				@icon.Cookie(icon.Props{Size: 18})
				<p class="text-sm text-muted-foreground">
					This site uses cookies to improve your experience. <a href="#" class="underline text-foreground hover:text-primary transition-colors">Privacy Policy</a>
				</p>
			</div>
			<div class="flex items-center gap-2 ml-0 sm:ml-4 mt-2 sm:mt-0">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "h-8",
				}) {
					Decline
				}
				@button.Button(button.Props{
					Class: "h-8",
				}) {
					Accept All
				}
			</div>
		</div>
	</div>
}
```

### announcement_004.templ

**Path:** `announcement/announcement_004.templ`

```templ
package announcement

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Countdown element for the announcement bar
templ countdownUnit(value, label string) {
	<div class="flex flex-col items-center">
		<span class="text-sm font-semibold">{ value }</span>
		<span class="text-xs text-muted-foreground">{ label }</span>
	</div>
}

templ Announcement004() {
	<div class="w-full bg-background border-b border-border py-3 sm:py-2 relative">
		<div class="container mx-auto px-4">
			<!-- Desktop and Tablet Layout (3-column) -->
			<div class="hidden sm:grid sm:grid-cols-3 lg:grid-cols-4 items-center">
				<!-- Left section with special offer icon -->
				<div class="flex items-center gap-2">
					@avatar.Avatar(avatar.Props{
						Class: "bg-primary/10",
					}) {
						@icon.Star(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
					}
					<div>
						<p class="text-sm font-medium">Premium Access</p>
					</div>
				</div>
				<!-- Center sections -->
				<div class="sm:col-span-1 lg:col-span-2 flex sm:justify-center lg:justify-between items-center">
					<div class="hidden lg:block text-center">
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
						}) {
							Limited time offer: 40% off
						}
					</div>
					<div class="flex justify-center items-center">
						<span class="text-xs mr-2 text-muted-foreground">Ends in:</span>
						<div class="flex items-center gap-1">
							@countdownUnit("2", "Days")
							<span class="text-muted-foreground mx-0.5">:</span>
							@countdownUnit("14", "Hrs")
							<span class="text-muted-foreground mx-0.5">:</span>
							@countdownUnit("36", "Min")
						</div>
					</div>
				</div>
				<!-- Right CTA section -->
				<div class="flex justify-end items-center">
					<div class="sm:block lg:hidden mr-4">
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
							Class:   "whitespace-nowrap",
						}) {
							40% off
						}
					</div>
					<div>
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "text-xs px-3 py-1",
						}) {
							Unlock Access
						}
					</div>
					<button class="text-muted-foreground hover:text-foreground transition-colors ml-3" aria-label="Close">
						@icon.X(icon.Props{Size: 14})
					</button>
				</div>
			</div>
			<!-- Mobile Layout -->
			<div class="sm:hidden">
				<!-- Top Row: Logo + Badge + Close -->
				<div class="flex items-center justify-between mb-2">
					<div class="flex items-center gap-2">
						@avatar.Avatar(avatar.Props{
							Class: "bg-primary/10",
						}) {
							@icon.Star(icon.Props{
								Size:  16,
								Class: "text-primary",
							})
						}
						<div>
							<p class="text-sm font-medium">Premium Access</p>
						</div>
					</div>
					<div class="flex items-center">
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
							Class:   "mr-2",
						}) {
							40% off
						}
						<button class="text-muted-foreground hover:text-foreground transition-colors" aria-label="Close">
							@icon.X(icon.Props{Size: 14})
						</button>
					</div>
				</div>
				<!-- Bottom Row: Countdown + CTA -->
				<div class="flex items-center justify-between">
					<div class="flex items-center">
						<div class="flex items-center gap-1">
							@countdownUnit("2", "D")
							<span class="text-muted-foreground mx-0.5">:</span>
							@countdownUnit("14", "H")
							<span class="text-muted-foreground mx-0.5">:</span>
							@countdownUnit("36", "M")
						</div>
					</div>
					<div>
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "text-xs px-3 py-1",
						}) {
							Unlock Access
						}
					</div>
				</div>
			</div>
		</div>
	</div>
}
```

### announcement_005.templ

**Path:** `announcement/announcement_005.templ`

```templ
package announcement

import "github.com/templui/templui-pro/internal/ui/components/icon"
import "github.com/templui/templui-pro/internal/ui/components/badge"

templ Announcement005() {
	<div class="bg-secondary/90 w-full">
		<div class="container mx-auto px-4 py-3 flex flex-wrap items-center justify-between gap-3">
			<div class="flex items-center gap-2 flex-grow">
				@icon.BadgePercent(icon.Props{Size: 18})
				<p class="text-sm font-medium text-secondary-foreground">Black Friday Sale: Use code <span class="font-bold text-primary">BF2025</span> { `for 50% off all plans!` }</p>
			</div>
			<div class="flex items-center justify-end gap-3 flex-shrink-0">
				<a href="#" class="text-xs underline hover:text-primary text-secondary-foreground transition-colors">View Deals</a>
				@badge.Badge(badge.Props{
					Class: "flex items-center gap-2",
				}) {
					Ends in:
					<div class="font-mono font-bold">23:59:42</div>
				}
			</div>
		</div>
	</div>
}
```

## Auth

### forgot_password_001.templ

**Path:** `auth/forgot_password_001.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ ForgotPassword001() {
	<div class="flex min-h-svh w-full flex-col items-center justify-center bg-muted/15 p-6 md:p-10">
		<div class="mb-8 flex flex-col items-center space-y-4">
			<div class="flex h-12 w-12 items-center justify-center rounded-full bg-primary">
				@icon.Layers(icon.Props{
					Size:  24,
					Class: "text-primary-foreground",
				})
			</div>
			<div class="flex flex-col items-center space-y-1 text-center">
				<h1 class="text-2xl font-bold">Acme Inc</h1>
				<p class="text-sm text-muted-foreground">Modern solutions for modern problems</p>
			</div>
		</div>
		@card.Card(card.Props{
			Class: "w-full max-w-md",
		}) {
			@card.Header() {
				@card.Title() {
					<div class="flex items-center gap-2">
						@icon.KeyRound(icon.Props{
							Size: 16,
						})
						<span>Forgot your password?</span>
					</div>
				}
				@card.Description() {
					Enter your email address and we'll send you a link to reset your password.
				}
			}
			@card.Content() {
				@form.Item() {
					@form.Label(form.LabelProps{
						For: "forgot-password-002-email",
					}) {
						Email
					}
					@input.Input(input.Props{
						ID:          "forgot-password-002-email",
						Type:        "email",
						Placeholder: "name@example.com",
					})
				}
			}
			@card.Footer(card.FooterProps{
				Class: "flex flex-col gap-4",
			}) {
				@button.Button(button.Props{
					Class: "w-full",
					Type:  button.TypeSubmit,
				}) {
					Send Reset Link
				}
				<div class="text-center text-sm">
					<a href="#" class="text-sm text-primary hover:text-primary/80">
						← Back to sign in
					</a>
				</div>
			}
		}
		<div class="mt-8 text-center text-sm text-muted-foreground">
			Need help? <a href="#" class="font-medium text-primary hover:text-primary/80">Contact support</a>
		</div>
	</div>
}
```

### reset_password_001.templ

**Path:** `auth/reset_password_001.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ ResetPassword001() {
	<div class="flex min-h-svh w-full items-center justify-center bg-muted/15 p-6 md:p-10">
		<div class="w-full max-w-md">
			<div class="mb-8 flex items-center justify-center gap-2">
				@icon.LockKeyhole(icon.Props{
					Size: 24,
				})
				<h1 class="text-2xl font-bold">
					Reset Password
				</h1>
			</div>
			@card.Card() {
				@card.Header() {
					@card.Description() {
						Enter your new password below to complete the password reset process.
					}
				}
				@card.Content(card.ContentProps{
					Class: "space-y-4",
				}) {
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "reset-password-001-new",
						}) {
							New password
						}
						@input.Input(input.Props{
							ID:          "reset-password-001-new",
							Type:        "password",
							Placeholder: "••••••••",
						})
						<p class="mt-1 text-xs text-muted-foreground">
							Password must be at least 8 characters and include a number and symbol
						</p>
					}
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "reset-password-001-confirm",
						}) {
							Confirm password
						}
						@input.Input(input.Props{
							ID:          "reset-password-001-confirm",
							Type:        "password",
							Placeholder: "••••••••",
						})
					}
				}
				@card.Footer() {
					@button.Button(button.Props{
						Class: "w-full",
						Type:  button.TypeSubmit,
					}) {
						Reset Password
					}
				}
			}
			<div class="mt-6 text-center text-sm text-muted-foreground">
				Remember your password? <a href="#" class="font-medium text-primary hover:text-primary/80">Sign in</a>
			</div>
		</div>
	</div>
}
```

### sign_in_001.templ

**Path:** `auth/sign_in_001.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ SignIn001() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{
			Class: "w-full max-w-sm",
		}) {
			@card.Header() {
				@card.Title() {
					Sign in to your account
				}
				@card.Description() {
					Enter your email and password
				}
			}
			@card.Content(card.ContentProps{
				Class: "space-y-4",
			}) {
				@form.Item() {
					@form.Label(form.LabelProps{
						For: "sign-in-001-email",
					}) {
						Email
					}
					@input.Input(input.Props{
						ID:          "sign-in-001-email",
						Type:        "email",
						Placeholder: "name@example.com",
					})
				}
				@form.Item() {
					@form.Label(form.LabelProps{
						For: "sign-in-001-password",
					}) {
						Password
					}
					@input.Input(input.Props{
						ID:          "sign-in-001-password",
						Type:        "password",
						Placeholder: "••••••••",
					})
				}
			}
			@card.Footer(card.FooterProps{
				Class: "flex flex-col gap-8",
			}) {
				@button.Button(button.Props{
					Class: "w-full",
					Type:  button.TypeSubmit,
				}) {
					Sign In
				}
				<div class="text-center text-sm">
					Don't have an account?
					<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">Sign up</a>
				</div>
			}
		}
	</div>
}
```

### sign_in_002.templ

**Path:** `auth/sign_in_002.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ SignIn002() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{
			Class: "w-full max-w-sm",
		}) {
			@card.Header() {
				@card.Title() {
					Sign in
				}
				@card.Description() {
					Choose your preferred sign in method
				}
			}
			@card.Content(card.ContentProps{
				Class: "space-y-4",
			}) {
				<div class="grid grid-cols-2 gap-4">
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "w-full",
					}) {
						@icon.Code(icon.Props{
							Size:  16,
							Class: "mr-2",
						})
						GitHub
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "w-full",
					}) {
						@icon.Mail(icon.Props{
							Size:  16,
							Class: "mr-2",
						})
						Google
					}
				</div>
				@separator.Separator(separator.Props{
					Class: "my-4",
				}) {
					Or continue with
				}
				@form.Item() {
					@form.Label(form.LabelProps{
						For: "sign-in-002-email",
					}) {
						Email
					}
					@input.Input(input.Props{
						ID:          "sign-in-002-email",
						Type:        "email",
						Placeholder: "name@example.com",
					})
				}
				@form.Item() {
					@form.Label(form.LabelProps{
						For: "sign-in-002-password",
					}) {
						Password
					}
					@input.Input(input.Props{
						ID:          "sign-in-002-password",
						Type:        "password",
						Placeholder: "••••••••",
					})
				}
			}
			@card.Footer(card.FooterProps{
				Class: "flex flex-col gap-8",
			}) {
				@button.Button(button.Props{
					Class: "w-full",
					Type:  button.TypeSubmit,
				}) {
					Sign In
				}
				<div class="text-center text-sm">
					Don't have an account?
					<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">Sign up</a>
				</div>
			}
		}
	</div>
}
```

### sign_in_003.templ

**Path:** `auth/sign_in_003.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ SignIn003() {
	<div class="grid h-svh w-full overflow-hidden lg:grid-cols-2">
		<div class="hidden lg:block">
			<img
				src="/assets/img/placeholder.svg"
				alt="Authentication"
				class="h-svh w-full object-cover"
			/>
		</div>
		<div class="flex items-center justify-center p-8">
			<div class="space-y-8 sm:w-[350px]">
				<div class="space-y-2 text-center">
					<div class="flex items-center justify-center gap-2">
						@icon.Layers(icon.Props{
							Size: 20,
						})
						<h1 class="text-2xl font-semibold tracking-tight">
							Acme Inc
						</h1>
					</div>
					<p class="text-sm text-muted-foreground">
						Enter your account data to sign in					
					</p>
				</div>
				<div class="space-y-4">
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-in-003-email",
						}) {
							Email
						}
						@input.Input(input.Props{
							ID:          "sign-in-003-email",
							Type:        "email",
							Placeholder: "name@example.com",
						})
					}
					@form.Item() {
						<div class="flex items-center justify-between">
							@form.Label(form.LabelProps{
								For: "sign-in-003-password",
							}) {
								Password
							}
							<a href="#" class="text-sm text-primary hover:text-primary/80">
								Forgot password?
							</a>
						</div>
						@input.Input(input.Props{
							ID:          "sign-in-003-password",
							Type:        "password",
							Placeholder: "••••••••",
						})
					}
					@button.Button(button.Props{
						Class: "w-full",
						Type:  button.TypeSubmit,
					}) {
						Sign In
					}
				</div>
				@form.ItemFlex() {
					@checkbox.Checkbox(checkbox.Props{
						ID: "sign-in-003-remember",
					})
					@form.Label(form.LabelProps{
						For: "sign-in-003-remember",
					}) {
						Remember me
					}
				}
			</div>
		</div>
	</div>
}
```

### sign_in_004.templ

**Path:** `auth/sign_in_004.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ SignIn004() {
	<div class="flex min-h-svh items-center justify-center bg-muted/20 p-6 md:p-10">
		<div class="w-full max-w-md">
			<div class="flex flex-col space-y-6">
				<div class="flex flex-col space-y-2">
					<div class="flex items-center justify-center gap-2">
						@icon.CircleUserRound(icon.Props{
							Size: 24,
						})
						<h1 class="text-xl font-semibold">
							Welcome back
						</h1>
					</div>
					<p class="text-center text-sm text-muted-foreground">
						Sign in to your account to continue
					</p>
				</div>
				<div class="space-y-4">
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-in-004-email",
						}) {
							Email
						}
						@input.Input(input.Props{
							ID:          "sign-in-004-email",
							Type:        "email",
							Placeholder: "name@example.com",
						})
					}
					@form.Item() {
						<div class="flex items-center justify-between">
							@form.Label(form.LabelProps{
								For: "sign-in-004-password",
							}) {
								Password
							}
							<a href="#" class="text-sm text-primary hover:text-primary/80">
								Forgot Password?
							</a>
						</div>
						@input.Input(input.Props{
							ID:          "sign-in-004-password",
							Type:        "password",
							Placeholder: "••••••••",
						})
					}
					@button.Button(button.Props{
						Class: "w-full",
						Type:  button.TypeSubmit,
					}) {
						Sign In
					}
				</div>
				@separator.Separator() {
					Or continue with 
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full",
				}) {
					@icon.Github(icon.Props{
						Size:  16,
						Class: "mr-2",
					})
					Login with GitHub
				}
				<div class="text-center text-sm">
					Don't have an account?
					<a href="#" class="font-medium text-primary hover:text-primary/80">
						Sign up
					</a>
				</div>
			</div>
		</div>
	</div>
}
```

### sign_in_005.templ

**Path:** `auth/sign_in_005.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ SignIn005() {
	<div class="flex min-h-svh items-center justify-center bg-muted/20 p-6 md:p-10">
		<div class="space-y-4 w-full max-w-xl lg:max-w-5xl">
			@card.Card(card.Props{
				Class: "grid grid-cols-1 lg:grid-cols-2",
			}) {
				<div class="">
					@card.Header(card.HeaderProps{
						Class: "text-center",
					}) {
						@card.Title(card.TitleProps{
							Class: "text-2xl font-bold",
						}) {
							Welcome back
						}
						@card.Description(card.DescriptionProps{
							Class: "text-base",
						}) {
							Sign in to your account to continue
						}
					}
					@card.Content() {
						<div class="grid grid-cols-3 gap-3">
							@button.Button(button.Props{
								Variant: button.VariantOutline,
							}) {
								<svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
									<path d="M17.05 20.28c-.98.95-2.05.8-3.08.35-1.09-.46-2.09-.48-3.24 0-1.44.62-2.2.44-3.06-.35C2.79 15.25 3.51 7.59 9.05 7.31c1.35.07 2.29.74 3.08.8 1.18-.24 2.31-.93 3.57-.84 1.51.12 2.65.72 3.4 1.8-3.12 1.87-2.38 5.98.48 7.13-.57 1.5-1.31 2.99-2.54 4.09l.01-.01zM12.03 7.25c-.15-2.23 1.66-4.07 3.74-4.25.29 2.58-2.34 4.5-3.74 4.25z"></path>
								</svg>
							}
							@button.Button(button.Props{
								Variant: button.VariantOutline,
							}) {
								<svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
									<path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"></path>
									<path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"></path>
									<path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"></path>
									<path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"></path>
								</svg>
							}
							@button.Button(button.Props{
								Variant: button.VariantOutline,
							}) {
								<svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
									<path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"></path>
								</svg>
							}
						</div>
						@separator.Separator(separator.Props{
							Class: "my-6",
						}) {
							Or continue with
						}
						<div class="space-y-4">
							@form.Item() {
								@form.Label(form.LabelProps{
									For: "sign-in-005-email",
								}) {
									Email address
								}
								@input.Input(input.Props{
									ID:          "sign-in-005-email",
									Type:        "email",
									Placeholder: "Enter your email",
								})
							}
							@form.Item() {
								@form.Label(form.LabelProps{
									For: "sign-in-005-password",
								}) {
									Password
								}
								@input.Input(input.Props{
									ID:          "sign-in-005-password",
									Type:        "password",
									Placeholder: "Enter your password",
								})
							}
							@button.Button(button.Props{
								Class: "w-full",
								Type:  button.TypeSubmit,
							}) {
								Sign in
							}
						</div>
					}
					@card.Footer(card.FooterProps{
						Class: "text-center",
					}) {
						<p class="text-sm">
							Don't have an account? 
							<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">
								Sign up
							</a>
						</p>
					}
				</div>
				<div class="hidden lg:block">
					@aspectratio.AspectRatio(aspectratio.Props{
						Ratio: aspectratio.RatioPortrait,
						Class: "w-full",
					}) {
						<img
							src="/assets/img/placeholder.svg"
							alt="Card image"
							class="h-full w-full object-cover rounded-r-lg"
						/>
					}
				</div>
			}
			<p class="text-center text-xs text-muted-foreground">
				By clicking continue, you agree to our 
				<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">Terms of Service</a>
				and 
				<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">Privacy Policy</a>.
			</p>
		</div>
	</div>
}
```

### sign_up_001.templ

**Path:** `auth/sign_up_001.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ SignUp001() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="flex flex-col w-full max-w-sm flex-col items-center justify-center space-y-8">
			<div class="flex items-center justify-center gap-2">
				@icon.Layers(icon.Props{
					Size: 20,
				})
				<h1 class="text-2xl font-semibold tracking-tight">
					Acme Inc
				</h1>
			</div>
			@card.Card() {
				@card.Header() {
					@card.Title() {
						Create an account
					}
					@card.Description() {
						Enter your details to create your account
					}
				}
				@card.Content(card.ContentProps{
					Class: "space-y-4",
				}) {
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-001-first-name",
						}) {
							First name
						}
						@input.Input(input.Props{
							ID:          "sign-up-001-first-name",
							Placeholder: "Max",
						})
					}
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-001-last-name",
						}) {
							Last name
						}
						@input.Input(input.Props{
							ID:          "sign-up-001-last-name",
							Placeholder: "Mustermann",
						})
					}
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-001-email",
						}) {
							Email
						}
						@input.Input(input.Props{
							ID:          "sign-up-001-email",
							Type:        "email",
							Placeholder: "name@example.com",
						})
					}
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-001-password",
						}) {
							Password
						}
						@input.Input(input.Props{
							ID:          "sign-up-001-password",
							Type:        "password",
							Placeholder: "••••••••",
						})
					}
					@form.ItemFlex() {
						@checkbox.Checkbox(checkbox.Props{
							ID: "sign-up-001-terms",
						})
						@form.Label(form.LabelProps{
							For: "sign-up-001-terms",
						}) {
							I agree to the 
							<a href="#" class="text-primary underline underline-offset-4 hover:text-primary/80">
								terms and conditions
							</a>
						}
					}
				}
				@card.Footer() {
					@button.Button(button.Props{
						Class: "w-full",
						Type:  button.TypeSubmit,
					}) {
						Create account
					}
				}
			}
			<div class="text-center text-sm">
				Already have an account?
				<a href="#" class="font-medium text-primary hover:text-primary/80">
					Sign in
				</a>
			</div>
		</div>
	</div>
}
```

### sign_up_002.templ

**Path:** `auth/sign_up_002.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ SignUp002() {
	<div class="grid min-h-svh w-full md:grid-cols-2">
		<div class="flex flex-col justify-between bg-gradient-to-b from-bg to-primary/10 p-10 md:p-12 lg:p-16">
			<div class="flex items-center gap-2">
				@icon.Sparkles(icon.Props{
					Size: 24,
				})
				<span class="text-xl font-bold">Acme Inc</span>
			</div>
			<div class="space-y-4">
				<h1 class="text-3xl font-bold tracking-tight sm:text-4xl text-muted-foreground/90">
					Create an account and start designing today
				</h1>
				<p class="md:text-lg text-muted-foreground/80">
					Join thousands of users who have already started their journey with our platform.
				</p>
				<ul class="grid gap-2 pt-4 text-muted-foreground/70">
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span>Free 14-day trial</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span>No credit card required</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span>Cancel anytime</span>
					</li>
				</ul>
			</div>
			<div class="pt-8 text-sm text-muted-foreground/70">
				© 2023 Acme Inc. All rights reserved.
			</div>
		</div>
		<div class="flex items-center justify-center p-8">
			<div class="w-full max-w-md space-y-6">
				<div>
					<h2 class="text-2xl font-bold">Create an account</h2>
					<p class="text-sm text-muted-foreground">
						Enter your information to get started
					</p>
				</div>
				<div class="space-y-4">
					<div class="grid grid-cols-2 gap-4">
						@form.Item() {
							@form.Label(form.LabelProps{
								For: "sign-up-002-first-name",
							}) {
								First name
							}
							@input.Input(input.Props{
								ID:          "sign-up-002-first-name",
								Placeholder: "Max",
							})
						}
						@form.Item() {
							@form.Label(form.LabelProps{
								For: "sign-up-002-last-name",
							}) {
								Last name
							}
							@input.Input(input.Props{
								ID:          "sign-up-002-last-name",
								Placeholder: "Mustermann",
							})
						}
					</div>
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-002-email",
						}) {
							Email
						}
						@input.Input(input.Props{
							ID:          "sign-up-002-email",
							Type:        "email",
							Placeholder: "name@example.com",
						})
					}
					@form.Item() {
						@form.Label(form.LabelProps{
							For: "sign-up-002-password",
						}) {
							Password
						}
						@input.Input(input.Props{
							ID:          "sign-up-002-password",
							Type:        "password",
							Placeholder: "••••••••",
						})
					}
					@form.ItemFlex() {
						@checkbox.Checkbox(checkbox.Props{
							ID: "sign-up-002-terms",
						})
						@form.Label(form.LabelProps{
							For: "sign-up-002-terms",
						}) {
							I agree to the 
							<a href="#" class="font-medium text-primary underline underline-offset-4 hover:text-primary/80">
								Terms of Service
							</a>
						}
					}
					@button.Button(button.Props{
						Class: "w-full",
						Type:  button.TypeSubmit,
					}) {
						Create Account
					}
				</div>
				<div class="text-center text-sm">
					Already have an account?
					<a href="#" class="font-medium text-primary hover:text-primary/80">
						Sign in
					</a>
				</div>
			</div>
		</div>
	</div>
}
```

### sign_up_003.templ

**Path:** `auth/sign_up_003.templ`

```templ
package auth

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ SignUp003() {
	<div class="flex min-h-svh items-center justify-center bg-muted/10 p-6 md:p-10">
		<div class="w-full max-w-lg space-y-8">
			@card.Card() {
				@card.Header(card.HeaderProps{
					Class: "text-center",
				}) {
					@card.Title(card.TitleProps{
						Class: "text-2xl font-bold",
					}) {
						Create your account
					}
					@card.Description() {
						Create an account with your social accounts
					}
				}
				@card.Content(card.ContentProps{
					Class: "grid grid-cols-2 gap-3",
				}) {
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "w-full",
					}) {
						@icon.Github(icon.Props{
							Size:  16,
							Class: "mr-2",
						})
						GitHub
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "w-full",
					}) {
						@icon.Inbox(icon.Props{
							Size:  16,
							Class: "mr-2",
						})
						Google
					}
				}
			}
			<div class="text-center text-sm">
				Already have an account?
				<a href="#" class="font-medium text-primary hover:text-primary/80 ml-1">
					Sign in
				</a>
			</div>
		</div>
	</div>
}
```

## Blog

### blog_001.templ

**Path:** `blog/blog_001.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Blog001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-7xl">
			@Blog001Header()
			@Blog001Grid()
		</div>
	</section>
}

templ Blog001Header() {
	<div class="flex flex-col items-center space-y-4 text-center mb-12">
		<div class="space-y-2">
			<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Latest <span class="text-primary">Articles</span></h2>
			<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl">
				Discover our latest insights, tutorials, and industry updates.
			</p>
		</div>
	</div>
}

templ Blog001Grid() {
	<div class="grid gap-10 sm:grid-cols-2 lg:grid-cols-3">
		@Blog001Card(
			"Getting Started with Go Templates",
			"Learn the basics of Go's powerful templating system and how to use it effectively in your web applications.",
			"5 min read",
			"Mar 16, 2024",
			[]string{"Go", "Templates", "Tutorial"},
		)
		@Blog001Card(
			"Building Modern UIs with HTMX",
			"Explore how HTMX can simplify your frontend development while keeping the power on the server side.",
			"8 min read",
			"Mar 14, 2024",
			[]string{"HTMX", "Frontend", "JavaScript"},
		)
		@Blog001Card(
			"Tailwind CSS Best Practices",
			"Tips and tricks for writing maintainable and scalable styles with Tailwind CSS in production applications.",
			"6 min read",
			"Mar 12, 2024",
			[]string{"CSS", "Tailwind", "Design"},
		)
		@Blog001Card(
			"SQLite in Production",
			"Why SQLite might be the perfect database for your next project and how to use it effectively at scale.",
			"10 min read",
			"Mar 10, 2024",
			[]string{"Database", "SQLite", "Performance"},
		)
		@Blog001Card(
			"Authentication with JWT",
			"Implementing secure authentication in Go applications using JSON Web Tokens and best security practices.",
			"7 min read",
			"Mar 8, 2024",
			[]string{"Security", "JWT", "Authentication"},
		)
		@Blog001Card(
			"Deploying Go Applications",
			"A comprehensive guide to deploying Go applications to production with Docker and Kubernetes.",
			"12 min read",
			"Mar 6, 2024",
			[]string{"DevOps", "Docker", "Kubernetes"},
		)
	</div>
}

templ Blog001Card(title, description, readTime, date string, tags []string) {
	@card.Card(card.Props{
		Class: "h-full flex flex-col",
	}) {
		@card.Header() {
			<div class="flex flex-wrap gap-2 mb-3">
				for _, tag := range tags {
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "hover:bg-primary hover:text-primary-foreground transition-colors cursor-pointer",
					}) {
						{ tag }
					}
				}
			</div>
			@card.Title(card.TitleProps{
				Class: "line-clamp-2",
			}) {
				{ title }
			}
		}
		@card.Content(card.ContentProps{
			Class: "flex-1",
		}) {
			<p class="text-muted-foreground line-clamp-3 mb-4">
				{ description }
			</p>
			<div class="flex items-center gap-2 text-sm text-muted-foreground">
				<span>{ date }</span>
				<span>•</span>
				<span>{ readTime }</span>
			</div>
		}
		@card.Footer(card.FooterProps{
			Class: "pt-4",
		}) {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "w-full hover:text-primary group",
			}) {
				<span class="flex items-center justify-center gap-2">
					Read More
					@icon.ArrowRight(icon.Props{
						Size:  16,
						Class: "group-hover:translate-x-1 transition-transform",
					})
				</span>
			}
		}
	}
}
```

### blog_002.templ

**Path:** `blog/blog_002.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Blog002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-5xl">
			@Blog002Header()
			@Blog002List()
		</div>
	</section>
}

templ Blog002Header() {
	<div class="flex flex-col md:flex-row md:items-center md:justify-between mb-12">
		<div class="mb-4 md:mb-0">
			<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Blog <span class="text-primary">Posts</span></h2>
			<p class="text-muted-foreground md:text-xl mt-2">
				Thoughts, ideas, and insights from our team.
			</p>
		</div>
		<div class="flex gap-2">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "hover:border-primary hover:text-primary",
			}) {
				<span class="flex items-center gap-2">
					@icon.Funnel(icon.Props{
						Size: 16,
					})
					Filter
				</span>
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "hover:border-primary hover:text-primary",
			}) {
				<span class="flex items-center gap-2">
					@icon.Search(icon.Props{
						Size: 16,
					})
					Search
				</span>
			}
		</div>
	</div>
}

templ Blog002List() {
	<div class="space-y-8">
		@Blog002Article(
			"/assets/img/placeholder.svg",
			"The Future of Web Development",
			"Exploring emerging trends and technologies shaping the future of web development, from AI-powered tools to new frameworks.",
			"Technology",
			"15 min read",
			"2 days ago",
		)
		@Blog002Article(
			"/assets/img/placeholder.svg",
			"Mastering Clean Code Principles",
			"A deep dive into writing maintainable, readable, and efficient code that your future self and teammates will thank you for.",
			"Best Practices",
			"12 min read",
			"5 days ago",
		)
		@Blog002Article(
			"/assets/img/placeholder.svg",
			"Building Scalable Microservices",
			"Learn how to design and implement microservices architecture that can grow with your business needs.",
			"Architecture",
			"20 min read",
			"1 week ago",
		)
		@Blog002Article(
			"/assets/img/placeholder.svg",
			"CSS Grid vs Flexbox: When to Use Which",
			"A comprehensive comparison of CSS Grid and Flexbox, with practical examples and use cases for each.",
			"CSS",
			"8 min read",
			"2 weeks ago",
		)
	</div>
}

templ Blog002Article(imageUrl, title, description, category, readTime, date string) {
	@card.Card(card.Props{
		Class: "hover:shadow-md transition-shadow overflow-hidden p-0 group",
	}) {
		<div class="grid md:grid-cols-3">
			<div class="h-48 md:h-full relative">
				<img
					src={ imageUrl }
					alt={ title }
					class="absolute inset-0 object-cover w-full h-full"
				/>
			</div>
			<div class="md:col-span-2 flex flex-col p-6">
				<div class="flex items-center gap-2 mb-4">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "hover:bg-primary hover:text-primary-foreground transition-colors cursor-pointer",
					}) {
						{ category }
					}
					<span class="text-sm text-muted-foreground">{ date }</span>
				</div>
				<h3 class="text-2xl font-semibold tracking-tight mb-2 group-hover:text-primary transition-colors">{ title }</h3>
				<p class="text-muted-foreground mb-4">{ description }</p>
				<div class="flex items-center justify-between mt-auto">
					<span class="text-sm text-muted-foreground">{ readTime }</span>
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "flex items-center gap-2 hover:text-primary group",
					}) {
						Read Article
						@icon.ArrowRight(icon.Props{
							Size:  16,
							Class: "group-hover:translate-x-1 transition-transform",
						})
					}
				</div>
			</div>
		</div>
	}
}
```

### blog_003.templ

**Path:** `blog/blog_003.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Blog003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 bg-muted/50">
		<div class="w-full max-w-7xl">
			@Blog003Header()
			@Blog003FeaturedAndGrid()
		</div>
	</section>
}

templ Blog003Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl mb-4">From the <span class="text-primary">Blog</span></h2>
		<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl">
			Stay updated with our latest news, tutorials, and insights.
		</p>
	</div>
}

templ Blog003FeaturedAndGrid() {
	<div class="grid gap-8 lg:grid-cols-2">
		@Blog003Featured()
		@Blog003RecentPosts()
	</div>
}

templ Blog003Featured() {
	@card.Card(card.Props{
		Class: "h-full flex flex-col overflow-hidden",
	}) {
		<div class="aspect-video bg-muted relative overflow-hidden">
			<img
				src="/assets/img/placeholder.svg"
				alt="Featured post"
				class="object-cover w-full h-full"
			/>
			<div class="absolute top-4 left-4">
				@badge.Badge(badge.Props{
					Variant: badge.VariantDefault,
				}) {
					Featured
				}
			</div>
		</div>
		@card.Header(card.HeaderProps{
			Class: "flex-1 flex flex-col",
		}) {
			<div class="flex items-center gap-2">
				<span class="text-sm font-medium text-primary">Development</span>
				<span class="text-sm text-muted-foreground">•</span>
				<span class="text-sm text-muted-foreground">March 20, 2024</span>
			</div>
			@card.Title() {
				Building Real-Time Applications with WebSockets
			}
			@card.Description() {
				Learn how to implement real-time features in your web applications using WebSockets and Go. 
				We'll cover everything from basic setup to handling complex scenarios.
			}
		}
		@card.Content(card.ContentProps{
			Class: "mt-auto",
		}) {
			<div class="flex items-center gap-4">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "Author",
					})
					@avatar.Fallback() {
						JD 
					}
				}
				<div class="flex flex-col">
					<span class="text-sm font-medium">Jane Doe</span>
					<span class="text-xs text-muted-foreground">Senior Developer</span>
				</div>
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Read Full Article
			}
		}
	}
}

templ Blog003RecentPosts() {
	<div class="space-y-4">
		<h3 class="text-xl font-semibold mb-4">Recent Posts</h3>
		@Blog003RecentPost(
			"Database Migration Strategies",
			"Best practices for managing database schema changes in production environments.",
			"Backend",
			"8 min read",
			"Mar 16, 2024",
		)
		@Blog003RecentPost(
			"Optimizing Frontend Performance",
			"Techniques to improve your website's loading speed and user experience.",
			"Performance",
			"12 min read",
			"Mar 14, 2024",
		)
		@Blog003RecentPost(
			"API Design Best Practices",
			"Guidelines for creating intuitive, maintainable, and scalable REST APIs.",
			"API",
			"15 min read",
			"Mar 12, 2024",
		)
		@Blog003RecentPost(
			"Testing Strategies for Go",
			"From unit tests to integration tests, learn how to test Go applications effectively.",
			"Testing",
			"9 min read",
			"Mar 10, 2024",
		)
	</div>
}

templ Blog003RecentPost(title, description, category, readTime, date string) {
	@card.Card(card.Props{
		Class: "hover:shadow-sm transition-shadow group cursor-pointer",
	}) {
		@card.Header(card.HeaderProps{
			Class: "pb-3",
		}) {
			<div class="flex justify-between items-start">
				@card.Title(card.TitleProps{
					Class: "text-base font-semibold group-hover:text-primary transition-colors line-clamp-1",
				}) {
					{ title }
				}
				@icon.ArrowUpRight(icon.Props{
					Size:  16,
					Class: "text-muted-foreground flex-shrink-0 ml-2 group-hover:text-primary transition-colors",
				})
			</div>
			@card.Description(card.DescriptionProps{
				Class: "mt-1",
			}) {
				{ description }
			}
		}
		@card.Content(card.ContentProps{
			Class: "pt-0",
		}) {
			<div class="flex items-center gap-2 text-xs text-muted-foreground">
				@badge.Badge(badge.Props{
					Variant: badge.VariantOutline,
					Class:   "hover:bg-primary hover:text-primary-foreground hover:border-primary transition-colors",
				}) {
					{ category }
				}
				<span>•</span>
				<span>{ readTime }</span>
				<span>•</span>
				<span>{ date }</span>
			</div>
		}
	}
}
```

### blog_004.templ

**Path:** `blog/blog_004.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

templ Blog004() {
	<section class="flex min-h-svh w-full justify-center p-6 md:p-10">
		<div class="w-full max-w-7xl">
			@Blog004Header()
			@Blog004Tabs()
		</div>
	</section>
}

templ Blog004Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl mb-4">Articles & <span class="text-primary">Resources</span></h2>
		<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl">
			Browse our content by category
		</p>
	</div>
}

templ Blog004Tabs() {
	@tabs.Tabs(tabs.Props{
		Class: "w-full",
	}) {
		<div class="overflow-x-auto mb-8">
			@tabs.List(tabs.ListProps{
				Class: "flex min-w-max",
			}) {
				@tabs.Trigger(tabs.TriggerProps{
					Value: "all",
				}) {
					All Posts
				}
				@tabs.Trigger(tabs.TriggerProps{
					Value: "tutorials",
				}) {
					Tutorials
				}
				@tabs.Trigger(tabs.TriggerProps{
					Value: "news",
				}) {
					News
				}
				@tabs.Trigger(tabs.TriggerProps{
					Value: "guides",
				}) {
					Guides
				}
				@tabs.Trigger(tabs.TriggerProps{
					Value: "case-studies",
				}) {
					Case Studies
				}
			}
		</div>
		@tabs.Content(tabs.ContentProps{
			Value: "all",
		}) {
			@Blog004PostGrid([]Blog004Post{
				{Title: "Getting Started with Go Modules", Category: "Tutorial", Date: "Mar 20, 2024", ReadTime: "5 min", Author: "John Smith"},
				{Title: "Company Announces New Features", Category: "News", Date: "Mar 19, 2024", ReadTime: "3 min", Author: "PR Team"},
				{Title: "Complete Guide to REST APIs", Category: "Guide", Date: "Mar 18, 2024", ReadTime: "15 min", Author: "Sarah Lee"},
				{Title: "How We Scaled to 1M Users", Category: "Case Study", Date: "Mar 17, 2024", ReadTime: "20 min", Author: "CTO"},
				{Title: "Understanding Goroutines", Category: "Tutorial", Date: "Mar 16, 2024", ReadTime: "8 min", Author: "Mike Chen"},
				{Title: "Q1 Product Updates", Category: "News", Date: "Mar 15, 2024", ReadTime: "4 min", Author: "Product Team"},
			})
		}
		@tabs.Content(tabs.ContentProps{
			Value: "tutorials",
		}) {
			@Blog004PostGrid([]Blog004Post{
				{Title: "Getting Started with Go Modules", Category: "Tutorial", Date: "Mar 20, 2024", ReadTime: "5 min", Author: "John Smith"},
				{Title: "Understanding Goroutines", Category: "Tutorial", Date: "Mar 16, 2024", ReadTime: "8 min", Author: "Mike Chen"},
				{Title: "Building Your First API", Category: "Tutorial", Date: "Mar 14, 2024", ReadTime: "10 min", Author: "Alice Wong"},
				{Title: "Error Handling in Go", Category: "Tutorial", Date: "Mar 12, 2024", ReadTime: "7 min", Author: "Bob Johnson"},
			})
		}
		@tabs.Content(tabs.ContentProps{
			Value: "news",
		}) {
			@Blog004PostGrid([]Blog004Post{
				{Title: "Company Announces New Features", Category: "News", Date: "Mar 19, 2024", ReadTime: "3 min", Author: "PR Team"},
				{Title: "Q1 Product Updates", Category: "News", Date: "Mar 15, 2024", ReadTime: "4 min", Author: "Product Team"},
				{Title: "Partnership Announcement", Category: "News", Date: "Mar 10, 2024", ReadTime: "2 min", Author: "PR Team"},
			})
		}
		@tabs.Content(tabs.ContentProps{
			Value: "guides",
		}) {
			@Blog004PostGrid([]Blog004Post{
				{Title: "Complete Guide to REST APIs", Category: "Guide", Date: "Mar 18, 2024", ReadTime: "15 min", Author: "Sarah Lee"},
				{Title: "Database Design Best Practices", Category: "Guide", Date: "Mar 13, 2024", ReadTime: "25 min", Author: "DB Expert"},
				{Title: "Security Hardening Guide", Category: "Guide", Date: "Mar 8, 2024", ReadTime: "30 min", Author: "Security Team"},
			})
		}
		@tabs.Content(tabs.ContentProps{
			Value: "case-studies",
		}) {
			@Blog004PostGrid([]Blog004Post{
				{Title: "How We Scaled to 1M Users", Category: "Case Study", Date: "Mar 17, 2024", ReadTime: "20 min", Author: "CTO"},
				{Title: "Migrating from Monolith to Microservices", Category: "Case Study", Date: "Mar 11, 2024", ReadTime: "18 min", Author: "Tech Lead"},
				{Title: "Reducing Costs by 50%", Category: "Case Study", Date: "Mar 5, 2024", ReadTime: "15 min", Author: "DevOps Team"},
			})
		}
	}
}

type Blog004Post struct {
	Title    string
	Category string
	Date     string
	ReadTime string
	Author   string
}

templ Blog004PostGrid(posts []Blog004Post) {
	<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
		for _, post := range posts {
			@Blog004PostCard(post)
		}
	</div>
}

templ Blog004PostCard(post Blog004Post) {
	@card.Card(card.Props{
		Class: "group relative overflow-hidden hover:shadow-lg transition-all h-full",
	}) {
		@card.Header() {
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
				Class:   "w-min mb-2 text-nowrap hover:bg-primary hover:text-primary-foreground hover:border-primary transition-colors cursor-pointer",
			}) {
				{ post.Category }
			}
			@card.Title(card.TitleProps{
				Class: "mt-3",
			}) {
				{ post.Title }
			}
		}
		@card.Content(card.ContentProps{
			Class: "flex-1",
		}) {
			<div class="flex items-center justify-between text-sm text-muted-foreground">
				<span>{ post.Author }</span>
				<span>{ post.Date }</span>
			</div>
		}
		@card.Footer() {
			<div class="flex items-center justify-between w-full">
				<span class="text-sm text-muted-foreground">{ post.ReadTime } read</span>
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "hover:border-primary hover:text-primary transition-colors",
				}) {
					Read More →
				}
			</div>
		}
		<div class="absolute inset-x-0 bottom-0 h-px bg-gradient-to-r from-primary/0 via-primary to-primary/0 opacity-0 group-hover:opacity-100 transition-opacity"></div>
	}
}
```

### blog_005.templ

**Path:** `blog/blog_005.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Blog005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-6xl">
			@Blog005Header()
			@Blog005Timeline()
		</div>
	</section>
}

templ Blog005Header() {
	<div class="max-w-3xl mx-auto text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl md:text-5xl mb-4">Recent <span class="text-primary">Updates</span></h2>
		<p class="text-muted-foreground md:text-xl">
			A chronological view of our latest articles and announcements
		</p>
	</div>
}

templ Blog005Timeline() {
	<div class="max-w-3xl mx-auto">
		<div class="relative">
			<div class="absolute left-8 top-0 bottom-0 w-0.5 bg-gradient-to-b from-primary/20 via-primary/50 to-primary/20"></div>
			@Blog005TimelineItem(
				"Mar 20",
				"2024",
				"Introducing Our New Design System",
				"We're excited to announce the launch of our comprehensive design system that will help maintain consistency across all our products.",
				"Announcement",
				true,
			)
			@Blog005TimelineItem(
				"Mar 18",
				"2024",
				"Performance Optimization Techniques",
				"Learn how we improved our application's performance by 40% through strategic optimizations and code refactoring.",
				"Engineering",
				false,
			)
			@Blog005TimelineItem(
				"Mar 15",
				"2024",
				"Customer Success Story: TechCorp",
				"See how TechCorp increased their productivity by 60% using our platform and custom integrations.",
				"Case Study",
				false,
			)
			@Blog005TimelineItem(
				"Mar 12",
				"2024",
				"Security Best Practices Guide",
				"A comprehensive guide to securing your applications with the latest security standards and practices.",
				"Guide",
				false,
			)
			@Blog005TimelineItem(
				"Mar 10",
				"2024",
				"Q1 Product Roadmap",
				"Get a sneak peek at what's coming in Q1 2024, including new features and improvements based on your feedback.",
				"Product",
				false,
			)
			@Blog005TimelineItem(
				"Mar 8",
				"2024",
				"API v2.0 Released",
				"Our new API version is now available with improved performance, better documentation, and new endpoints.",
				"Release",
				false,
			)
		</div>
		<div class="text-center mt-12">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "hover:border-primary hover:text-primary group",
			}) {
				Load More Articles
				@icon.ChevronDown(icon.Props{
					Size:  16,
					Class: "ml-1 group-hover:translate-y-0.5 transition-transform",
				})
			}
		</div>
	</div>
}

templ Blog005TimelineItem(day, year, title, description, category string, isNew bool) {
	<div class="relative flex items-start mb-8 group">
		<div class="absolute left-8 w-4 h-4 bg-background border-2 border-primary rounded-full -translate-x-1/2 group-hover:scale-125 transition-transform"></div>
		<div class="ml-20 flex-1">
			<div class="flex flex-col sm:flex-row sm:items-center gap-2 mb-2">
				<time class="text-sm font-medium text-muted-foreground">
					{ day }, { year }
				</time>
				if isNew {
					<span class="inline-flex items-center gap-1 text-xs font-medium text-primary">
						@icon.Sparkles(icon.Props{
							Size: 12,
						})
						New
					</span>
				}
				@separator.Separator(separator.Props{
					Orientation: separator.OrientationVertical,
					Class:       "hidden sm:block h-4",
				})
				<span class="text-sm text-muted-foreground">{ category }</span>
			</div>
			@card.Card(card.Props{
				Class: "bg-muted/50 hover:bg-muted transition-colors",
			}) {
				@card.Header(card.HeaderProps{
					Class: "pb-4",
				}) {
					@card.Title() {
						{ title }
					}
					@card.Description() {
						{ description }
					}
				}
				@card.Footer() {
					@button.Button(button.Props{
						Class: "flex items-center gap-2 group",
					}) {
						Read More
						@icon.ArrowRight(icon.Props{
							Size:  14,
							Class: "group-hover:translate-x-1 transition-transform",
						})
					}
				}
			}
		</div>
	</div>
}
```

### blog_006.templ

**Path:** `blog/blog_006.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Blog006() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-7xl">
			@Blog006Header()
			@Blog006Grid()
		</div>
	</section>
}

templ Blog006Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl mb-4">Knowledge Base</h2>
		<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl">
			Find answers, tutorials, and guides to help you get the most out of our platform.
		</p>
		<div class="flex justify-center gap-2 mt-6">
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
			}) {
				@icon.FileText(icon.Props{
					Size: 14,
				})
				156 Articles
			}
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
			}) {
				@icon.Users(icon.Props{
					Size: 14,
				})
				23 Contributors
			}
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
			}) {
				@icon.Clock(icon.Props{
					Size: 14,
				})
				Updated Daily
			}
		</div>
	</div>
}

templ Blog006Grid() {
	<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
		@Blog006CategoryCard(
			"Getting Started",
			"New to our platform? Start here with our beginner-friendly guides.",
			"BookOpen",
			"12 articles",
			[]string{"Quick Start Guide", "Basic Concepts", "First Project"},
		)
		@Blog006CategoryCard(
			"API Reference",
			"Complete documentation for all API endpoints and methods.",
			"Code",
			"45 articles",
			[]string{"Authentication", "REST Endpoints", "GraphQL Schema"},
		)
		@Blog006CategoryCard(
			"Best Practices",
			"Learn industry best practices and optimization techniques.",
			"Lightbulb",
			"28 articles",
			[]string{"Performance Tips", "Security Guide", "Code Standards"},
		)
		@Blog006CategoryCard(
			"Troubleshooting",
			"Common issues and their solutions to help you debug faster.",
			"AlertCircle",
			"34 articles",
			[]string{"Error Messages", "Debug Guide", "Common Issues"},
		)
		@Blog006CategoryCard(
			"Integrations",
			"Connect with third-party services and extend functionality.",
			"Plug",
			"22 articles",
			[]string{"OAuth Setup", "Webhooks", "Third-party APIs"},
		)
		@Blog006CategoryCard(
			"Community",
			"Learn from community contributions and success stories.",
			"Users",
			"15 articles",
			[]string{"Case Studies", "Guest Posts", "Community Tips"},
		)
	</div>
}

templ Blog006CategoryCard(title, description, iconName, count string, topics []string) {
	@card.Card(card.Props{
		Class: "hover:shadow-md transition-shadow cursor-pointer",
	}) {
		@card.Header() {
			<div class="flex items-start justify-between">
				<div class="p-2 bg-primary/10 rounded-lg">
					switch iconName {
						case "BookOpen":
							@icon.BookOpen(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
						case "Code":
							@icon.Code(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
						case "Lightbulb":
							@icon.Lightbulb(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
						case "AlertCircle":
							@icon.CircleAlert(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
						case "Plug":
							@icon.Plug(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
						case "Users":
							@icon.Users(icon.Props{
								Size:  24,
								Class: "text-primary",
							})
					}
				</div>
				<span class="text-sm text-muted-foreground">{ count }</span>
			</div>
			@card.Title(card.TitleProps{
				Class: "mt-4",
			}) {
				{ title }
			}
			@card.Description() {
				{ description }
			}
		}
		@card.Content() {
			<div class="space-y-2">
				<p class="text-sm font-medium">Popular topics:</p>
				<ul class="space-y-1">
					for _, topic := range topics {
						<li class="text-sm text-muted-foreground flex items-center gap-2">
							@icon.ChevronRight(icon.Props{
								Size:  14,
								Class: "text-muted-foreground/50",
							})
							{ topic }
						</li>
					}
				</ul>
			</div>
		}
		@card.Footer() {
			<div class="flex items-center justify-between">
				<div class="flex -space-x-2 *:ring-2 *:ring-background">
					@avatar.Avatar(avatar.Props{
						Class: "h-8 w-8",
					}) {
						@avatar.Image(avatar.ImageProps{
							Src: "/assets/img/avatar-gh-2.png",
							Alt: "Contributor",
						})
						@avatar.Fallback() {
							C
						}
					}
					@avatar.Avatar(avatar.Props{
						Class: "h-8 w-8",
					}) {
						@avatar.Fallback() {
							JD 
						}
					}
					@avatar.Avatar(avatar.Props{
						Class: "h-8 w-8 text-muted-foreground",
					}) {
						@avatar.Fallback() {
							+3 
						}
					}
				</div>
				<span class="pl-4 text-sm text-primary flex items-center gap-2">
					Browse articles
					@icon.ArrowRight(icon.Props{
						Size: 14,
					})
				</span>
			</div>
		}
	}
}
```

### blog_007.templ

**Path:** `blog/blog_007.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Blog007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 ">
		<div class="w-full max-w-6xl">
			@Blog007Header()
			@Blog007Newsletter()
			@Blog007MinimalList()
		</div>
	</section>
}

templ Blog007Header() {
	<div class="text-center mb-12">
		<div class="inline-flex items-center gap-2 mb-4">
			@icon.Newspaper(icon.Props{
				Size:  32,
				Class: "text-primary",
			})
		</div>
		<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl mb-4">The Developer Blog</h2>
		<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl">
			Technical insights, tutorials, and updates from our engineering team.
		</p>
	</div>
}

templ Blog007Newsletter() {
	<div class="max-w-2xl mx-auto mb-16">
		@card.Card(card.Props{
			Class: "",
		}) {
			<div class="flex flex-col sm:flex-row gap-4 items-center p-6">
				<div class="flex-1 text-center sm:text-left">
					<h3 class="font-semibold mb-1">Subscribe to our newsletter</h3>
					<p class="text-sm text-muted-foreground">Get the latest posts delivered right to your inbox.</p>
				</div>
				<div class="flex w-full sm:w-auto gap-2">
					@input.Input(input.Props{
						Placeholder: "Enter your email",
						Type:        "email",
						Class:       "w-full sm:w-64",
					})
					@button.Button() {
						Subscribe
					}
				</div>
			</div>
		}
	</div>
}

templ Blog007MinimalList() {
	<div class="max-w-4xl mx-auto">
		<div class="space-y-0 divide-y">
			@Blog007MinimalPost(
				"The Future of Server-Side Rendering",
				"Exploring the evolution of SSR and its impact on modern web development.",
				"Mar 20, 2024",
				"15 min",
				[]string{"SSR", "Performance", "Architecture"},
				true,
			)
			@Blog007MinimalPost(
				"Optimizing Database Queries in Production",
				"Practical techniques for improving database performance at scale.",
				"Mar 18, 2024",
				"12 min",
				[]string{"Database", "Optimization", "SQL"},
				false,
			)
			@Blog007MinimalPost(
				"Building Type-Safe APIs with Go",
				"How to leverage Go's type system for robust API development.",
				"Mar 15, 2024",
				"10 min",
				[]string{"Go", "API", "Types"},
				false,
			)
			@Blog007MinimalPost(
				"Microservices Communication Patterns",
				"Best practices for inter-service communication in distributed systems.",
				"Mar 13, 2024",
				"18 min",
				[]string{"Microservices", "Architecture", "Patterns"},
				false,
			)
			@Blog007MinimalPost(
				"CI/CD Pipeline Optimization",
				"Strategies to speed up your deployment pipeline without sacrificing quality.",
				"Mar 10, 2024",
				"8 min",
				[]string{"DevOps", "CI/CD", "Automation"},
				false,
			)
			@Blog007MinimalPost(
				"Understanding Memory Management in Go",
				"Deep dive into Go's garbage collector and memory allocation.",
				"Mar 8, 2024",
				"20 min",
				[]string{"Go", "Performance", "Memory"},
				false,
			)
		</div>
		<div class="text-center mt-12">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				<span class="flex items-center gap-2">
					View Archive
					@icon.Archive(icon.Props{
						Size: 18,
					})
				</span>
			}
		</div>
	</div>
}

templ Blog007MinimalPost(title, description, date, readTime string, tags []string, featured bool) {
	<article class="py-8 group">
		<div class="flex flex-col lg:flex-row lg:items-start lg:justify-between gap-4">
			<div class="flex-1">
				<div class="flex items-center gap-3 mb-3">
					if featured {
						@badge.Badge(badge.Props{
							Variant: badge.VariantDefault,
						}) {
							@icon.Star(icon.Props{
								Size: 12,
							})
							Featured
						}
					}
					<time class="text-sm text-muted-foreground">{ date }</time>
					<span class="text-sm text-muted-foreground">•</span>
					<span class="text-sm text-muted-foreground">{ readTime } read</span>
				</div>
				<h3 class="text-2xl font-semibold mb-2 hover:text-primary cursor-pointer">
					{ title }
				</h3>
				<p class="text-muted-foreground mb-4 line-clamp-2">
					{ description }
				</p>
				<div class="flex flex-wrap gap-2">
					for _, tag := range tags {
						<span class="text-sm text-muted-foreground hover:text-foreground transition-colors cursor-pointer">
							#{ tag }
						</span>
					}
				</div>
			</div>
			<div class="flex items-center gap-2 lg:ml-8">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Bookmark(icon.Props{
						Size: 18,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Share2(icon.Props{
						Size: 18,
					})
				}
			</div>
		</div>
	</article>
}
```

### blog_008.templ

**Path:** `blog/blog_008.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/skeleton"
)

templ Blog008() {
	<article class="min-h-svh">
		<div class="mx-auto max-w-3xl px-6 py-16">
			@Blog008Header()
			@separator.Separator()
			@Blog008Content()
			@separator.Separator(separator.Props{
				Class: "my-12",
			})
			@Blog008Footer()
		</div>
	</article>
}

templ Blog008Header() {
	<header class="mb-8">
		<h1 class="text-4xl font-bold tracking-tight mb-4">
			Building Scalable Applications with Go
		</h1>
		<p class="text-xl text-muted-foreground mb-6">
			A comprehensive guide to building production-ready applications using Go's powerful features and best practices.
		</p>
		@Blog008AuthorInfo()
	</header>
}

templ Blog008AuthorInfo() {
	<div class="flex items-center gap-4">
		@avatar.Avatar(avatar.Props{
			Class: "h-10 w-10",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: "/assets/img/avatar-gh-1.png",
				Alt: "Author",
			})
			@avatar.Fallback() {
				JD
			}
		}
		<div>
			<p class="font-medium">John Doe</p>
			<p class="text-sm text-muted-foreground">December 15, 2024 • 10 min read</p>
		</div>
	</div>
}

templ Blog008Content() {
	<div class="prose prose-neutral max-w-none dark:prose-invert mt-8 space-y-6">
		// Lead paragraph
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-5/6 mb-6 animate-none",
		})
		// H2: Why Choose Go?
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-1/3 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-6 animate-none",
		})
		// H3: Performance Benefits
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-6 animate-none",
		})
		// H3: Concurrency Model
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-8 animate-none",
		})
		// H2: Best Practices
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-1/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-6 animate-none",
		})
		// H3: Error Handling
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-6 animate-none",
		})
		// H3: Project Structure
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-4 animate-none",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/4 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-4/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-8 ml-6 animate-none",
		})
		// H2: Conclusion
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-1/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 animate-none",
		})
	</div>
}

templ Blog008Footer() {
	<footer>
		<div class="flex flex-wrap gap-2 mb-8">
			@Blog008Tag("Go")
			@Blog008Tag("Backend")
			@Blog008Tag("Architecture")
			@Blog008Tag("Best Practices")
		</div>
	</footer>
}

templ Blog008Tag(name string) {
	@badge.Badge(badge.Props{
		Variant: badge.VariantSecondary,
	}) {
		{ name }
	}
}
```

### blog_009.templ

**Path:** `blog/blog_009.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/skeleton"
)

templ Blog009() {
	<article class="min-h-svh">
		<div class="mx-auto max-w-6xl px-6 py-12">
			<div class="grid gap-12 lg:grid-cols-3">
				<div class="lg:col-span-2">
					@Blog009Header()
					@Blog009Content()
					@separator.Separator(separator.Props{
						Class: "my-8",
					})
					@Blog009AuthorBio()
				</div>
				@Blog009Sidebar()
			</div>
		</div>
	</article>
}

templ Blog009Header() {
	<header class="mb-8">
		<div class="flex flex-wrap gap-2 mb-4">
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
			}) {
				Tutorial
			}
			<time class="text-sm text-muted-foreground">December 15, 2024</time>
		</div>
		<h1 class="text-4xl font-bold tracking-tight mb-4">
			Modern Web Development with Go and Templ
		</h1>
		<p class="text-xl text-muted-foreground">
			Explore the latest patterns and best practices for building modern Go web applications.
		</p>
	</header>
}

templ Blog009Content() {
	<div class="prose prose-neutral max-w-none dark:prose-invert space-y-6">
		// Lead paragraph
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-4/5 mb-6 animate-none",
		})
		// H2: Component Architecture
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-2/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-6 animate-none",
		})
		// H3: Custom Hooks
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/4 mb-2 animate-none font-semibold",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/3 mb-6 ml-6 animate-none",
		})
		// H3: State Management
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/3 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/4 mb-2 animate-none font-semibold",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-8 ml-6 animate-none",
		})
		// H2: Performance Optimization
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-2/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/4 mb-2 animate-none font-semibold",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 mb-6 ml-6 animate-none",
		})
		// H3: Code Splitting
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/5 mb-2 animate-none font-semibold",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/3 mb-8 ml-6 animate-none",
		})
		// H2: Testing Strategies
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-1/3 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/4 mb-2 animate-none font-semibold",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 ml-6 animate-none",
		})
	</div>
}

templ Blog009AuthorBio() {
	<div class="flex items-start gap-4">
		@avatar.Avatar(avatar.Props{
			Class: "h-16 w-16",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: "/assets/img/avatar-gh-2.png",
				Alt: "Sarah Johnson",
			})
			@avatar.Fallback() {
				SJ
			}
		}
		<div class="flex-1">
			<h3 class="font-semibold">Sarah Johnson</h3>
			<p class="text-sm text-muted-foreground mb-2">
				Senior Go Developer with 8+ years of experience building scalable web applications.
				Passionate about Go, Templ, and modern server-side rendering.
			</p>
			<div class="flex gap-2">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					@icon.Twitter(icon.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					@icon.Github(icon.Props{
						Size: 16,
					})
				}
			</div>
		</div>
	</div>
}

templ Blog009Sidebar() {
	<aside class="space-y-6">
		@Blog009TableOfContents()
		@Blog009RelatedArticles()
		@Blog009Newsletter()
	</aside>
}

templ Blog009TableOfContents() {
	@card.Card() {
		@card.Header() {
			@card.Title(card.TitleProps{
				Class: "text-base",
			}) {
				Table of Contents
			}
		}
		@card.Content() {
			<nav class="space-y-2">
				@Blog009TOCLink("#component-architecture", "Component Architecture", false)
				@Blog009TOCLink("#custom-hooks", "Custom Hooks", true)
				@Blog009TOCLink("#state-management", "State Management", true)
				@Blog009TOCLink("#performance-optimization", "Performance Optimization", false)
				@Blog009TOCLink("#code-splitting", "Code Splitting", true)
				@Blog009TOCLink("#testing-strategies", "Testing Strategies", false)
			</nav>
		}
	}
}

templ Blog009TOCLink(href, text string, isNested bool) {
	<a href={ templ.SafeURL(href) } class={ "block text-sm hover:text-primary/80", templ.KV("pl-4", isNested) }>
		{ text }
	</a>
}

templ Blog009RelatedArticles() {
	@card.Card() {
		@card.Header() {
			@card.Title(card.TitleProps{
				Class: "text-base",
			}) {
				Related Articles
			}
		}
		@card.Content(card.ContentProps{
			Class: "space-y-4",
		}) {
			@Blog009RelatedArticleLink("Advanced Go Patterns", "5 min read")
			@Blog009RelatedArticleLink("Type-Safe Templates with Templ", "8 min read")
			@Blog009RelatedArticleLink("Server-Side Rendering with Go", "12 min read")
		}
	}
}

templ Blog009RelatedArticleLink(title, readTime string) {
	<div>
		<h4 class="font-medium text-sm hover:text-primary/80 cursor-pointer">
			{ title }
		</h4>
		<p class="text-xs text-muted-foreground">{ readTime }</p>
	</div>
}

templ Blog009Newsletter() {
	@card.Card(card.Props{
		Class: "bg-muted/50",
	}) {
		@card.Header() {
			@card.Title(card.TitleProps{
				Class: "text-base",
			}) {
				Stay Updated
			}
			@card.Description() {
				Get the latest articles delivered to your inbox.
			}
		}
		@card.Content() {
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Subscribe
			}
		}
	}
}
```

### blog_010.templ

**Path:** `blog/blog_010.templ`

```templ
package blog

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/skeleton"
)

templ Blog010() {
	<article class="min-h-svh bg-muted/30">
		<div class="mx-auto max-w-4xl px-6 py-12">
			@Blog010ArticleCard()
			@Blog010Navigation()
		</div>
	</article>
}

templ Blog010ArticleCard() {
	@card.Card(card.Props{
		Class: "overflow-hidden",
	}) {
		@Blog010HeroImage()
		@Blog010Header()
		@Blog010Content()
		@Blog010Footer()
	}
}

templ Blog010HeroImage() {
	@aspectratio.AspectRatio(aspectratio.Props{
		Ratio: aspectratio.RatioWide,
	}) {
		<img
			src="/assets/img/placeholder.svg"
			alt="Code editor"
			class="object-cover w-full h-full"
		/>
	}
}

templ Blog010Header() {
	@card.Header(card.HeaderProps{
		Class: "space-y-4",
	}) {
		@Blog010MetaInfo()
		@Blog010TitleSection()
		@Blog010Tags()
	}
}

templ Blog010MetaInfo() {
	<div class="flex items-center justify-between">
		<div class="flex items-center gap-3">
			@avatar.Avatar(avatar.Props{
				Class: "h-8 w-8",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-3.png",
					Alt: "Michael Chen",
				})
				@avatar.Fallback() {
					MC
				}
			}
			<div>
				<p class="text-sm font-medium">Michael Chen</p>
				<p class="text-xs text-muted-foreground">December 15, 2024</p>
			</div>
		</div>
		<div class="flex items-center gap-2 text-sm text-muted-foreground">
			@icon.Clock(icon.Props{
				Size: 16,
			})
			<span>15 min read</span>
		</div>
	</div>
}

templ Blog010TitleSection() {
	@card.Title(card.TitleProps{
		Class: "text-3xl",
	}) {
		The Complete Guide to Database Design
	}
	@card.Description(card.DescriptionProps{
		Class: "text-lg",
	}) {
		Learn how to design efficient, scalable databases that grow with your application's needs.
	}
}

templ Blog010Tags() {
	<div class="flex flex-wrap gap-2">
		@Blog010Tag("Database")
		@Blog010Tag("Architecture")
		@Blog010Tag("PostgreSQL")
		@Blog010Tag("Best Practices")
	</div>
}

templ Blog010Tag(name string) {
	@badge.Badge(badge.Props{
		Variant: badge.VariantSecondary,
	}) {
		{ name }
	}
}

templ Blog010Content() {
	@card.Content(card.ContentProps{
		Class: "prose prose-neutral max-w-none dark:prose-invert space-y-6",
	}) {
		// Lead paragraph
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-5/6 mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-5 w-4/5 mb-6 animate-none",
		})
		// H2: Understanding Your Data
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-2/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/4 mb-2 animate-none",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/4 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-6 ml-6 animate-none",
		})
		// H3: Entity Relationships
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/3 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-8 animate-none",
		})
		// H2: Normalization vs. Denormalization
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-3/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-6 animate-none",
		})
		// H3: When to Denormalize
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/3 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/3 mb-2 animate-none",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-4/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-5/6 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/4 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-4/5 mb-4 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-8 animate-none",
		})
		// H2: Indexing Strategies
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-1/3 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/3 mb-2 animate-none",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 mb-4 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-6 animate-none",
		})
		// H3: Composite Indexes
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-6 w-1/4 mb-3 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-5/6 mb-8 animate-none",
		})
		// H2: Future-Proofing Your Design
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-8 w-2/5 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-3/4 mb-4 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-1/3 mb-2 animate-none",
		})
		// List items
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/5 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-2/3 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-1/2 mb-2 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-3 w-3/5 mb-4 ml-6 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-full mb-2 animate-none",
		})
		@skeleton.Skeleton(skeleton.Props{
			Class: "h-4 w-4/5 animate-none",
		})
	}
}

templ Blog010Footer() {
	@card.Footer() {
		<div class="flex items-center gap-2">
			@Blog010SocialButtons()
			@Blog010BookmarkButton()
		</div>
	}
}

templ Blog010SocialButtons() {
	<div class="flex gap-2">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			@icon.Heart(icon.Props{
				Size: 16,
			})
			<span class="ml-2">124</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			@icon.MessageCircle(icon.Props{
				Size: 16,
			})
			<span class="ml-2">23</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			@icon.Share2(icon.Props{
				Size: 16,
			})
		}
	</div>
}

templ Blog010BookmarkButton() {
	@button.Button(button.Props{
		Variant: button.VariantGhost,
	}) {
		@icon.Bookmark(icon.Props{
			Size: 16,
		})
	}
}

templ Blog010Navigation() {
	<div class="flex items-center justify-between mt-8">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			@icon.ChevronLeft(icon.Props{
				Size: 16,
			})
			<span class="ml-2">Previous Article</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<span class="mr-2">Next Article</span>
			@icon.ChevronRight(icon.Props{
				Size: 16,
			})
		}
	</div>
}
```

## Calendar

### calendar_002.templ

**Path:** `calendar/calendar_002.templ`

```templ
package calendar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/datepicker"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

// Calendar002 - Booking Calendar
// A booking form with integrated date picker for appointments or reservations
templ Calendar002() {
	<div class="flex items-center justify-center min-h-svh w-full">
		<div class="w-full max-w-lg">
			@card.Card(card.Props{
				Class: "p-6",
			}) {
				@card.Header(card.HeaderProps{
					Class: "pb-6",
				}) {
					<h3 class="text-lg font-semibold">Book an Appointment</h3>
					<p class="text-sm text-muted-foreground">Select your preferred date and time</p>
				}
				@card.Content(card.ContentProps{
					Class: "pt-0",
				}) {
					@Calendar002BookingForm()
				}
			}
		</div>
	</div>
}

templ Calendar002BookingForm() {
	<form class="space-y-6">
		// Name field
		<div class="space-y-2">
			@label.Label(label.Props{
				For: "name",
			}) {
				Full Name
			}
			@input.Input(input.Props{
				ID:          "name",
				Name:        "name",
				Placeholder: "Enter your full name",
			})
		</div>
		// Email field
		<div class="space-y-2">
			@label.Label(label.Props{
				For: "email",
			}) {
				Email Address
			}
			@input.Input(input.Props{
				ID:          "email",
				Name:        "email",
				Type:        "email",
				Placeholder: "Enter your email",
			})
		</div>
		// Date picker field
		<div class="space-y-2">
			@label.Label(label.Props{
				For: "appointment-date",
			}) {
				Preferred Date
			}
			@datepicker.DatePicker(datepicker.Props{
				ID:          "appointment-date",
				Name:        "appointment_date",
				Placeholder: "Select a date",
			})
		</div>
		// Time selection
		<div class="space-y-2">
			@label.Label(label.Props{
				For: "appointment-time",
			}) {
				Preferred Time
			}
			@selectbox.SelectBox(selectbox.Props{
				ID: "appointment-time",
			}) {
				@selectbox.Trigger(selectbox.TriggerProps{
					Name: "appointment_time",
				}) {
					@selectbox.Value(selectbox.ValueProps{
						Placeholder: "Select a time",
					})
				}
				@selectbox.Content() {
					@selectbox.Group() {
						@selectbox.Label() {
							Morning
						}
						@selectbox.Item(selectbox.ItemProps{Value: "09:00"}) {
							9:00 AM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "09:30"}) {
							9:30 AM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "10:00"}) {
							10:00 AM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "10:30"}) {
							10:30 AM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "11:00"}) {
							11:00 AM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "11:30"}) {
							11:30 AM
						}
					}
					@selectbox.Group() {
						@selectbox.Label() {
							Afternoon
						}
						@selectbox.Item(selectbox.ItemProps{Value: "14:00"}) {
							2:00 PM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "14:30"}) {
							2:30 PM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "15:00"}) {
							3:00 PM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "15:30"}) {
							3:30 PM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "16:00"}) {
							4:00 PM
						}
						@selectbox.Item(selectbox.ItemProps{Value: "16:30"}) {
							4:30 PM
						}
					}
				}
			}
		</div>
		// Additional notes
		<div class="space-y-2">
			@label.Label(label.Props{
				For: "notes",
			}) {
				Additional Notes (Optional)
			}
			<textarea
				id="notes"
				name="notes"
				rows="3"
				placeholder="Any special requirements or notes..."
				class="flex min-h-[60px] w-full rounded-md border border-input bg-transparent px-3 py-2 text-base shadow-xs placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-[3px] focus-visible:ring-ring/20 disabled:cursor-not-allowed disabled:opacity-50 md:text-sm"
			></textarea>
		</div>
		// Submit button
		<div class="pt-4">
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Book Appointment
			}
		</div>
	</form>
}
```

### calendar_003.templ

**Path:** `calendar/calendar_003.templ`

```templ
package calendar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/calendar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"time"
)

// Calendar003 - Event Calendar
// A full calendar component with event display and filtering capabilities
templ Calendar003() {
	<div class="flex items-center justify-center min-h-svh w-full p-4">
		<div class="w-full max-w-4xl">
			@card.Card(card.Props{
				Class: "p-6",
			}) {
				@card.Header(card.HeaderProps{
					Class: "pb-6",
				}) {
					<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
						<div>
							<h3 class="text-lg font-semibold">Event Calendar</h3>
							<p class="text-sm text-muted-foreground">View and manage upcoming events</p>
						</div>
						<div class="flex gap-2">
							@button.Button(button.Props{
								Size:    "sm",
								Variant: "outline",
								Class:   "gap-2",
							}) {
								@icon.Funnel(icon.Props{Size: 16})
								Filter
							}
							@button.Button(button.Props{
								Size:  "sm",
								Class: "gap-2",
							}) {
								@icon.Plus(icon.Props{Size: 16})
								Add Event
							}
						</div>
					</div>
				}
				@card.Content(card.ContentProps{
					Class: "pt-0",
				}) {
					@Calendar003EventCalendar()
				}
			}
		</div>
	</div>
}

templ Calendar003EventCalendar() {
	<div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
		// Main calendar view
		<div class="lg:col-span-2">
			<div class="border rounded-lg p-4">
				// Calendar component
				@calendar.Calendar(calendar.Props{
					Class: "w-full",
					Value: &time.Time{},
				})
			</div>
		</div>
		// Sidebar with event list
		<div class="space-y-4">
			// Event type filter
			<div class="space-y-2">
				@label.Label() {
					Event Types
				}
				<div class="space-y-2">
					@Calendar003EventTypeCheckbox("All Events", "all", true)
					@Calendar003EventTypeCheckbox("Meetings", "meetings", true)
					@Calendar003EventTypeCheckbox("Deadlines", "deadlines", true)
					@Calendar003EventTypeCheckbox("Reminders", "reminders", false)
				</div>
			</div>
			// Upcoming events list
			<div class="space-y-2">
				<h4 class="font-medium">Upcoming Events</h4>
				<div class="space-y-2">
					@Calendar003EventItem("Team Standup", "10:00 AM - 10:30 AM", "meetings")
					@Calendar003EventItem("Project Review", "2:00 PM - 3:00 PM", "meetings")
					@Calendar003EventItem("Q4 Report Due", "5:00 PM", "deadlines")
					@Calendar003EventItem("Client Presentation", "Tomorrow, 11:00 AM", "meetings")
				</div>
			</div>
		</div>
	</div>
}

templ Calendar003EventTypeCheckbox(labelText, value string, checked bool) {
	<div class="flex items-center gap-2">
		@checkbox.Checkbox(checkbox.Props{
			ID:      value + "-checkbox",
			Name:    "event-type",
			Value:   value,
			Checked: checked,
		})
		@label.Label(label.Props{
			For:   value + "-checkbox",
			Class: "text-sm font-normal cursor-pointer",
		}) {
			{ labelText }
		}
	</div>
}

templ Calendar003EventItem(title, time, eventType string) {
	<div class="flex items-start gap-3 p-3 rounded-lg border hover:bg-muted/50 transition-colors cursor-pointer">
		<div class={ "w-2 h-2 rounded-full mt-1.5", templ.KV("bg-blue-500", eventType == "meetings"), templ.KV("bg-red-500", eventType == "deadlines"), templ.KV("bg-yellow-500", eventType == "reminders") }></div>
		<div class="flex-1 min-w-0">
			<p class="font-medium text-sm truncate">{ title }</p>
			<p class="text-xs text-muted-foreground">{ time }</p>
		</div>
	</div>
}
```

### calendar_004.templ

**Path:** `calendar/calendar_004.templ`

```templ
package calendar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/datepicker"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

// Calendar004 - Date Range Selection
// A form with start and end date pickers for selecting date ranges
templ Calendar004() {
	<div class="flex items-center justify-center min-h-svh w-full">
		<div class="w-full max-w-lg">
			@card.Card(card.Props{
				Class: "p-6",
			}) {
				@card.Header(card.HeaderProps{
					Class: "pb-6",
				}) {
					<h3 class="text-lg font-semibold">Select Date Range</h3>
					<p class="text-sm text-muted-foreground">Choose your check-in and check-out dates</p>
				}
				@card.Content(card.ContentProps{
					Class: "pt-0",
				}) {
					@Calendar004DateRangeForm()
				}
			}
		</div>
	</div>
}

templ Calendar004DateRangeForm() {
	<form class="space-y-6">
		// Date range selection row
		<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
			// Start date
			<div class="space-y-2">
				@label.Label(label.Props{
					For: "start-date",
				}) {
					Check-in Date
				}
				@datepicker.DatePicker(datepicker.Props{
					ID:          "start-date",
					Name:        "start_date",
					Placeholder: "Select start date",
				})
			</div>
			// End date
			<div class="space-y-2">
				@label.Label(label.Props{
					For: "end-date",
				}) {
					Check-out Date
				}
				@datepicker.DatePicker(datepicker.Props{
					ID:          "end-date",
					Name:        "end_date",
					Placeholder: "Select end date",
				})
			</div>
		</div>
		// Duration display
		<div class="rounded-lg bg-muted/50 p-4">
			<div class="flex items-center justify-between">
				<div class="flex items-center gap-2">
					@icon.Calendar(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<span class="text-sm font-medium">Duration</span>
				</div>
				<span class="text-sm text-muted-foreground" id="duration-display">
					Select dates to see duration
				</span>
			</div>
		</div>
		// Guest selection
		<div class="space-y-4">
			<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
				// Adults
				<div class="space-y-2">
					@label.Label(label.Props{
						For: "adults",
					}) {
						Adults
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							Name: "adults",
							ID:   "adults",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "2 Adults",
							})
						}
						@selectbox.Content() {
							@selectbox.Group() {
								@selectbox.Item(selectbox.ItemProps{Value: "1"}) {
									1 Adult
								}
								@selectbox.Item(selectbox.ItemProps{Value: "2", Selected: true}) {
									2 Adults
								}
								@selectbox.Item(selectbox.ItemProps{Value: "3"}) {
									3 Adults
								}
								@selectbox.Item(selectbox.ItemProps{Value: "4"}) {
									4 Adults
								}
							}
						}
					}
				</div>
				// Children
				<div class="space-y-2">
					@label.Label(label.Props{
						For: "children",
					}) {
						Children
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							Name: "children",
							ID:   "children",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "No Children",
							})
						}
						@selectbox.Content() {
							@selectbox.Group() {
								@selectbox.Item(selectbox.ItemProps{Value: "0", Selected: true}) {
									No Children
								}
								@selectbox.Item(selectbox.ItemProps{Value: "1"}) {
									1 Child
								}
								@selectbox.Item(selectbox.ItemProps{Value: "2"}) {
									2 Children
								}
								@selectbox.Item(selectbox.ItemProps{Value: "3"}) {
									3 Children
								}
							}
						}
					}
				</div>
			</div>
		</div>
		// Search button
		<div class="pt-4">
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Search Availability
			}
		</div>
	</form>
}
```

## Chat

### chat_001.templ

**Path:** `chat/chat_001.templ`

```templ
package chat

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Chat001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-md">
			@card.Card(card.Props{Class: "overflow-hidden"}) {
				@Chat001Header()
				@Chat001ConversationList()
			}
		</div>
	</section>
}

templ Chat001Header() {
	<div class="border-b px-4 py-3">
		<h2 class="text-lg font-semibold">Messages</h2>
		<div class="mt-3">
			@input.Input(input.Props{
				Placeholder: "Search conversations...",
				Class:       "h-9",
			})
		</div>
	</div>
}

templ Chat001ConversationList() {
	<div class="divide-y">
		@Chat001ConversationItem(
			"/assets/img/avatar-gh-1.png",
			"Sarah Chen",
			"Hey! Are we still on for the meeting tomorrow?",
			"2m",
			true,
			3,
		)
		@Chat001ConversationItem(
			"/assets/img/avatar-gh-2.png",
			"Alex Rivera",
			"Thanks for the quick response on the project",
			"15m",
			false,
			0,
		)
		@Chat001ConversationItem(
			"/assets/img/avatar-gh-3.png",
			"Team Design",
			"Jordan: The new mockups look great!",
			"1h",
			false,
			0,
		)
		@Chat001ConversationItem(
			"/assets/img/avatar-gh-4.png",
			"Emma Wilson",
			"Can you review the latest PR when you get a chance?",
			"3h",
			true,
			1,
		)
		@Chat001ConversationItem(
			"/assets/img/avatar-gh-5.png",
			"Marcus Johnson",
			"Great work on the presentation yesterday",
			"1d",
			false,
			0,
		)
	</div>
}

templ Chat001ConversationItem(avatarUrl, name, lastMessage, time string, isOnline bool, unreadCount int) {
	<div class="flex items-center gap-3 px-4 py-3 hover:bg-muted/50 cursor-pointer transition-colors">
		<div class="relative">
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: avatarUrl,
					Alt: name,
				})
				@avatar.Fallback() {
					U
				}
			}
			if isOnline {
				<span class="absolute bottom-0 right-0 w-3 h-3 bg-green-500 border-2 border-background rounded-full"></span>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-center justify-between mb-1">
				<p class="font-medium text-sm">{ name }</p>
				<span class="text-xs text-muted-foreground">{ time }</span>
			</div>
			<p class="text-sm text-muted-foreground truncate">{ lastMessage }</p>
		</div>
		if unreadCount > 0 {
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "h-5 w-5 p-0 flex items-center justify-center rounded-full",
			}) {
				{ fmt.Sprintf("%d", unreadCount) }
			}
		}
	</div>
}
```

### chat_002.templ

**Path:** `chat/chat_002.templ`

```templ
package chat

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Chat002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@card.Card(card.Props{Class: "overflow-hidden"}) {
				@Chat002Header()
				@Chat002ConversationList()
			}
		</div>
	</section>
}

templ Chat002Header() {
	<div class="border-b px-6 py-4">
		<div class="flex items-center justify-between mb-4">
			<h2 class="text-xl font-semibold">Conversations</h2>
			<div class="flex items-center gap-2">
				@dropdown.Dropdown() {
					@dropdown.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
						}) {
							@icon.ListFilter(icon.Props{
								Size: 18,
							})
						}
					}
					@dropdown.Content(dropdown.ContentProps{
						Class: "w-48",
					}) {
						@dropdown.Item() {
							All Conversations
						}
						@dropdown.Item() {
							Unread Only
						}
						@dropdown.Item() {
							Archived
						}
						@dropdown.Separator()
						@dropdown.Item() {
							Mark All as Read
						}
					}
				}
				@button.Button(button.Props{
					Size: button.SizeIcon,
				}) {
					@icon.Pencil(icon.Props{
						Size: 18,
					})
				}
			</div>
		</div>
		<div class="relative">
			<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
				@icon.Search(icon.Props{
					Size:  16,
					Class: "text-muted-foreground",
				})
			</div>
			@input.Input(input.Props{
				Placeholder: "Search messages or people...",
				Class:       "pl-9",
			})
		</div>
	</div>
}

templ Chat002ConversationList() {
	<div class="divide-y">
		@Chat002ConversationItem(
			"/assets/img/avatar-gh-1.png",
			"Product Team",
			"Emily Davis",
			"We need to finalize the Q4 roadmap by end of week. Can everyone review the latest doc?",
			"Just now",
			true,
			5,
			true,
			[]string{"team", "product"},
		)
		@Chat002ConversationItem(
			"/assets/img/avatar-gh-2.png",
			"David Kim",
			"You",
			"Sounds good, I'll have it ready by tomorrow morning",
			"10m",
			false,
			0,
			false,
			[]string{"work"},
		)
		@Chat002ConversationItem(
			"/assets/img/avatar-gh-3.png",
			"Support Channel",
			"Lisa Wong",
			"Customer ticket #4521 has been resolved. Great teamwork!",
			"45m",
			false,
			2,
			true,
			[]string{"support", "team"},
		)
		@Chat002ConversationItem(
			"/assets/img/avatar-gh-4.png",
			"Rachel Green",
			"Rachel Green",
			"Thanks for your help with the presentation! The client loved it 🎉",
			"2h",
			true,
			0,
			false,
			[]string{"client"},
		)
		@Chat002ConversationItem(
			"/assets/img/avatar-gh-5.png",
			"Dev Standup",
			"Tom Chen",
			"Daily standup in 15 minutes. Here's the Zoom link: zoom.us/j/123456789",
			"3h",
			false,
			0,
			true,
			[]string{"meeting", "dev"},
		)
	</div>
}

templ Chat002ConversationItem(avatarUrl, name, sender, lastMessage, time string, isOnline bool, unreadCount int, isGroup bool, tags []string) {
	<div class="flex items-start gap-4 px-6 py-4 hover:bg-muted/50 cursor-pointer transition-colors">
		<div class="relative">
			@avatar.Avatar(avatar.Props{
				Class: "h-12 w-12",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: avatarUrl,
					Alt: name,
				})
			}
			if isOnline {
				<span class="absolute bottom-0 right-0 w-3.5 h-3.5 bg-green-500 border-2 border-background rounded-full"></span>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-start justify-between mb-1">
				<div>
					<div class="flex items-center gap-2">
						<p class="font-semibold text-sm">{ name }</p>
						if isGroup {
							@icon.Users(icon.Props{
								Size:  14,
								Class: "text-muted-foreground",
							})
						}
					</div>
					<p class="text-xs text-muted-foreground">{ sender }: { lastMessage }</p>
				</div>
				<div class="flex flex-col items-end gap-2">
					<span class="text-xs text-muted-foreground whitespace-nowrap">{ time }</span>
					if unreadCount > 0 {
						@badge.Badge(badge.Props{
							Variant: badge.VariantDefault,
							Class:   "h-5 min-w-5 px-1.5 flex items-center justify-center",
						}) {
							{ fmt.Sprintf("%d", unreadCount) }
						}
					}
				</div>
			</div>
			if len(tags) > 0 {
				<div class="flex flex-wrap gap-1 mt-2">
					for _, tag := range tags {
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
							Class:   "text-xs px-2 py-0 h-5",
						}) {
							{ tag }
						}
					}
				</div>
			}
		</div>
	</div>
}
```

### chat_003.templ

**Path:** `chat/chat_003.templ`

```templ
package chat

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Chat003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@card.Card(card.Props{Class: "overflow-hidden h-[600px] flex flex-col"}) {
				@Chat003Header()
				@Chat003Messages()
				@Chat003Input()
			}
		</div>
	</section>
}

templ Chat003Header() {
	<div class="border-b px-4 py-3 flex items-center justify-between">
		<div class="flex items-center gap-3">
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-5.png",
					Alt: "Sarah Chen",
				})
				@avatar.Fallback() {
					SC
				}
			}
			<div>
				<p class="font-semibold text-sm">Sarah Chen</p>
				<p class="text-xs text-muted-foreground">Active now</p>
			</div>
		</div>
		<div class="flex items-center gap-1">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Phone(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Video(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.EllipsisVertical(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}

templ Chat003Messages() {
	<div class="flex-1 overflow-y-auto px-4 py-4 space-y-4">
		@Chat003Message("Hey! How's the project going?", "10:00 AM", false)
		@Chat003Message("It's going well! Just finished the authentication flow", "10:02 AM", true)
		@Chat003Message("That's great! Can you show me what you've built?", "10:03 AM", false)
		@Chat003Message("Sure! Let me share my screen in a minute", "10:04 AM", true)
		@Chat003Message("I've implemented JWT authentication with refresh tokens", "10:05 AM", true)
		@Chat003Message("Perfect! That's exactly what we need", "10:06 AM", false)
		@Chat003Message("Are we still on for the meeting tomorrow?", "10:08 AM", false)
		@Chat003Message("Yes, 2 PM works for me!", "10:09 AM", true)
		<div class="flex items-center gap-2 text-xs text-muted-foreground">
			<span>Sarah is typing</span>
			<span class="flex gap-1">
				<span class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 0ms;"></span>
				<span class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 150ms;"></span>
				<span class="w-1.5 h-1.5 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 300ms;"></span>
			</span>
		</div>
	</div>
}

templ Chat003Message(text, time string, isSent bool) {
	<div class={ templ.KV("flex", true), templ.KV("justify-end", isSent), templ.KV("justify-start", !isSent) }>
		<div
			class={
				"max-w-[70%] rounded-2xl px-4 py-2",
				templ.KV("bg-primary text-primary-foreground", isSent),
				templ.KV("bg-muted", !isSent),
			}
		>
			<p class="text-sm">{ text }</p>
			<p
				class={
					"text-xs mt-1",
					templ.KV("text-primary-foreground/70", isSent),
					templ.KV("text-muted-foreground", !isSent),
				}
			>{ time }</p>
		</div>
	</div>
}

templ Chat003Input() {
	<div class="border-t px-4 py-3">
		<div class="flex items-center gap-2">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Paperclip(icon.Props{
					Size: 18,
				})
			}
			@input.Input(input.Props{
				Placeholder: "Type a message...",
				Class:       "flex-1",
			})
			@button.Button(button.Props{
				Size: button.SizeIcon,
			}) {
				@icon.Send(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}
```

### chat_004.templ

**Path:** `chat/chat_004.templ`

```templ
package chat

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/popover"
)

templ Chat004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			@card.Card(card.Props{Class: "overflow-hidden h-[700px] flex flex-col"}) {
				@Chat004Header()
				@Chat004Messages()
				@Chat004Input()
			}
		</div>
	</section>
}

templ Chat004Header() {
	<div class="border-b px-6 py-4 flex items-center justify-between">
		<div class="flex items-center gap-3">
			<div class="flex -space-x-2 *:ring-2 *:ring-background">
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "User 1",
					})
					@avatar.Fallback() {
						U1
					}
				}
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-2.png",
						Alt: "User 2",
					})
					@avatar.Fallback() {
						U2
					}
				}
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-3.png",
						Alt: "User 3",
					})
					@avatar.Fallback() {
						U3
					}
				}
			</div>
			<div>
				<p class="font-semibold">Design Team</p>
				<p class="text-xs text-muted-foreground">5 members • 3 online</p>
			</div>
		</div>
		<div class="flex items-center gap-2">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Search(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Info(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}

templ Chat004Messages() {
	<div class="flex-1 overflow-y-auto px-6 py-4 space-y-6">
		@Chat004MessageGroup(
			"/assets/img/avatar-gh-1.png",
			"Emily Davis",
			"10:00 AM",
			[]Chat004_MessageData{
				{Text: "Hey team! I've finished the new design mockups", ID: "msg1"},
				{Text: "Here's the Figma link: figma.com/file/abc123", ID: "msg2"},
			},
		)
		@Chat004MessageWithReactions(
			"/assets/img/avatar-gh-2.png",
			"Alex Rivera",
			"10:05 AM",
			"These look amazing! Great work on the color scheme 🎨",
			"msg3",
			[]string{"👍", "🔥", "❤️"},
			[]int{3, 2, 1},
		)
		@Chat004Reply(
			"/assets/img/avatar-gh-3.png",
			"Jordan Lee",
			"10:07 AM",
			"I especially love the new navigation design!",
			"Emily Davis: These look amazing!",
		)
		@Chat004MessageGroup(
			"/assets/img/avatar-gh-4.png",
			"Sam Wilson",
			"10:15 AM",
			[]Chat004_MessageData{
				{Text: "Quick question about the mobile version", ID: "msg4"},
				{Text: "Should we keep the bottom navigation or switch to a hamburger menu?", ID: "msg5"},
			},
		)
		@Chat004MessageWithReactions(
			"/assets/img/avatar-gh-1.png",
			"Emily Davis",
			"10:18 AM",
			"I think bottom navigation works better for our use case. It's more accessible on mobile",
			"msg6",
			[]string{"💯"},
			[]int{2},
		)
	</div>
}

type Chat004_MessageData struct {
	Text string
	ID   string
}

templ Chat004MessageGroup(avatarUrl, name, time string, messages []Chat004_MessageData) {
	<div class="flex gap-3">
		@avatar.Avatar(avatar.Props{
			Class: "h-9 w-9",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: avatarUrl,
				Alt: name,
			})
		}
		<div class="flex-1">
			<div class="flex items-baseline gap-2 mb-1">
				<span class="font-semibold text-sm">{ name }</span>
				<span class="text-xs text-muted-foreground">{ time }</span>
			</div>
			<div class="space-y-2">
				for _, msg := range messages {
					<div class="group relative">
						<div class="bg-muted rounded-2xl px-4 py-2 inline-block max-w-[80%]">
							<p class="text-sm">{ msg.Text }</p>
						</div>
						@Chat004MessageActions(msg.ID)
					</div>
				}
			</div>
		</div>
	</div>
}

templ Chat004MessageWithReactions(avatarUrl, name, time, text, msgID string, reactions []string, counts []int) {
	<div class="flex gap-3">
		@avatar.Avatar(avatar.Props{
			Class: "h-9 w-9",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: avatarUrl,
				Alt: name,
			})
		}
		<div class="flex-1">
			<div class="flex items-baseline gap-2 mb-1">
				<span class="font-semibold text-sm">{ name }</span>
				<span class="text-xs text-muted-foreground">{ time }</span>
			</div>
			<div class="group relative">
				<div class="bg-muted rounded-2xl px-4 py-2 inline-block max-w-[80%]">
					<p class="text-sm">{ text }</p>
				</div>
				@Chat004MessageActions(msgID)
				<div class="flex gap-1 mt-2">
					for i, reaction := range reactions {
						<button class="flex items-center gap-1 px-2 py-1 rounded-full bg-muted hover:bg-muted/80 transition-colors">
							<span class="text-sm">{ reaction }</span>
							<span class="text-xs text-muted-foreground">{ fmt.Sprintf("%d", counts[i]) }</span>
						</button>
					}
					@popover.Trigger(popover.TriggerProps{
						For: "chat-004-popover",
					}) {
						<button class="px-2 py-1 rounded-full bg-muted hover:bg-muted/80 transition-colors">
							<span class="text-sm">+</span>
						</button>
					}
					@popover.Content(popover.ContentProps{
						ID:    "chat-004-popover",
						Class: "w-64 p-2",
					}) {
						<div class="flex flex-wrap">
							{ "👍 👎 ❤️ 😂 😮 😢 😡 🎉 🔥 👏 💯 🤔 👀 🙏 💪 🚀 ✅ ❌ 💡 📌" }
						</div>
					}
				</div>
			</div>
		</div>
	</div>
}

templ Chat004Reply(avatarUrl, name, time, text, replyTo string) {
	<div class="flex gap-3 pl-12">
		@avatar.Avatar(avatar.Props{
			Class: "h-9 w-9",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: avatarUrl,
				Alt: name,
			})
		}
		<div class="flex-1">
			<div class="flex items-baseline gap-2 mb-1">
				<span class="font-semibold text-sm">{ name }</span>
				<span class="text-xs text-muted-foreground">{ time }</span>
			</div>
			<div class="bg-muted rounded-2xl px-4 py-2 inline-block max-w-[80%]">
				<div class="text-xs text-muted-foreground mb-1 pb-1 border-b border-border/50">
					{ replyTo }
				</div>
				<p class="text-sm">{ text }</p>
			</div>
		</div>
	</div>
}

templ Chat004MessageActions(msgID string) {
	<div class="absolute -top-4 right-0 opacity-0 group-hover:opacity-100 transition-opacity">
		<div class="flex items-center gap-1 bg-background border rounded-lg p-1">
			<button class="p-1 hover:bg-muted rounded transition-colors">
				<span class="text-xs">😊</span>
			</button>
			<button class="p-1 hover:bg-muted rounded transition-colors">
				@icon.Reply(icon.Props{
					Size:  14,
					Class: "text-muted-foreground",
				})
			</button>
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					<button class="p-1 hover:bg-muted rounded transition-colors">
						@icon.Ellipsis(icon.Props{
							Size:  14,
							Class: "text-muted-foreground",
						})
					</button>
				}
				@dropdown.Content(dropdown.ContentProps{
					Class: "w-32",
				}) {
					@dropdown.Item() {
						Edit
					}
					@dropdown.Item() {
						Copy
					}
					@dropdown.Item() {
						Forward
					}
					@dropdown.Separator()
					@dropdown.Item() {
						Delete
					}
				}
			}
		</div>
	</div>
}

templ Chat004Input() {
	<div class="border-t px-6 py-4">
		<div class="flex items-end gap-2">
			<div class="flex gap-1">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Paperclip(icon.Props{
						Size: 18,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Image(icon.Props{
						Size: 18,
					})
				}
			</div>
			<div class="flex-1">
				@input.Input(input.Props{
					Placeholder: "Type a message...",
				})
			</div>
			<div class="flex gap-1">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Smile(icon.Props{
						Size: 18,
					})
				}
				@button.Button(button.Props{
					Size: button.SizeIcon,
				}) {
					@icon.Send(icon.Props{
						Size: 18,
					})
				}
			</div>
		</div>
	</div>
}
```

### chat_007.templ

**Path:** `chat/chat_007.templ`

```templ
package chat

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

templ Chat007() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
			@card.Card(card.Props{Class: "w-full max-w-6xl h-[700px] overflow-hidden"}) {
				<div class="flex h-full">
					<!-- Desktop Sidebar -->
					<div class="hidden md:block">
						@Chat007Sidebar()
					</div>
					@Chat007ChatArea()
				</div>
			}
		</section>
		<!-- Mobile Drawer -->
		@sheet.Content(sheet.ContentProps{
			Class:           "p-4",
			HideCloseButton: true,
		}) {
			@Chat007SidebarContent()
		}
	}
}

templ Chat007Sidebar() {
	<div class="w-80 border-r flex flex-col bg-muted/20">
		@Chat007SidebarContent()
	</div>
}

templ Chat007SidebarContent() {
	<div class="flex flex-col h-full">
		@Chat007SidebarHeader()
		@Chat007SidebarTabs()
	</div>
}

templ Chat007SidebarHeader() {
	<div class="p-4 border-b">
		<div class="flex items-center justify-between mb-4">
			<h1 class="text-xl font-semibold">Chats</h1>
			<div class="flex items-center gap-1">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Search(icon.Props{
						Size: 18,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Pencil(icon.Props{
						Size: 18,
					})
				}
				<!-- Mobile Close Button -->
				<div class="md:hidden">
					@sheet.Close(sheet.CloseProps{
						Class: "h-9 w-9 p-0",
					}) {
						@icon.X(icon.Props{
							Size: 18,
						})
					}
				</div>
			</div>
		</div>
		@input.Input(input.Props{
			Placeholder: "Search or start new chat",
			Class:       "h-9",
		})
	</div>
}

templ Chat007SidebarTabs() {
	@tabs.Tabs(tabs.Props{
		Class: "flex-1 flex flex-col",
	}) {
		@tabs.List(tabs.ListProps{
			Class: "grid w-full grid-cols-3 h-10",
		}) {
			@tabs.Trigger(tabs.TriggerProps{
				Value:    "all",
				Class:    "text-xs",
				IsActive: true,
			}) {
				All
			}
			@tabs.Trigger(tabs.TriggerProps{
				Value: "unread",
				Class: "text-xs",
			}) {
				Unread
			}
			@tabs.Trigger(tabs.TriggerProps{
				Value: "groups",
				Class: "text-xs",
			}) {
				Groups
			}
		}
		@tabs.Content(tabs.ContentProps{
			Value:    "all",
			Class:    "flex-1 overflow-y-auto m-0 p-0",
			IsActive: true,
		}) {
			<div class="divide-y">
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-1.png",
					"Sarah Chen",
					"Typing...",
					"now",
					true,
					true,
					0,
				)
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-2.png",
					"Product Team",
					"Emma: Ship it! 🚀",
					"2m",
					false,
					true,
					3,
				)
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-3.png",
					"Alex Rivera",
					"Thanks for the help!",
					"1h",
					true,
					false,
					0,
				)
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-4.png",
					"Design Review",
					"You: Looks good to me",
					"3h",
					false,
					true,
					0,
				)
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-5.png",
					"Marcus Johnson",
					"See you tomorrow",
					"1d",
					true,
					false,
					0,
				)
			</div>
		}
		@tabs.Content(tabs.ContentProps{
			Value: "unread",
			Class: "flex-1 overflow-y-auto m-0 p-0",
		}) {
			<div class="divide-y">
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-1.png",
					"Product Team",
					"Emma: Ship it! 🚀",
					"2m",
					false,
					true,
					3,
				)
			</div>
		}
		@tabs.Content(tabs.ContentProps{
			Value: "groups",
			Class: "flex-1 overflow-y-auto m-0 p-0",
		}) {
			<div class="divide-y">
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-2.png",
					"Product Team",
					"Emma: Ship it! 🚀",
					"2m",
					false,
					true,
					3,
				)
				@Chat007ConversationItem(
					"/assets/img/avatar-gh-3.png",
					"Design Review",
					"You: Looks good to me",
					"3h",
					false,
					true,
					0,
				)
			</div>
		}
	}
}

templ Chat007ConversationItem(avatarUrl, name, lastMessage, time string, isOnline, isGroup bool, unreadCount int) {
	<div class="flex items-center gap-3 px-4 py-3 hover:bg-muted/50 cursor-pointer transition-colors relative">
		<div class="relative">
			@avatar.Avatar(avatar.Props{
				Class: "h-12 w-12",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: avatarUrl,
					Alt: name,
				})
				@avatar.Fallback() {
					U
				}
			}
			if isOnline && !isGroup {
				<span class="absolute bottom-0 right-0 w-3 h-3 bg-green-500 border-2 border-background rounded-full"></span>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-center justify-between mb-0.5">
				<p class="font-medium text-sm truncate">{ name }</p>
				<span
					class={
						"text-xs",
						templ.KV("text-primary", unreadCount > 0),
						templ.KV("text-muted-foreground", unreadCount == 0),
					}
				>{ time }</span>
			</div>
			<div class="flex items-center justify-between">
				<p
					class={
						"text-sm truncate flex-1",
						templ.KV("text-foreground", unreadCount > 0),
						templ.KV("text-muted-foreground", unreadCount == 0),
					}
				>
					if lastMessage == "Typing..." {
						<span class="text-primary italic">{ lastMessage }</span>
					} else {
						{ lastMessage }
					}
				</p>
				if unreadCount > 0 {
					@badge.Badge(badge.Props{
						Variant: badge.VariantDefault,
						Class:   "h-5 min-w-5 px-1.5 ml-2",
					}) {
						{ fmt.Sprintf("%d", unreadCount) }
					}
				}
			</div>
		</div>
	</div>
}

templ Chat007ChatArea() {
	<div class="flex-1 flex flex-col">
		@Chat007ChatHeader()
		@Chat007ChatMessages()
		@Chat007ChatInput()
	</div>
}

templ Chat007ChatHeader() {
	<div class="border-b px-4 md:px-6 py-4 flex items-center justify-between">
		<div class="flex items-center gap-3">
			<!-- Mobile Menu Button -->
			@sheet.Trigger(sheet.TriggerProps{
				Class: "md:hidden",
			}) {
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Menu(icon.Props{
						Size: 20,
					})
				}
			}
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-1.png",
					Alt: "Sarah Chen",
				})
				@avatar.Fallback() {
					SC
				}
			}
			<div>
				<p class="font-semibold">Sarah Chen</p>
				<p class="text-xs text-muted-foreground">Active now</p>
			</div>
		</div>
		<div class="flex items-center gap-1">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Phone(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Video(icon.Props{
					Size: 18,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Info(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}

templ Chat007ChatMessages() {
	<div class="flex-1 overflow-y-auto px-4 md:px-6 py-4 space-y-4">
		<div class="flex justify-center">
			<span class="text-xs text-muted-foreground bg-muted px-3 py-1 rounded-full">Today</span>
		</div>
		@Chat007Message("Hey! How's it going?", "9:00 AM", false, true)
		@Chat007Message("Hi Sarah! I'm doing well, thanks. Working on the new feature", "9:02 AM", true, false)
		@Chat007Message("That's great! Which feature are you working on?", "9:03 AM", false, false)
		@Chat007Message("The real-time collaboration feature. It's coming along nicely!", "9:05 AM", true, false)
		@Chat007Message("Awesome! Can't wait to see it in action", "9:06 AM", false, false)
		@Chat007Message("I'll send you a demo link soon", "9:07 AM", true, true)
		<div class="flex items-center gap-2 text-xs text-muted-foreground">
			<span>Sarah is typing</span>
			<span class="flex gap-0.5">
				<span class="w-1 h-1 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 0ms;"></span>
				<span class="w-1 h-1 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 150ms;"></span>
				<span class="w-1 h-1 bg-muted-foreground rounded-full animate-bounce" style="animation-delay: 300ms;"></span>
			</span>
		</div>
	</div>
}

templ Chat007Message(text, time string, isSent, isRead bool) {
	<div class={ templ.KV("flex", true), templ.KV("justify-end", isSent), templ.KV("justify-start", !isSent) }>
		<div class="max-w-[70%] space-y-1">
			<div
				class={
					"rounded-2xl px-4 py-2",
					templ.KV("bg-primary text-primary-foreground", isSent),
					templ.KV("bg-muted", !isSent),
				}
			>
				<p class="text-sm">{ text }</p>
			</div>
			<div
				class={
					"flex items-center gap-1 text-xs",
					templ.KV("justify-end", isSent),
					templ.KV("justify-start", !isSent),
				}
			>
				<span class="text-muted-foreground">{ time }</span>
				if isSent && isRead {
					@icon.CheckCheck(icon.Props{
						Size:  14,
						Class: "text-primary",
					})
				} else if isSent {
					@icon.Check(icon.Props{
						Size:  14,
						Class: "text-muted-foreground",
					})
				}
			</div>
		</div>
	</div>
}

templ Chat007ChatInput() {
	<div class="border-t px-4 md:px-6 py-4">
		<div class="flex items-center gap-2">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Smile(icon.Props{
					Size: 20,
				})
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Paperclip(icon.Props{
					Size: 20,
				})
			}
			@input.Input(input.Props{
				Placeholder: "Type a message",
				Class:       "flex-1",
			})
			@button.Button(button.Props{
				Size: button.SizeIcon,
			}) {
				@icon.Send(icon.Props{
					Size: 18,
				})
			}
		</div>
	</div>
}
```

### chat_008.templ

**Path:** `chat/chat_008.templ`

```templ
package chat

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Chat008() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@Chat008SimpleInput()
		</div>
	</section>
}

templ Chat008SimpleInput() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4"}) {
			<h3 class="text-sm font-medium mb-4">Simple Chat Input</h3>
			<div class="flex items-center gap-2">
				<input
					type="text"
					placeholder="Type a message..."
					class="flex-1 px-4 py-2 bg-background border rounded-full text-sm focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2"
				/>
				@button.Button(button.Props{
					Size:  button.SizeIcon,
					Class: "rounded-full",
				}) {
					@icon.Send(icon.Props{
						Size: 18,
					})
				}
			</div>
		}
	}
}
```

### chat_009.templ

**Path:** `chat/chat_009.templ`

```templ
package chat

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Chat009() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@Chat009WithActions()
		</div>
	</section>
}

templ Chat009WithActions() {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4"}) {
			<h3 class="text-sm font-medium mb-4">Chat Input with Actions</h3>
			<div class="flex items-center gap-2">
				<div class="flex gap-1">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.Plus(icon.Props{
							Size: 20,
						})
					}
				</div>
				@input.Input(input.Props{
					Class:       "rounded-full",
					Placeholder: "Type a message...",
				})
				<div class="flex gap-1">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "hidden sm:flex",
					}) {
						@icon.Paperclip(icon.Props{
							Size: 18,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "hidden sm:flex",
					}) {
						@icon.Mic(icon.Props{
							Size: 18,
						})
					}
					@button.Button(button.Props{
						Size:  button.SizeIcon,
						Class: "rounded-full",
					}) {
						@icon.Send(icon.Props{
							Size: 18,
						})
					}
				</div>
			</div>
			<div class="flex items-center gap-4 mt-3 text-xs text-muted-foreground">
				<button class="hover:text-foreground transition-colors">
					@icon.Image(icon.Props{
						Size:  16,
						Class: "inline mr-1",
					})
					Photo
				</button>
				<button class="hover:text-foreground transition-colors">
					@icon.Video(icon.Props{
						Size:  16,
						Class: "inline mr-1",
					})
					Video
				</button>
				<button class="hover:text-foreground transition-colors">
					@icon.FileText(icon.Props{
						Size:  16,
						Class: "inline mr-1",
					})
					Document
				</button>
				<button class="hover:text-foreground transition-colors">
					@icon.MapPin(icon.Props{
						Size:  16,
						Class: "inline mr-1",
					})
					Location
				</button>
			</div>
		}
	}
}
```

### chat_010.templ

**Path:** `chat/chat_010.templ`

```templ
package chat

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Chat010() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@Chat010RichInput()
		</div>
	</section>
}

templ Chat010RichInput() {
	@card.Card(card.Props{
		Class: "p-2",
	}) {
		@textarea.Textarea(textarea.Props{
			Placeholder: "Type a message... (Shift+Enter for new line)",
			Class:       "min-h-[80px] resize-none focus:ring-0",
			Rows:        3,
		})
		<div class="flex flex-wrap items-center justify-between mt-3">
			<div class="flex items-center gap-1">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Bold(icon.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Italic(icon.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Link(icon.Props{
						Size: 16,
					})
				}
				<div class="w-px h-4 bg-border mx-1"></div>
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Paperclip(icon.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.Smile(icon.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@icon.AtSign(icon.Props{
						Size: 16,
					})
				}
			</div>
			<div class="flex items-center gap-2">
				<span class="text-xs text-muted-foreground">0/500</span>
				@button.Button(button.Props{
					Size: button.SizeSm,
				}) {
					Send
					@icon.Send(icon.Props{
						Size:  14,
						Class: "ml-1",
					})
				}
			</div>
		</div>
	}
}
```

## Comparison

### comparison_001.templ

**Path:** `comparison/comparison_001.templ`

```templ
package comparison

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Comparison001() {
	@Comparison001Script()
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Comparison001Header()
			@Comparison001Slider()
			@Comparison001Features()
		</div>
	</section>
}

templ Comparison001Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			See the Transformation
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Drag the slider to compare before and after results. Experience the dramatic improvements firsthand.
		</p>
	</div>
}

templ Comparison001Slider() {
	@card.Card(card.Props{
		Class: "max-w-4xl mx-auto mb-12",
	}) {
		<div id="comparison001-container" class="relative rounded-lg overflow-hidden cursor-col-resize">
			<div class="relative h-[400px] md:h-[500px] overflow-hidden">
				<!-- Sharp Image (Left) -->
				<img
					id="comparison001-before"
					src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1200&h=800&fit=crop"
					alt="Before"
					class="absolute inset-0 w-full h-full object-cover"
					style="clip-path: inset(0 50% 0 0);"
				/>
				<!-- Blurred Image (Right) -->
				<img
					id="comparison001-after"
					src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1200&h=800&fit=crop"
					alt="After"
					class="absolute inset-0 w-full h-full object-cover blur-md grayscale"
					style="clip-path: inset(0 0 0 50%);"
				/>
				<!-- Slider Handle -->
				<div
					id="comparison001-handle"
					class="absolute top-0 h-full flex flex-col justify-center items-center pointer-events-none"
					style="left: calc(50% - 25px); width: 50px;"
				>
					<div class="w-0.5 flex-grow bg-white"></div>
					<div class="w-12 h-12 md:w-10 md:h-10 bg-primary border-2 border-white rounded-full flex items-center justify-center shadow-lg pointer-events-auto cursor-col-resize">
						@icon.MoveHorizontal(icon.Props{
							Size:  20,
							Class: "text-primary-foreground",
						})
					</div>
					<div class="w-0.5 flex-grow bg-white"></div>
				</div>
				<!-- Labels -->
				<div class="absolute top-4 left-4 z-10">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
					}) {
						Sharp
					}
				</div>
				<div class="absolute top-4 right-4 z-10">
					@badge.Badge() {
						Blurred
					}
				</div>
			</div>
		</div>
	}
}

templ Comparison001Features() {
	<div class="max-w-4xl mx-auto">
		<div class="grid md:grid-cols-3 gap-6">
			@Comparison001Feature("Performance", "2x Faster", "Page load time reduced by 50%")
			@Comparison001Feature("Conversion", "+35%", "Higher user engagement rate")
			@Comparison001Feature("Experience", "4.9/5", "User satisfaction score")
		</div>
	</div>
}

templ Comparison001Feature(title string, value string, description string) {
	<div class="text-center">
		<h3 class="font-semibold text-lg mb-1">{ title }</h3>
		<p class="text-2xl font-bold text-primary mb-2">{ value }</p>
		<p class="text-sm text-muted-foreground">{ description }</p>
	</div>
}

// JavaScript logic for the comparison slider
templ Comparison001Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		(function() {
			function init() {
				const container = document.getElementById('comparison001-container');
				const handle = document.getElementById('comparison001-handle');
				const beforeImg = document.getElementById('comparison001-before');
				const afterImg = document.getElementById('comparison001-after');
				
				if (!container || !handle || !beforeImg || !afterImg) return;
				
				let isDragging = false;
				const handleWidth = 50;
				
				function updatePosition(e) {
					const rect = container.getBoundingClientRect();
					const x = (e.clientX || e.touches?.[0]?.clientX) - rect.left;
					
					// Constrain mouse position
					let mouseX = Math.max(0, Math.min(x, rect.width));
					
					// Calculate percentage
					const percent = (mouseX / rect.width) * 100;
					
					// Update clip paths - before (left) shows up to mouse, after (right) shows from mouse
					beforeImg.style.clipPath = 'inset(0 ' + (100 - percent) + '% 0 0)';
					afterImg.style.clipPath = 'inset(0 0 0 ' + percent + '%)';
					
					// Update handle position
					handle.style.left = 'calc(' + percent + '% - ' + (handleWidth/2) + 'px)';
				}
				
				// Mouse events
				container.addEventListener('mousedown', function(e) {
					isDragging = true;
					updatePosition(e);
					e.preventDefault();
				});
				
				document.addEventListener('mousemove', function(e) {
					if (!isDragging) return;
					updatePosition(e);
				});
				
				document.addEventListener('mouseup', function() {
					isDragging = false;
				});
				
				// Touch events  
				container.addEventListener('touchstart', function(e) {
					isDragging = true;
					updatePosition(e);
					e.preventDefault();
				});
				
				document.addEventListener('touchmove', function(e) {
					if (!isDragging) return;
					updatePosition(e);
					e.preventDefault();
				});
				
				document.addEventListener('touchend', function() {
					isDragging = false;
				});
			}
			
			// Initialize
			if (document.readyState === 'loading') {
				document.addEventListener('DOMContentLoaded', init);
			} else {
				init();
			}
		})();
	</script>
}
```

### comparison_002.templ

**Path:** `comparison/comparison_002.templ`

```templ
package comparison

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Comparison002() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Comparison002Header()
			@Comparison002Metrics()
		</div>
	</section>
}

templ Comparison002Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Performance Improvements
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			See how our optimizations transformed the application performance across key metrics.
		</p>
	</div>
}

templ Comparison002Metrics() {
	@card.Card(card.Props{
		Class: "max-w-4xl mx-auto",
	}) {
		<div class="divide-y">
			@Comparison002MetricRow(
				"Page Load Time",
				"3.2s",
				"0.8s",
				75,
				"faster",
				icon.Zap,
			)
			@Comparison002MetricRow(
				"Time to Interactive",
				"5.1s",
				"1.3s",
				74,
				"reduction",
				icon.Activity,
			)
			@Comparison002MetricRow(
				"Bundle Size",
				"2.4 MB",
				"680 KB",
				72,
				"smaller",
				icon.Package,
			)
			@Comparison002MetricRow(
				"API Response Time",
				"450ms",
				"90ms",
				80,
				"faster",
				icon.Gauge,
			)
			@Comparison002MetricRow(
				"Memory Usage",
				"512 MB",
				"128 MB",
				75,
				"reduction",
				icon.Cpu,
			)
			@Comparison002MetricRow(
				"First Contentful Paint",
				"2.8s",
				"0.6s",
				78,
				"improvement",
				icon.Eye,
			)
		</div>
		<div class="p-4 md:p-6 bg-muted/50">
			<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
				<div>
					<p class="text-xs md:text-sm text-muted-foreground">Overall Performance Score</p>
					<p class="text-xl md:text-2xl font-bold">76% Improvement</p>
				</div>
				@badge.Badge(badge.Props{
					Variant: badge.VariantDefault,
					Class:   "w-fit",
				}) {
					Optimized
				}
			</div>
		</div>
	}
}

templ Comparison002MetricRow(
	metric string,
	before string,
	after string,
	improvement int,
	improvementType string,
	iconFunc func(...icon.Props) templ.Component,
) {
	<div class="p-4 md:p-6">
		<div class="flex flex-col sm:flex-row sm:items-center gap-3 sm:gap-4 mb-4">
			<div class="flex items-center gap-3 flex-1">
				<div class="p-1.5 md:p-2 bg-muted rounded-lg flex-shrink-0">
					@iconFunc(icon.Props{
						Size:  16,
						Class: "text-foreground md:w-5 md:h-5",
					})
				</div>
				<div class="flex-1 min-w-0">
					<h3 class="font-semibold text-sm md:text-base">{ metric }</h3>
					<p class="text-xs md:text-sm text-muted-foreground">
						if improvementType == "faster" {
							Response time
						} else if improvementType == "smaller" {
							Resource size
						} else {
							Performance metric
						}
					</p>
				</div>
			</div>
			<div class="flex items-center gap-1.5 text-green-600 dark:text-green-500">
				@icon.TrendingDown(icon.Props{
					Size: 14,
				})
				<span class="font-semibold text-sm">{ fmt.Sprintf("%d%%", improvement) }</span>
				<span class="text-xs hidden sm:inline">{ improvementType }</span>
			</div>
		</div>
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-3 md:gap-4">
			<div class="space-y-1.5">
				<div class="flex items-center justify-between mb-1">
					<span class="text-xs md:text-sm text-muted-foreground">Before</span>
					<span class="font-medium text-xs md:text-sm">{ before }</span>
				</div>
				@progress.Progress(progress.Props{
					Value:   85,
					Max:     100,
					Size:    progress.SizeSm,
					Variant: progress.VariantDanger,
				})
			</div>
			<div class="space-y-1.5">
				<div class="flex items-center justify-between mb-1">
					<span class="text-xs md:text-sm text-muted-foreground">After</span>
					<span class="font-medium text-xs md:text-sm text-foreground">{ after }</span>
				</div>
				@progress.Progress(progress.Props{
					Value:   100 - improvement,
					Max:     100,
					Size:    progress.SizeSm,
					Variant: progress.VariantSuccess,
				})
			</div>
		</div>
	</div>
}
```

### comparison_003.templ

**Path:** `comparison/comparison_003.templ`

```templ
package comparison

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Comparison003() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Comparison003Header()
			@Comparison003Cards()
		</div>
	</section>
}

templ Comparison003Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Performance Comparison
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Compare key metrics side by side to understand improvements and make data-driven decisions.
		</p>
	</div>
}

templ Comparison003Cards() {
	<div class="max-w-6xl mx-auto mb-12 space-y-6">
		<div class="grid md:grid-cols-2 gap-6">
			@card.Card(card.Props{
				Class: "relative",
			}) {
				@card.Header() {
					@card.Title() {
						Before Optimization
					}
					@card.Description() {
						Original baseline metrics
					}
				}
				@card.Content() {
					@Comparison003Metrics(
						[]Comparison003Metric{
							{Label: "Load Time", Value: "3.2s", IconFunc: icon.Clock},
							{Label: "Page Size", Value: "2.8 MB", IconFunc: icon.HardDrive},
							{Label: "Performance Score", Value: "68", IconFunc: icon.Gauge},
							{Label: "Conversion Rate", Value: "2.3%", IconFunc: icon.TrendingUp},
						},
						"baseline",
					)
				}
			}
			@card.Card(card.Props{
				Class: "relative border-primary/30 bg-primary/5",
			}) {
				@card.Header() {
					<div class="flex items-center justify-between">
						<div>
							@card.Title() {
								After Optimization
							}
							@card.Description() {
								Improved performance metrics
							}
						</div>
						@badge.Badge() {
							Best
						}
					</div>
				}
				@card.Content() {
					@Comparison003Metrics(
						[]Comparison003Metric{
							{Label: "Load Time", Value: "0.8s", Change: "-75%", IconFunc: icon.Clock},
							{Label: "Page Size", Value: "680 KB", Change: "-76%", IconFunc: icon.HardDrive},
							{Label: "Performance Score", Value: "95", Change: "+40%", IconFunc: icon.Gauge},
							{Label: "Conversion Rate", Value: "5.8%", Change: "+152%", IconFunc: icon.TrendingUp},
						},
						"improved",
					)
				}
			}
		</div>
		<div class="max-w-2xl mx-auto">
			@card.Card(card.Props{
				Class: "relative text-center",
			}) {
				@card.Content() {
					<div class="py-4">
						<div class="inline-flex p-3 bg-primary/10 rounded-full mb-4">
							@icon.Trophy(icon.Props{
								Size:  32,
								Class: "text-primary",
							})
						</div>
						<h3 class="text-2xl font-bold mb-3">After Optimization Wins!</h3>
						<p class="text-muted-foreground mb-6 max-w-xl mx-auto">
							The optimized version shows significant improvements across all key metrics, 
							with a 152% increase in conversion rate and 75% faster load times.
						</p>
						<div class="flex flex-col sm:flex-row gap-3 justify-center">
							@button.Button() {
								Deploy Optimized Version
							}
							@button.Button(button.Props{
								Variant: button.VariantOutline,
							}) {
								View Detailed Report
							}
						</div>
					</div>
				}
			}
		</div>
	</div>
}

type Comparison003Metric struct {
	Label    string
	Value    string
	Change   string
	IconFunc func(...icon.Props) templ.Component
}

templ Comparison003Metrics(metrics []Comparison003Metric, variant string) {
	<div class="space-y-4">
		for _, metric := range metrics {
			<div class="flex items-center justify-between">
				<div class="flex items-center gap-3">
					<div class="p-2 rounded-lg bg-muted">
						@metric.IconFunc(icon.Props{
							Size: 16,
						})
					</div>
					<span class="text-sm font-medium">{ metric.Label }</span>
				</div>
				<div class="flex items-center gap-2">
					<span class="font-semibold">{ metric.Value }</span>
					if metric.Change != "" {
						if metric.Change[0] == '+' {
							<span class="text-xs font-medium text-green-600 dark:text-green-400">
								{ metric.Change }
							</span>
						} else {
							<span class="text-xs font-medium text-blue-600 dark:text-blue-400">
								{ metric.Change }
							</span>
						}
					}
				</div>
			</div>
		}
	</div>
}
```

## Contact

### contact_001.templ

**Path:** `contact/contact_001.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Contact001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-md">
			@Contact001Header()
			@Contact001Form()
		</div>
	</section>
}

templ Contact001Header() {
	<div class="text-center mb-8">
		<h2 class="text-3xl font-bold tracking-tight mb-2">Get in <span class="text-primary">Touch</span></h2>
		<p class="text-muted-foreground">
			We'd love to hear from you. Send us a message and we'll respond as soon as possible.
		</p>
	</div>
}

templ Contact001Form() {
	<form class="space-y-4">
		@Contact001NameField()
		@Contact001EmailField()
		@Contact001MessageField()
		@Contact001SubmitButton()
	</form>
}

templ Contact001NameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact-name"}) {
			Name
		}
		@input.Input(input.Props{
			ID:          "contact-name",
			Name:        "name",
			Placeholder: "John Doe",
		})
	</div>
}

templ Contact001EmailField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact-email"}) {
			Email
		}
		@input.Input(input.Props{
			ID:          "contact-email",
			Name:        "email",
			Type:        input.TypeEmail,
			Placeholder: "john@example.com",
		})
	</div>
}

templ Contact001MessageField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact-message"}) {
			Message
		}
		@textarea.Textarea(textarea.Props{
			ID:          "contact-message",
			Name:        "message",
			Placeholder: "Your message here...",
			Rows:        5,
		})
	</div>
}

templ Contact001SubmitButton() {
	<div class="pt-2">
		@button.Button(button.Props{
			Class: "w-full",
		}) {
			Send Message
		}
	</div>
}
```

### contact_002.templ

**Path:** `contact/contact_002.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Contact002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-6xl">
			<div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
				@Contact002Info()
				@Contact002Form()
			</div>
		</div>
	</section>
}

templ Contact002Info() {
	<div class="space-y-8">
		@Contact002Header()
		@Contact002ContactDetails()
		@Contact002SocialLinks()
	</div>
}

templ Contact002Header() {
	<div>
		<h2 class="text-3xl font-bold tracking-tight mb-4">Let's <span class="text-primary">talk</span></h2>
		<p class="text-muted-foreground text-lg">
			We're here to help and answer any question you might have. We look forward to hearing from you.
		</p>
	</div>
}

templ Contact002ContactDetails() {
	<div class="space-y-4">
		@Contact002ContactItem(icon.Mail(icon.Props{Size: 20}), "Email", "hello@example.com")
		@Contact002ContactItem(icon.Phone(icon.Props{Size: 20}), "Phone", "+1 (555) 123-4567")
		@Contact002ContactItem(icon.MapPin(icon.Props{Size: 20}), "Office", "123 Business St, Suite 100, New York, NY 10001")
	</div>
}

templ Contact002ContactItem(iconEl templ.Component, label, value string) {
	<div class="flex items-start gap-3">
		<div class="p-2 bg-primary/10 rounded-lg text-primary">
			@iconEl
		</div>
		<div>
			<p class="text-sm text-muted-foreground">{ label }</p>
			<p class="font-medium">{ value }</p>
		</div>
	</div>
}

templ Contact002SocialLinks() {
	<div>
		<p class="text-sm text-muted-foreground mb-4">Follow us</p>
		<div class="flex gap-2">
			@Contact002SocialLink(icon.Twitter(icon.Props{Size: 20}))
			@Contact002SocialLink(icon.Facebook(icon.Props{Size: 20}))
			@Contact002SocialLink(icon.Linkedin(icon.Props{Size: 20}))
			@Contact002SocialLink(icon.Instagram(icon.Props{Size: 20}))
		</div>
	</div>
}

templ Contact002SocialLink(iconEl templ.Component) {
	@button.Button(button.Props{
		Size:    button.SizeIcon,
		Variant: button.VariantOutline,
		Class:   "hover:border-primary hover:text-primary transition-colors",
	}) {
		@iconEl
	}
}

templ Contact002Form() {
	<div class="bg-card rounded-lg border p-6 md:p-8">
		<h3 class="text-2xl font-semibold mb-6">Send us a message</h3>
		<form class="space-y-4">
			<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
				@Contact002FirstNameField()
				@Contact002LastNameField()
			</div>
			@Contact002EmailField()
			@Contact002PhoneField()
			@Contact002MessageField()
			@Contact002SubmitButton()
		</form>
	</div>
}

templ Contact002FirstNameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact2-firstname"}) {
			First Name
		}
		@input.Input(input.Props{
			ID:          "contact2-firstname",
			Name:        "firstname",
			Placeholder: "John",
		})
	</div>
}

templ Contact002LastNameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact2-lastname"}) {
			Last Name
		}
		@input.Input(input.Props{
			ID:          "contact2-lastname",
			Name:        "lastname",
			Placeholder: "Doe",
		})
	</div>
}

templ Contact002EmailField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact2-email"}) {
			Email
		}
		@input.Input(input.Props{
			ID:          "contact2-email",
			Name:        "email",
			Type:        input.TypeEmail,
			Placeholder: "john@example.com",
		})
	</div>
}

templ Contact002PhoneField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact2-phone"}) {
			Phone (optional)
		}
		@input.Input(input.Props{
			ID:          "contact2-phone",
			Name:        "phone",
			Type:        input.TypeTel,
			Placeholder: "+1 (555) 123-4567",
		})
	</div>
}

templ Contact002MessageField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact2-message"}) {
			Message
		}
		@textarea.Textarea(textarea.Props{
			ID:          "contact2-message",
			Name:        "message",
			Placeholder: "Tell us how we can help you...",
			Rows:        5,
		})
	</div>
}

templ Contact002SubmitButton() {
	<div class="pt-2">
		@button.Button(button.Props{
			Class: "w-full",
		}) {
			<span class="flex items-center gap-2">
				Send Message
				@icon.Send(icon.Props{
					Size: 18,
				})
			</span>
		}
	</div>
}
```

### contact_003.templ

**Path:** `contact/contact_003.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Contact003() {
	<section class="relative min-h-svh w-full">
		@Contact003Map()
		@Contact003Content()
	</section>
}

templ Contact003Map() {
	<div class="absolute inset-0 bg-muted">
		<div class="w-full h-full flex items-center justify-center">
			<div class="text-center space-y-4">
				@icon.MapPin(icon.Props{
					Size:  48,
					Class: "mx-auto text-primary",
				})
				<p class="text-muted-foreground">Interactive map placeholder</p>
			</div>
		</div>
	</div>
}

templ Contact003Content() {
	<div class="relative min-h-svh flex items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-6xl">
			<div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
				<div class="lg:col-start-2">
					@Contact003FormCard()
				</div>
			</div>
		</div>
	</div>
}

templ Contact003FormCard() {
	<div class="bg-background rounded-lg border shadow-lg p-6 md:p-8">
		@Contact003Header()
		@Contact003Form()
		@Contact003LocationInfo()
	</div>
}

templ Contact003Header() {
	<div class="mb-6">
		<h2 class="text-2xl font-bold tracking-tight mb-2">Contact <span class="text-primary">Us</span></h2>
		<p class="text-muted-foreground">
			Get in touch with our team. We're here to help.
		</p>
	</div>
}

templ Contact003Form() {
	<form class="space-y-4 mb-8">
		@Contact003NameField()
		@Contact003EmailField()
		@Contact003SubjectField()
		@Contact003MessageField()
		@Contact003SubmitButton()
	</form>
}

templ Contact003NameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact3-name"}) {
			Full Name
		}
		@input.Input(input.Props{
			ID:          "contact3-name",
			Name:        "name",
			Placeholder: "John Doe",
		})
	</div>
}

templ Contact003EmailField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact3-email"}) {
			Email
		}
		@input.Input(input.Props{
			ID:          "contact3-email",
			Name:        "email",
			Type:        input.TypeEmail,
			Placeholder: "john@example.com",
		})
	</div>
}

templ Contact003SubjectField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact3-subject"}) {
			Subject
		}
		@input.Input(input.Props{
			ID:          "contact3-subject",
			Name:        "subject",
			Placeholder: "How can we help?",
		})
	</div>
}

templ Contact003MessageField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact3-message"}) {
			Message
		}
		@textarea.Textarea(textarea.Props{
			ID:          "contact3-message",
			Name:        "message",
			Placeholder: "Tell us more about your inquiry...",
			Rows:        4,
		})
	</div>
}

templ Contact003SubmitButton() {
	<div class="pt-2">
		@button.Button(button.Props{
			Class: "w-full",
		}) {
			Send Message
		}
	</div>
}

templ Contact003LocationInfo() {
	<div class="border-t pt-6">
		<div class="flex items-start gap-3">
			<div class="p-2 bg-primary/10 rounded-lg text-primary">
				@icon.MapPin(icon.Props{Size: 20})
			</div>
			<div>
				<p class="font-medium">Our Office</p>
				<p class="text-sm text-muted-foreground">
					123 Business St, Suite 100
					<br/>
					New York, NY 10001
					<br/>
					United States
				</p>
			</div>
		</div>
	</div>
}
```

### contact_004.templ

**Path:** `contact/contact_004.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Contact004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@Contact004Header()
			@Contact004Form()
		</div>
	</section>
}

templ Contact004Header() {
	<div class="text-center mb-10">
		<h2 class="text-3xl font-bold tracking-tight mb-4">How can we help?</h2>
		<p class="text-muted-foreground text-lg">
			Choose the department that best fits your needs and we'll route your message to the right team.
		</p>
	</div>
}

templ Contact004Form() {
	<form class="space-y-6 bg-card rounded-lg border p-6 md:p-8">
		<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
			@Contact004FirstNameField()
			@Contact004LastNameField()
		</div>
		<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
			@Contact004EmailField()
			@Contact004PhoneField()
		</div>
		@Contact004CompanyField()
		@Contact004DepartmentSelect()
		@Contact004SubjectField()
		@Contact004MessageField()
		@Contact004SubmitButton()
	</form>
}

templ Contact004FirstNameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-firstname"}) {
			First Name
		}
		@input.Input(input.Props{
			ID:          "contact4-firstname",
			Name:        "firstname",
			Placeholder: "John",
		})
	</div>
}

templ Contact004LastNameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-lastname"}) {
			Last Name
		}
		@input.Input(input.Props{
			ID:          "contact4-lastname",
			Name:        "lastname",
			Placeholder: "Doe",
		})
	</div>
}

templ Contact004EmailField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-email"}) {
			Email
		}
		@input.Input(input.Props{
			ID:          "contact4-email",
			Name:        "email",
			Type:        input.TypeEmail,
			Placeholder: "john@example.com",
		})
	</div>
}

templ Contact004PhoneField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-phone"}) {
			Phone
		}
		@input.Input(input.Props{
			ID:          "contact4-phone",
			Name:        "phone",
			Type:        input.TypeTel,
			Placeholder: "+1 (555) 123-4567",
		})
	</div>
}

templ Contact004CompanyField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-company"}) {
			Company (optional)
		}
		@input.Input(input.Props{
			ID:          "contact4-company",
			Name:        "company",
			Placeholder: "Your Company Inc.",
		})
	</div>
}

templ Contact004DepartmentSelect() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-department"}) {
			Department
		}
		@selectbox.SelectBox() {
			@selectbox.Trigger(selectbox.TriggerProps{
				Name: "department",
				ID:   "contact4-department",
			}) {
				@selectbox.Value(selectbox.ValueProps{
					Placeholder: "Select a department",
				})
			}
			@selectbox.Content() {
				@selectbox.Item(selectbox.ItemProps{Value: "sales"}) {
					Sales
				}
				@selectbox.Item(selectbox.ItemProps{Value: "support"}) {
					Technical Support
				}
				@selectbox.Item(selectbox.ItemProps{Value: "billing"}) {
					Billing & Payments
				}
				@selectbox.Item(selectbox.ItemProps{Value: "partnership"}) {
					Partnership
				}
				@selectbox.Item(selectbox.ItemProps{Value: "media"}) {
					Media & Press
				}
				@selectbox.Item(selectbox.ItemProps{Value: "general"}) {
					General Inquiry
				}
			}
		}
	</div>
}

templ Contact004SubjectField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-subject"}) {
			Subject
		}
		@input.Input(input.Props{
			ID:          "contact4-subject",
			Name:        "subject",
			Placeholder: "Brief description of your inquiry",
		})
	</div>
}

templ Contact004MessageField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact4-message"}) {
			Message
		}
		@textarea.Textarea(textarea.Props{
			ID:          "contact4-message",
			Name:        "message",
			Placeholder: "Please provide as much detail as possible...",
			Rows:        6,
		})
	</div>
}

templ Contact004SubmitButton() {
	<div class="flex items-center justify-between pt-4">
		<p class="text-sm text-muted-foreground">
			We typically respond within 24 hours
		</p>
		@button.Button() {
			Submit Inquiry
		}
	</div>
}
```

### contact_005.templ

**Path:** `contact/contact_005.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Contact005() {
	<section class="w-full py-12 md:py-20 px-6 md:px-10">
		<div class="mx-auto max-w-6xl">
			@Contact005Header()
			@Contact005Cards()
		</div>
	</section>
}

templ Contact005Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tight mb-4">Get in Touch</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Have questions? We're here to help. Choose the best way to reach our team.
		</p>
	</div>
}

templ Contact005Cards() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
		@Contact005SalesCard()
		@Contact005SupportCard()
		@Contact005MediaCard()
		@Contact005PartnershipsCard()
		@Contact005CareersCard()
		@Contact005GeneralCard()
	</div>
}

templ Contact005SalesCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.ShoppingCart(icon.Props{Size: 24}))
			@card.Title() {
				Sales
			}
		}
		@card.Content() {
			@card.Description() {
				Interested in our products? Our sales team is ready to help you find the perfect solution.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "sales@example.com")
				@Contact005ContactInfo(icon.Phone(icon.Props{Size: 16}), "+1 (555) 100-1000")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Contact Sales
			}
		}
	}
}

templ Contact005SupportCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.Headphones(icon.Props{Size: 24}))
			@card.Title() {
				Technical Support
			}
		}
		@card.Content() {
			@card.Description() {
				Need help with our products? Our support team is available 24/7 to assist you.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "support@example.com")
				@Contact005ContactInfo(icon.Clock(icon.Props{Size: 16}), "24/7 Available")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Get Support
			}
		}
	}
}

templ Contact005MediaCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.Newspaper(icon.Props{Size: 24}))
			@card.Title() {
				Media & Press
			}
		}
		@card.Content() {
			@card.Description() {
				For media inquiries, press releases, and public relations matters.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "press@example.com")
				@Contact005ContactInfo(icon.Phone(icon.Props{Size: 16}), "+1 (555) 200-2000")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Press Inquiries
			}
		}
	}
}

templ Contact005PartnershipsCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.Handshake(icon.Props{Size: 24}))
			@card.Title() {
				Partnerships
			}
		}
		@card.Content() {
			@card.Description() {
				Explore partnership opportunities and grow your business with us.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "partners@example.com")
				@Contact005ContactInfo(icon.Globe(icon.Props{Size: 16}), "Partner Portal")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Become a Partner
			}
		}
	}
}

templ Contact005CareersCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.Briefcase(icon.Props{Size: 24}))
			@card.Title() {
				Careers
			}
		}
		@card.Content() {
			@card.Description() {
				Join our team! Explore exciting career opportunities and grow with us.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "careers@example.com")
				@Contact005ContactInfo(icon.Users(icon.Props{Size: 16}), "50+ Open Positions")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				View Openings
			}
		}
	}
}

templ Contact005GeneralCard() {
	@card.Card(card.Props{
		Class: "h-full",
	}) {
		@card.Header() {
			@Contact005CardIcon(icon.MessageSquare(icon.Props{Size: 24}))
			@card.Title() {
				General Inquiries
			}
		}
		@card.Content() {
			@card.Description() {
				For all other questions and general information about our company.
			}
			<div class="mt-4 space-y-2">
				@Contact005ContactInfo(icon.Mail(icon.Props{Size: 16}), "info@example.com")
				@Contact005ContactInfo(icon.MapPin(icon.Props{Size: 16}), "New York, NY")
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Send Message
			}
		}
	}
}

templ Contact005CardIcon(iconEl templ.Component) {
	<div class="p-3 bg-primary/10 rounded-lg text-primary mb-4 w-fit">
		@iconEl
	</div>
}

templ Contact005ContactInfo(iconEl templ.Component, text string) {
	<div class="flex items-center gap-2 text-sm text-muted-foreground">
		@iconEl
		<span>{ text }</span>
	</div>
}
```

### contact_006.templ

**Path:** `contact/contact_006.templ`

```templ
package contact

import (
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ Contact006() {
	<section class="w-full py-12 md:py-20 px-6 md:px-10">
		<div class="mx-auto max-w-4xl">
			@Contact006Header()
			@Contact006FAQ()
			@Contact006ContactSection()
		</div>
	</section>
}

templ Contact006Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tight mb-4">Frequently Asked Questions</h2>
		<p class="text-muted-foreground text-lg">
			Find answers to common questions about our products and services.
		</p>
	</div>
}

templ Contact006FAQ() {
	<div class="mb-16">
		@accordion.Accordion() {
			@Contact006FAQItem(
				"How do I get started?",
				"Getting started is easy! Simply sign up for an account, choose your plan, and you'll have access to all our features immediately. Our onboarding wizard will guide you through the initial setup process.",
			)
			@Contact006FAQItem(
				"What payment methods do you accept?",
				"We accept all major credit cards (Visa, MasterCard, American Express), PayPal, and bank transfers for enterprise customers. All payments are processed securely through our payment partner.",
			)
			@Contact006FAQItem(
				"Can I cancel my subscription anytime?",
				"Yes, you can cancel your subscription at any time. There are no cancellation fees, and you'll continue to have access to your account until the end of your current billing period.",
			)
			@Contact006FAQItem(
				"Do you offer refunds?",
				"We offer a 30-day money-back guarantee for all new customers. If you're not satisfied with our service within the first 30 days, we'll provide a full refund, no questions asked.",
			)
			@Contact006FAQItem(
				"Is my data secure?",
				"Absolutely. We use industry-standard encryption and security measures to protect your data. All data is encrypted in transit and at rest, and we perform regular security audits to ensure your information remains safe.",
			)
			@Contact006FAQItem(
				"Do you provide customer support?",
				"Yes, we provide 24/7 customer support via email and live chat for all paid plans. Enterprise customers also have access to phone support and a dedicated account manager.",
			)
		}
	</div>
}

templ Contact006FAQItem(question, answer string) {
	@accordion.Item() {
		@accordion.Trigger() {
			{ question }
		}
		@accordion.Content() {
			<p class="text-muted-foreground">{ answer }</p>
		}
	}
}

templ Contact006ContactSection() {
	<div class="bg-card rounded-lg border p-8 md:p-10">
		@Contact006ContactHeader()
		@Contact006ContactForm()
	</div>
}

templ Contact006ContactHeader() {
	<div class="text-center mb-8">
		<h3 class="text-2xl font-semibold mb-2">Still have questions?</h3>
		<p class="text-muted-foreground">
			Can't find what you're looking for? Send us a message and we'll get back to you as soon as possible.
		</p>
	</div>
}

templ Contact006ContactForm() {
	<form class="space-y-4 max-w-lg mx-auto">
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
			@Contact006NameField()
			@Contact006EmailField()
		</div>
		@Contact006TopicField()
		@Contact006MessageField()
		@Contact006SubmitButton()
	</form>
}

templ Contact006NameField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact6-name"}) {
			Name
		}
		@input.Input(input.Props{
			ID:          "contact6-name",
			Name:        "name",
			Placeholder: "Your name",
		})
	</div>
}

templ Contact006EmailField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact6-email"}) {
			Email
		}
		@input.Input(input.Props{
			ID:          "contact6-email",
			Name:        "email",
			Type:        input.TypeEmail,
			Placeholder: "you@example.com",
		})
	</div>
}

templ Contact006TopicField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact6-topic"}) {
			Topic
		}
		@input.Input(input.Props{
			ID:          "contact6-topic",
			Name:        "topic",
			Placeholder: "What's your question about?",
		})
	</div>
}

templ Contact006MessageField() {
	<div class="space-y-2">
		@label.Label(label.Props{For: "contact6-message"}) {
			Question
		}
		@textarea.Textarea(textarea.Props{
			ID:          "contact6-message",
			Name:        "message",
			Placeholder: "Please describe your question in detail...",
			Rows:        4,
		})
	</div>
}

templ Contact006SubmitButton() {
	<div class="pt-2">
		@button.Button(button.Props{
			Class: "w-full",
		}) {
			Send Question
		}
	</div>
}
```

## Cookie

### cookie_001.templ

**Path:** `cookie/cookie_001.templ`

```templ
package cookie

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Cookie001() {
	<div class="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
		@card.Card(card.Props{
			Class: "max-w-md mx-auto",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-6",
			}) {
				<div class="flex items-start space-x-4">
					<div class="flex-shrink-0 text-primary">
						@icon.Cookie(icon.Props{Size: 24})
					</div>
					<div class="flex-1 space-y-4">
						<div>
							<h3 class="text-lg font-semibold">We use <span class="text-primary">cookies</span></h3>
							<p class="text-sm text-muted-foreground mt-2">
								We use cookies to enhance your browsing experience, serve personalized ads or content, and analyze our traffic.
							</p>
						</div>
						<div class="flex space-x-3">
							@button.Button() {
								Accept All
							}
							@button.Button(button.Props{
								Variant: button.VariantOutline,
							}) {
								Decline
							}
						</div>
					</div>
				</div>
			}
		}
	</div>
}
```

### cookie_002.templ

**Path:** `cookie/cookie_002.templ`

```templ
package cookie

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Cookie002() {
	<div class="fixed bottom-4 right-4 z-50">
		@card.Card(card.Props{
			Class: "max-w-sm shadow-lg",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-4",
			}) {
				<div class="flex items-start justify-between space-x-3">
					<div class="flex-1">
						<div class="flex items-center space-x-2 mb-2">
							@icon.Cookie(icon.Props{Size: 18, Class: "text-primary"})
							<h4 class="font-medium text-sm">Cookie Notice</h4>
						</div>
						<p class="text-xs text-muted-foreground mb-3">
							This website uses cookies to improve your experience. By continuing to use this site, you agree to our cookie policy.
						</p>
						<div class="flex space-x-2">
							@button.Button(button.Props{
								Class: "text-xs px-3 py-1.5",
							}) {
								Accept
							}
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Class:   "text-xs px-3 py-1.5 hover:text-primary",
							}) {
								Learn More
							}
						</div>
					</div>
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "p-1 h-auto flex-shrink-0",
					}) {
						@icon.X(icon.Props{Size: 14})
					}
				</div>
			}
		}
	</div>
}
```

### cookie_003.templ

**Path:** `cookie/cookie_003.templ`

```templ
package cookie

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
)

templ Cookie003() {
	<div class="fixed bottom-4 left-4 right-4 md:left-1/2 md:right-auto md:-translate-x-1/2 md:w-full md:max-w-lg z-50">
		@card.Card(card.Props{
			Class: "shadow-xl",
		}) {
			@card.Header() {
				<div class="flex items-center justify-between">
					<div class="flex items-center space-x-2">
						@icon.Cookie(icon.Props{Size: 20})
						<h3 class="font-semibold">Manage Cookies</h3>
					</div>
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.X(icon.Props{Size: 16})
					}
				</div>
			}
			@card.Content(card.ContentProps{
				Class: "space-y-4",
			}) {
				<p class="text-sm text-muted-foreground">
					We use cookies to enhance your experience. Choose which cookies you'd like to accept.
				</p>
				@separator.Separator()
				<div class="space-y-3">
					@Cookie003Setting("Essential", "Required for the website to function properly", true, true)
					@Cookie003Setting("Analytics", "Help us understand how you use our website", false, false)
					@Cookie003Setting("Marketing", "Used to deliver personalized advertisements", false, false)
					@Cookie003Setting("Preferences", "Remember your settings and preferences", false, false)
				</div>
			}
			@card.Footer() {
				<div class="flex flex-col sm:flex-row gap-2">
					@button.Button(button.Props{
						Class: "flex-1",
					}) {
						Save Preferences
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "flex-1",
					}) {
						Accept All
					}
				</div>
			}
		}
	</div>
}

templ Cookie003Setting(title, description string, checked, disabled bool) {
	<div class="flex items-start justify-between space-x-4">
		<div class="flex-1">
			<h4 class="text-sm font-medium">{ title }</h4>
			<p class="text-xs text-muted-foreground mt-1">{ description }</p>
		</div>
		@switchcomp.Switch(switchcomp.Props{
			Checked:  checked,
			Disabled: disabled,
		})
	</div>
}
```

### cookie_004.templ

**Path:** `cookie/cookie_004.templ`

```templ
package cookie

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Cookie004() {
	<div class="fixed top-0 left-0 right-0 z-50">
		@card.Card(card.Props{
			Class: "rounded-none border-0 border-b shadow-sm",
		}) {
			@card.Content(card.ContentProps{
				Class: "py-3 px-4",
			}) {
				<div class="flex items-center justify-between max-w-7xl mx-auto">
					<div class="flex items-center space-x-4 flex-1">
						<div class="hidden sm:block">
							@icon.Cookie(icon.Props{Size: 20})
						</div>
						<div class="flex-1">
							<p class="text-sm">
								<span class="font-medium">Cookie Policy:</span>
								<span class="text-muted-foreground ml-1">
									We use cookies to provide you with the best experience on our website.
								</span>
								<a href="#" class="text-primary hover:underline ml-1">Learn more</a>
							</p>
						</div>
					</div>
					<div class="flex items-center space-x-2 ml-4">
						@button.Button(button.Props{
							Class: "text-xs px-4 py-1.5",
						}) {
							Accept
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Class:   "p-1.5",
						}) {
							@icon.X(icon.Props{Size: 16})
						}
					</div>
				</div>
			}
		}
	</div>
}
```

### cookie_005.templ

**Path:** `cookie/cookie_005.templ`

```templ
package cookie

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Cookie005() {
	<div class="fixed bottom-4 left-4 z-50">
		@card.Card(card.Props{
			Class: "max-w-xs shadow-lg",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-4 space-y-3",
			}) {
				<div class="flex items-center space-x-2">
					@icon.Cookie(icon.Props{Size: 18, Class: "text-primary"})
					<h4 class="font-medium text-sm">Cookie Consent</h4>
				</div>
				<p class="text-xs text-muted-foreground leading-relaxed">
					We respect your privacy. This site uses cookies to enhance your browsing experience.
				</p>
				@Cookie005AutoAccept()
				<div class="flex flex-col space-y-2">
					@button.Button(button.Props{
						Class: "w-full text-xs py-2",
					}) {
						Accept Cookies
					}
					<div class="flex space-x-2">
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Class:   "flex-1 text-xs py-1.5",
						}) {
							Customize
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Class:   "flex-1 text-xs py-1.5",
						}) {
							Decline
						}
					</div>
				</div>
			}
		}
	</div>
}

templ Cookie005AutoAccept() {
	<div class="space-y-2">
		<div class="flex items-center justify-between">
			<span class="text-xs text-muted-foreground">Auto-accept in</span>
			<span class="text-xs font-medium">15s</span>
		</div>
		@progress.Progress(progress.Props{
			Value: 33,
		})
	</div>
}
```

## Countdown

### countdown_001.templ

**Path:** `countdown/countdown_001.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Countdown001() {
	@Countdown001Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{
			Class: "w-full max-w-xl",
		}) {
			@card.Header() {
				@card.Title() {
					Product Launch
				}
				@card.Description() {
					Our new product launches in:
				}
			}
			@card.Content() {
				<div id="countdown001-container" class="flex justify-center items-center gap-2 sm:gap-4">
					@Countdown001CountdownDigit("00", "Days", "countdown001-days")
					<div class="text-lg sm:text-xl lg:text-2xl font-light text-muted-foreground">:</div>
					@Countdown001CountdownDigit("00", "Hours", "countdown001-hours")
					<div class="text-lg sm:text-xl lg:text-2xl font-light text-muted-foreground">:</div>
					@Countdown001CountdownDigit("00", "Minutes", "countdown001-minutes")
					<div class="text-lg sm:text-xl lg:text-2xl font-light text-muted-foreground">:</div>
					@Countdown001CountdownDigit("00", "Seconds", "countdown001-seconds")
				</div>
			}
			@card.Footer(card.FooterProps{
				Class: "flex justify-center",
			}) {
				<button class="inline-flex items-center gap-2 text-primary hover:underline">
					<span>Get notified</span>
					@icon.Bell(icon.Props{Size: 16})
				</button>
			}
		}
	</div>
}

templ Countdown001CountdownDigit(value, label string, id string) {
	<div class="flex flex-col items-center">
		<div class="bg-primary/10 rounded-md w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 flex items-center justify-center mb-1">
			<span id={ id } class="text-lg sm:text-xl lg:text-2xl font-bold text-primary">{ value }</span>
		</div>
		<span class="text-xs text-muted-foreground">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown001Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate = new Date();
		targetDate.setDate(targetDate.getDate() + 30);
		
		// Initialize countdown
		function initCountdown001() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown001-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown001-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown001-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown001-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown001-container').innerHTML = "<div class='text-center py-4'>The launch has started!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown001);
	</script>
}
```

### countdown_002.templ

**Path:** `countdown/countdown_002.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Countdown002() {
	@Countdown002Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{
			Class: "w-full max-w-2xl",
		}) {
			@card.Content() {
				<div class="flex flex-col justify-center items-start">
					<h3 class="text-sm font-medium text-primary mb-2">Annual Conference 2025</h3>
					<h2 class="text-2xl sm:text-3xl lg:text-4xl font-bold mb-6">The Future of Design Systems</h2>
					<p class="text-muted-foreground max-w-md mb-8">Join us for an enlightening discussion on the evolution of design systems and their impact on modern development workflows.</p>
					<div class="flex space-x-2 sm:space-x-4 lg:space-x-6 mb-8" id="countdown002-container">
						@Countdown002CountdownDigit("00", "Days", "countdown002-days")
						@Countdown002CountdownDigit("00", "Hours", "countdown002-hours")
						@Countdown002CountdownDigit("00", "Minutes", "countdown002-minutes")
						@Countdown002CountdownDigit("00", "Seconds", "countdown002-seconds")
					</div>
				</div>
				<div class="flex flex-col sm:flex-row space-y-2 sm:space-y-0 sm:space-x-4">
					@button.Button(button.Props{
						Variant: button.VariantDefault,
					}) {
						Register Now
					}
					@button.Button(button.Props{
						Variant: button.VariantOutline,
					}) {
						Learn More
					}
				</div>
			}
		}
	</div>
}

templ Countdown002CountdownDigit(value, label string, id string) {
	<div class="text-center">
		@avatar.Avatar(avatar.Props{
			Class: "w-16 h-16 border-2 border-border bg-background",
		}) {
			<span id={ id } class="text-lg sm:text-xl lg:text-2xl font-bold">{ value }</span>
		}
		<span class="text-xs block mt-2">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown002Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate002 = new Date();
		targetDate002.setDate(targetDate002.getDate() + 30);
		
		// Initialize countdown
		function initCountdown002() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate002.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown002-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown002-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown002-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown002-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown002-container').innerHTML = "<div class='text-center py-4'>The conference has started!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown002);
	</script>
}
```

### countdown_003.templ

**Path:** `countdown/countdown_003.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Countdown003() {
	@Countdown003Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@card.Card(card.Props{
			Class: "w-full max-w-lg",
		}) {
			@card.Header() {
				@card.Title() {
					Flash Sale Ends Soon
				}
				@card.Description() {
					Get up to 50% off on premium templates
				}
			}
			@card.Content() {
				<div id="countdown003-container" class="grid grid-cols-2 sm:grid-cols-4 gap-2 sm:gap-4 mb-6">
					@Countdown003CountdownDigit("00", "Days", "countdown003-days")
					@Countdown003CountdownDigit("00", "Hours", "countdown003-hours")
					@Countdown003CountdownDigit("00", "Minutes", "countdown003-minutes")
					@Countdown003CountdownDigit("00", "Seconds", "countdown003-seconds")
				</div>
			}
			@card.Footer(card.FooterProps{
				Class: "flex justify-center",
			}) {
				@button.Button(button.Props{
					Variant: button.VariantDefault,
					Class:   "px-8",
				}) {
					Shop Now
				}
			}
		}
	</div>
}

templ Countdown003CountdownDigit(value, label string, id string) {
	<div class="flex flex-col items-center">
		@avatar.Avatar(avatar.Props{
			Class: "w-16 h-16 sm:w-18 sm:h-18 lg:w-20 lg:h-20 mb-2",
		}) {
			<span id={ id } class="text-lg sm:text-xl font-bold">{ value }</span>
		}
		<span class="text-xs font-medium text-muted-foreground">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown003Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate003 = new Date();
		targetDate003.setDate(targetDate003.getDate() + 30);
		
		// Initialize countdown
		function initCountdown003() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate003.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown003-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown003-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown003-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown003-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown003-container').innerHTML = "<div class='text-center py-4'>Sale has ended!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown003);
	</script>
}
```

### countdown_004.templ

**Path:** `countdown/countdown_004.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Countdown004() {
	@Countdown004Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10" id="countdown004-container">
		@card.Card(card.Props{
			Class: "w-full max-w-3xl shadow-sm",
		}) {
			@card.Content() {
				<div class="flex flex-col gap-6 md:gap-8 items-center justify-between">
					<div class="text-center space-y-2 md:w-2/5">
						<div class="flex justify-center">
							@badge.Badge(badge.Props{
								Variant: badge.VariantOutline,
								Class:   "mb-2",
							}) {
								Coming Soon
							}
						</div>
						<h2 class="text-2xl font-bold tracking-tight">New Collection Launch</h2>
						<p class="text-muted-foreground">Be the first to explore our new exclusive collection dropping soon.</p>
						<div class="pt-4">
							@button.Button(button.Props{
								Variant: button.VariantDefault,
								Class:   "mt-2",
							}) {
								Notify Me
							}
						</div>
					</div>
					<div class="w-full md:w-3/5">
						<div class="grid grid-cols-2 sm:flex sm:justify-center gap-4 sm:gap-1 lg:gap-3">
							<div class="flex justify-center gap-1">
								@Countdown004FlipDigit("0", "Days", true, "countdown004-days-1")
								@Countdown004FlipDigit("0", "Days", true, "countdown004-days-2")
							</div>
							<div class="flex justify-center gap-1">
								@Countdown004FlipDigit("0", "Hours", false, "countdown004-hours-1")
								@Countdown004FlipDigit("0", "Hours", false, "countdown004-hours-2")
							</div>
							<div class="flex justify-center gap-1">
								@Countdown004FlipDigit("0", "Minutes", false, "countdown004-minutes-1")
								@Countdown004FlipDigit("0", "Minutes", false, "countdown004-minutes-2")
							</div>
							<div class="flex justify-center gap-1">
								@Countdown004FlipDigit("0", "Seconds", false, "countdown004-seconds-1")
								@Countdown004FlipDigit("0", "Seconds", false, "countdown004-seconds-2")
							</div>
						</div>
					</div>
				</div>
			}
		}
	</div>
}

templ Countdown004FlipDigit(value, label string, highlight bool, id string) {
	<div class="flex flex-col items-center">
		<div class={ "bg-background shadow-md rounded p-2 border", templ.KV("border-primary", highlight), templ.KV("border-border", !highlight) }>
			<div class="bg-accent flex items-center justify-center w-8 h-12 sm:w-10 sm:h-14 lg:w-12 lg:h-16 rounded font-mono">
				<span id={ id } class="text-lg sm:text-xl lg:text-2xl font-bold">{ value }</span>
			</div>
		</div>
		<span class="text-xs mt-1 text-muted-foreground">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer with flip animation
templ Countdown004Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate004 = new Date();
		targetDate004.setDate(targetDate004.getDate() + 30);
		
		// Initialize countdown
		function initCountdown004() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate004.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24)).toString().padStart(2, '0');
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)).toString().padStart(2, '0');
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)).toString().padStart(2, '0');
				const seconds = Math.floor((distance % (1000 * 60)) / 1000).toString().padStart(2, '0');
				
				// Update the countdown elements - first digit of days
				document.getElementById('countdown004-days-1').textContent = days[0];
				document.getElementById('countdown004-days-2').textContent = days[1];
				
				// Update hours
				document.getElementById('countdown004-hours-1').textContent = hours[0];
				document.getElementById('countdown004-hours-2').textContent = hours[1];
				
				// Update minutes
				document.getElementById('countdown004-minutes-1').textContent = minutes[0];
				document.getElementById('countdown004-minutes-2').textContent = minutes[1];
				
				// Update seconds
				document.getElementById('countdown004-seconds-1').textContent = seconds[0];
				document.getElementById('countdown004-seconds-2').textContent = seconds[1];
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown004-container').innerHTML = "<div class='text-center py-4'>Collection is now available!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown004);
	</script>
}
```

### countdown_005.templ

**Path:** `countdown/countdown_005.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Countdown005() {
	@Countdown005Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10" id="countdown005-container">
		@card.Card(card.Props{
			Class: "w-full max-w-4xl overflow-hidden",
		}) {
			@card.Content() {
				<div class="grid grid-cols-1 lg:grid-cols-2">
					<!-- Left: Content and Countdown -->
					<div class="p-4">
						<div class="mb-6">
							@badge.Badge(badge.Props{
								Variant: badge.VariantSecondary,
							}) {
								Webinar
							}
						</div>
						<h2 class="text-2xl font-bold mb-2">Advanced UI Design Patterns</h2>
						<p class="text-muted-foreground mb-6">Learn how to create beautiful and accessible user interfaces from industry experts.</p>
						<!-- Countdown -->
						<div class="mb-8">
							<p class="text-sm text-muted-foreground mb-3">Starts in:</p>
							<div class="grid grid-cols-2 sm:grid-cols-4 gap-2 sm:gap-4">
								@Countdown005CountdownDigit("00", "Days", "countdown005-days")
								@Countdown005CountdownDigit("00", "Hours", "countdown005-hours")
								@Countdown005CountdownDigit("00", "Minutes", "countdown005-minutes")
								@Countdown005CountdownDigit("00", "Seconds", "countdown005-seconds")
							</div>
						</div>
						<!-- Speakers -->
						<div class="mb-8">
							<h3 class="text-sm font-medium mb-3">Featured Speakers:</h3>
							<div class="flex space-x-2 sm:space-x-4">
								<div class="flex flex-col items-center">
									@avatar.Avatar() {
										@avatar.Image(avatar.ImageProps{
											Src: "/assets/img/avatar-gh-1.png",
											Alt: "Sarah Johnson",
										})
										@avatar.Fallback() {
											SJ
										}
									}
									<span class="text-xs mt-2">Sarah J.</span>
								</div>
								<div class="flex flex-col items-center">
									@avatar.Avatar() {
										@avatar.Image(avatar.ImageProps{
											Src: "/assets/img/avatar-gh-2.png",
											Alt: "Michael Chen",
										})
										@avatar.Fallback() {
											MC
										}
									}
									<span class="text-xs mt-2">Michael C.</span>
								</div>
								<div class="flex flex-col items-center">
									@avatar.Avatar() {
										@avatar.Image(avatar.ImageProps{
											Src: "/assets/img/avatar-gh-3.png",
											Alt: "Lisa Wang",
										})
										@avatar.Fallback() {
											LW
										}
									}
									<span class="text-xs mt-2">Lisa W.</span>
								</div>
							</div>
						</div>
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "w-full",
						}) {
							Reserve Your Spot
						}
					</div>
					<!-- Right: Image -->
					<div class="relative h-full min-h-[300px] bg-accent">
						<div class="absolute inset-0 bg-cover bg-center" style="background-image: url('/assets/img/placeholder.svg');"></div>
						<div class="absolute inset-0 bg-gradient-to-t from-background/70 to-transparent"></div>
						<div class="absolute bottom-6 left-6 right-6">
							<div class="flex items-center space-x-2 text-sm">
								<div class="bg-background/90 backdrop-blur-sm p-2 rounded-md">
									@icon.Calendar(icon.Props{Size: 16})
								</div>
								<div class="bg-background/90 backdrop-blur-sm p-2 rounded-md text-sm">
									July 15, 2025 • 2:00 PM EST
								</div>
							</div>
						</div>
					</div>
				</div>
			}
		}
	</div>
}

templ Countdown005CountdownDigit(value, label, id string) {
	<div class="bg-accent/50 rounded-lg p-3 text-center">
		<span id={ id } class="block text-lg sm:text-xl lg:text-2xl font-bold">{ value }</span>
		<span class="text-xs text-muted-foreground">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown005Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate005 = new Date();
		targetDate005.setDate(targetDate005.getDate() + 30);
		
		// Initialize countdown
		function initCountdown005() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate005.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown005-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown005-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown005-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown005-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown005-container').innerHTML = "<div class='text-center py-4'>The webinar has started!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown005);
	</script>
}
```

### countdown_006.templ

**Path:** `countdown/countdown_006.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Countdown006() {
	@Countdown006Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10" id="countdown006-container">
		@card.Card(card.Props{
			Class: "w-full max-w-5xl bg-accent/10",
		}) {
			@card.Content() {
				<div class="grid grid-cols-1 lg:grid-cols-2 gap-10">
					<!-- Left side: Product info -->
					<div>
						<div class="flex items-center space-x-3 mb-4">
							@badge.Badge(badge.Props{
								Variant: badge.VariantOutline,
							}) {
								Limited Edition
							}
							@badge.Badge(badge.Props{
								Variant: badge.VariantSecondary,
							}) {
								Pre-order
							}
						</div>
						<h2 class="text-3xl font-bold mb-2">Premium Noise-Cancelling Headphones</h2>
						<p class="text-muted-foreground mb-6">Experience crystal-clear sound with our most advanced wireless headphones yet.</p>
						<div class="mb-6">
							<div class="flex items-baseline mb-1">
								<span class="text-2xl sm:text-3xl font-bold">$249.99</span>
								<span class="text-muted-foreground line-through ml-2">$299.99</span>
								<span class="text-sm text-primary ml-2">Save $50</span>
							</div>
							<p class="text-sm text-muted-foreground">Free shipping • 2-year warranty</p>
						</div>
						<div class="mb-6">
							<div class="flex items-center justify-between mb-1.5">
								<span class="text-sm">Units available</span>
								<span class="text-sm text-muted-foreground">168/500</span>
							</div>
							@progress.Progress(progress.Props{
								Value:   33,
								Size:    progress.SizeSm,
								Variant: progress.VariantSuccess,
							})
							<p class="text-xs text-muted-foreground mt-1.5">Only 168 units left at this price</p>
						</div>
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "w-full mb-3",
						}) {
							Pre-order Now
						}
						<div class="text-center">
							<p class="text-xs text-muted-foreground">Pre-order now and get a free leather carrying case</p>
						</div>
					</div>
					<!-- Right side: Countdown and image -->
					<div>
						<div class="aspect-square relative rounded-lg overflow-hidden mb-6">
							<div class="absolute inset-0 bg-cover bg-center" style="background-image: url('/assets/img/placeholder.svg');"></div>
						</div>
						<div class="space-y-2">
							<p class="text-sm font-medium text-center">Pre-order period ends in:</p>
							<div class="flex justify-center gap-1 sm:gap-2 lg:gap-3">
								@Countdown006TimerUnit("00", "days", "countdown006-days")
								<div class="flex items-center text-muted-foreground">:</div>
								@Countdown006TimerUnit("00", "hours", "countdown006-hours")
								<div class="flex items-center text-muted-foreground">:</div>
								@Countdown006TimerUnit("00", "mins", "countdown006-minutes")
								<div class="flex items-center text-muted-foreground">:</div>
								@Countdown006TimerUnit("00", "secs", "countdown006-seconds")
							</div>
						</div>
					</div>
				</div>
			}
		}
	</div>
}

templ Countdown006TimerUnit(value, label, id string) {
	<div class="flex flex-col items-center justify-center p-2 sm:p-3 bg-background border border-border rounded-lg w-12 sm:w-16 lg:w-20">
		<span id={ id } class="text-lg sm:text-xl lg:text-2xl font-bold text-primary">{ value }</span>
		<span class="text-[10px] uppercase tracking-widest text-muted-foreground">{ label }</span>
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown006Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate006 = new Date();
		targetDate006.setDate(targetDate006.getDate() + 30);
		
		// Initialize countdown
		function initCountdown006() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate006.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown006-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown006-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown006-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown006-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown006-container').innerHTML = "<div class='text-center py-4'>Pre-order period has ended!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown006);
	</script>
}
```

### countdown_007.templ

**Path:** `countdown/countdown_007.templ`

```templ
package countdown

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Countdown007() {
	@Countdown007Script()
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10" id="countdown007-container">
		@card.Card(card.Props{
			Class: "w-full max-w-4xl relative overflow-hidden bg-accent/20",
		}) {
			@card.Content() {
				<div class="relative">
					<div class="text-center mb-8">
						<div class="flex justify-center mb-3">
							@badge.Badge(badge.Props{
								Class: "bg-primary/10 text-primary border-primary/20",
							}) {
								Space-X Launch
							}
						</div>
						<h2 class="text-4xl font-bold mb-2">Mission Artemis</h2>
						<p class="text-muted-foreground max-w-lg mx-auto">Countdown to the next generation of space exploration. Be part of history.</p>
					</div>
					<div class="grid grid-cols-2 sm:grid-cols-4 gap-2 sm:gap-6 mb-8">
						<div class="text-center">
							<div class="mb-2 relative">
								<div class="flex justify-center">
									@Countdown007NeonDigit("00", "text-primary border-primary/30", "countdown007-days")
								</div>
							</div>
							<p class="text-xs text-muted-foreground uppercase tracking-wider">Days</p>
						</div>
						<div class="text-center">
							<div class="mb-2 relative">
								<div class="flex justify-center">
									@Countdown007NeonDigit("00", "text-primary border-primary/30", "countdown007-hours")
								</div>
							</div>
							<p class="text-xs text-muted-foreground uppercase tracking-wider">Hours</p>
						</div>
						<div class="text-center">
							<div class="mb-2 relative">
								<div class="flex justify-center">
									@Countdown007NeonDigit("00", "text-primary border-primary/30", "countdown007-minutes")
								</div>
							</div>
							<p class="text-xs text-muted-foreground uppercase tracking-wider">Minutes</p>
						</div>
						<div class="text-center">
							<div class="mb-2 relative">
								<div class="flex justify-center">
									@Countdown007NeonDigit("00", "text-primary border-primary/30", "countdown007-seconds")
								</div>
							</div>
							<p class="text-xs text-muted-foreground uppercase tracking-wider">Seconds</p>
						</div>
					</div>
					<div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
						<div class="bg-background/50 backdrop-blur-sm rounded-lg p-4 text-center">
							<p class="text-sm font-medium mb-1">Viewers</p>
							<p class="text-2xl font-bold">136.4k</p>
						</div>
						<div class="bg-background/50 backdrop-blur-sm rounded-lg p-4 text-center">
							<p class="text-sm font-medium mb-1">Mission Status</p>
							<p class="text-2xl font-bold text-primary">Go</p>
						</div>
						<div class="bg-background/50 backdrop-blur-sm rounded-lg p-4 text-center">
							<p class="text-sm font-medium mb-1">Weather</p>
							<p class="text-2xl font-bold">Clear</p>
						</div>
					</div>
					<div class="mt-8 text-center">
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "px-4 py-3 sm:px-8 sm:py-6 text-base sm:text-lg",
						}) {
							Watch Live Stream
						}
					</div>
				</div>
			}
		}
	</div>
}

templ Countdown007NeonDigit(value string, color string, id ...string) {
	<div class={ "font-mono text-xl sm:text-2xl lg:text-3xl font-bold px-2 py-1 sm:px-3 rounded border-2", color }>
		if len(id) > 0 {
			<span id={ id[0] }>{ value }</span>
		} else {
			{ value }
		}
	</div>
}

// JavaScript logic for the countdown timer
templ Countdown007Script() {
	<script nonce={ templ.GetNonce(ctx) }>
		// EASY TO CUSTOMIZE:
		// Set your target date here (30 days from now by default)
		const targetDate007 = new Date();
		targetDate007.setDate(targetDate007.getDate() + 30);
		
		// Initialize countdown
		function initCountdown007() {
			// Update countdown every second
			const countdownInterval = setInterval(function() {
				const now = new Date().getTime();
				const distance = targetDate007.getTime() - now;
				
				// Calculate time units
				const days = Math.floor(distance / (1000 * 60 * 60 * 24));
				const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
				const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
				const seconds = Math.floor((distance % (1000 * 60)) / 1000);
				
				// Update the countdown elements
				document.getElementById('countdown007-days').textContent = days.toString().padStart(2, '0');
				document.getElementById('countdown007-hours').textContent = hours.toString().padStart(2, '0');
				document.getElementById('countdown007-minutes').textContent = minutes.toString().padStart(2, '0');
				document.getElementById('countdown007-seconds').textContent = seconds.toString().padStart(2, '0');
				
				// If the countdown is over
				if (distance < 0) {
					clearInterval(countdownInterval);
					document.getElementById('countdown007-container').innerHTML = "<div class='text-center py-4'>Launch has started!</div>";
				}
			}, 1000);
		}
		
		// Start the countdown when the page loads
		document.addEventListener('DOMContentLoaded', initCountdown007);
	</script>
}
```

## Cta

### cta_001.templ

**Path:** `cta/cta_001.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA001() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			<div class="flex flex-col items-center justify-center rounded-2xl bg-muted/50 p-8 md:p-16 text-center">
				@CTA001Content()
			</div>
		</div>
	</section>
}

templ CTA001Content() {
	<h2 class="mb-4 text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
		Ready to get started?
	</h2>
	<p class="mb-8 max-w-2xl text-lg md:text-xl text-muted-foreground">
		Join thousands of satisfied customers using our platform to grow their business.
	</p>
	<div class="flex flex-col sm:flex-row gap-4">
		@button.Button() {
			<span class="flex items-center gap-2">
				Start your free trial
				@icon.ArrowRight(icon.Props{
					Size: 20,
				})
			</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Schedule a demo
		}
	</div>
}
```

### cta_002.templ

**Path:** `cta/cta_002.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA002() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			<div class="grid lg:grid-cols-2 gap-8 md:gap-12 items-center">
				@CTA002Content()
				@CTA002Visual()
			</div>
		</div>
	</section>
}

templ CTA002Content() {
	<div class="space-y-6">
		<h2 class="text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
			Start building amazing products today
		</h2>
		<p class="text-lg md:text-xl text-muted-foreground">
			Get access to over 200+ components and templates to jumpstart your next project. Built with modern technologies and best practices.
		</p>
		<div class="flex flex-col sm:flex-row gap-4">
			@button.Button() {
				<span class="flex items-center gap-2">
					Get started free
					@icon.ArrowRight(icon.Props{
						Size: 20,
					})
				</span>
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				<span class="flex items-center gap-2">
					@icon.CirclePlay(icon.Props{
						Size: 20,
					})
					Watch demo
				</span>
			}
		</div>
		<div class="flex items-center gap-8 pt-4">
			<div class="flex items-center gap-2">
				@icon.Check(icon.Props{
					Size:  20,
					Class: "text-primary",
				})
				<span class="text-sm font-medium">No credit card required</span>
			</div>
			<div class="flex items-center gap-2">
				@icon.Check(icon.Props{
					Size:  20,
					Class: "text-primary",
				})
				<span class="text-sm font-medium">14-day free trial</span>
			</div>
		</div>
	</div>
}

templ CTA002Visual() {
	<div class="relative">
		<div class="aspect-square lg:aspect-[4/3] rounded-2xl bg-gradient-to-br from-primary/20 to-primary/5 flex items-center justify-center">
			<div class="absolute inset-0 bg-grid-black/[0.02] bg-[size:20px_20px]"></div>
			<div class="relative flex flex-col items-center justify-center text-center p-8">
				@icon.Zap(icon.Props{
					Size:  64,
					Class: "text-primary mb-4",
				})
				<span class="text-2xl font-bold">Fast Development</span>
				<span class="text-muted-foreground">Ship faster with our components</span>
			</div>
		</div>
		<div class="absolute -top-4 -right-4 w-72 h-72 bg-primary/10 rounded-full blur-3xl -z-10"></div>
		<div class="absolute -bottom-4 -left-4 w-72 h-72 bg-primary/10 rounded-full blur-3xl -z-10"></div>
	</div>
}
```

### cta_003.templ

**Path:** `cta/cta_003.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA003() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			<div class="text-center mb-12">
				@CTA003Header()
			</div>
			@CTA003Features()
			<div class="mt-12 flex justify-center">
				@CTA003Actions()
			</div>
		</div>
	</section>
}

templ CTA003Header() {
	<h2 class="mb-4 text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
		Everything you need to succeed
	</h2>
	<p class="mx-auto max-w-2xl text-lg md:text-xl text-muted-foreground">
		Our platform provides all the tools and features you need to build, scale, and manage your business effectively.
	</p>
}

templ CTA003Features() {
	<div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
		<div class="text-center">
			<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
				@icon.Zap(icon.Props{
					Size:  24,
					Class: "text-primary",
				})
			</div>
			<h3 class="mb-2 text-lg font-semibold">Lightning Fast</h3>
			<p class="text-sm text-muted-foreground">
				Optimized for speed and performance with sub-second load times.
			</p>
		</div>
		<div class="text-center">
			<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
				@icon.Shield(icon.Props{
					Size:  24,
					Class: "text-primary",
				})
			</div>
			<h3 class="mb-2 text-lg font-semibold">Enterprise Security</h3>
			<p class="text-sm text-muted-foreground">
				Bank-level encryption and security to keep your data safe.
			</p>
		</div>
		<div class="text-center">
			<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
				@icon.Users(icon.Props{
					Size:  24,
					Class: "text-primary",
				})
			</div>
			<h3 class="mb-2 text-lg font-semibold">Team Collaboration</h3>
			<p class="text-sm text-muted-foreground">
				Work together seamlessly with built-in collaboration tools.
			</p>
		</div>
	</div>
}

templ CTA003Actions() {
	<div class="flex flex-col sm:flex-row gap-4">
		@button.Button() {
			<span class="flex items-center gap-2">
				Start free trial
				@icon.ArrowRight(icon.Props{
					Size: 20,
				})
			</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<span class="flex items-center gap-2">
				@icon.MessageCircle(icon.Props{
					Size: 20,
				})
				Contact sales
			</span>
		}
	</div>
}
```

### cta_004.templ

**Path:** `cta/cta_004.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ CTA004() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			<div class="mx-auto max-w-2xl text-center">
				@CTA004Content()
				@CTA004Form()
			</div>
		</div>
	</section>
}

templ CTA004Content() {
	<div class="mb-8">
		<h2 class="mb-4 text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
			Stay updated with our newsletter
		</h2>
		<p class="text-lg md:text-xl text-muted-foreground">
			Get the latest updates, news, and exclusive offers delivered straight to your inbox.
		</p>
	</div>
}

templ CTA004Form() {
	<form class="flex flex-col sm:flex-row gap-4 max-w-md mx-auto">
		<div class="flex-1">
			@input.Input(input.Props{
				Type:        input.TypeEmail,
				Placeholder: "Enter your email",
				Class:       "h-12",
			})
		</div>
		@button.Button(button.Props{
			Class: "h-12",
		}) {
			Subscribe
		}
	</form>
	<div class="mt-6 flex items-center justify-center gap-6 text-sm text-muted-foreground">
		<div class="flex items-center gap-2">
			@icon.Check(icon.Props{
				Size:  16,
				Class: "text-primary",
			})
			<span>Free forever</span>
		</div>
		<div class="flex items-center gap-2">
			@icon.Check(icon.Props{
				Size:  16,
				Class: "text-primary",
			})
			<span>No spam</span>
		</div>
		<div class="flex items-center gap-2">
			@icon.Check(icon.Props{
				Size:  16,
				Class: "text-primary",
			})
			<span>Cancel anytime</span>
		</div>
	</div>
}
```

### cta_005.templ

**Path:** `cta/cta_005.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA005() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			<div class="rounded-2xl bg-muted/50 p-8 md:p-12 lg:p-16">
				<div class="grid lg:grid-cols-2 gap-8 md:gap-12 items-center">
					@CTA005Testimonial()
					@CTA005Content()
				</div>
			</div>
		</div>
	</section>
}

templ CTA005Testimonial() {
	<div class="space-y-6">
		<div class="flex gap-1">
			for i := 0; i < 5; i++ {
				@icon.Star(icon.Props{
					Size:  24,
					Class: "text-primary fill-primary",
				})
			}
		</div>
		<blockquote class="text-xl md:text-2xl font-medium">
			"This platform transformed how we manage our business. The tools are intuitive, powerful, and have saved us countless hours. Highly recommended!"
		</blockquote>
		<div class="flex items-center gap-4">
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "https://ui-avatars.com/api/?name=Sarah+Johnson&background=random",
					Alt: "Sarah Johnson",
				})
				@avatar.Fallback() {
					SJ
				}
			}
			<div>
				<div class="font-semibold">Sarah Johnson</div>
				<div class="text-sm text-muted-foreground">CEO at TechCorp</div>
			</div>
		</div>
	</div>
}

templ CTA005Content() {
	<div class="space-y-6 lg:text-right">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight">
			Join 10,000+ satisfied customers
		</h2>
		<p class="text-lg text-muted-foreground">
			Experience the difference with our award-winning platform. Start your journey today and see why businesses choose us.
		</p>
		<div class="flex flex-col sm:flex-row gap-4 lg:justify-end">
			@button.Button() {
				<span class="flex items-center gap-2">
					Get started now
					@icon.ArrowRight(icon.Props{
						Size: 20,
					})
				</span>
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Read more reviews
			}
		</div>
	</div>
}
```

### cta_006.templ

**Path:** `cta/cta_006.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA006() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-7xl">
			@CTA006Header()
			@CTA006Cards()
		</div>
	</section>
}

templ CTA006Header() {
	<div class="text-center mb-12">
		<h2 class="mb-4 text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
			Choose your path to success
		</h2>
		<p class="mx-auto max-w-2xl text-lg md:text-xl text-muted-foreground">
			Whether you're a startup or enterprise, we have the perfect solution for your needs.
		</p>
	</div>
}

templ CTA006Cards() {
	<div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
		@card.Card() {
			@card.Header() {
				<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
					@icon.Rocket(icon.Props{
						Size:  24,
						Class: "text-primary",
					})
				</div>
				@card.Title() {
					For Startups
				}
				@card.Description() {
					Perfect for small teams and growing businesses
				}
			}
			@card.Content() {
				<ul class="space-y-2 mb-6">
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Up to 10 team members</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Essential features</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Email support</span>
					</li>
				</ul>
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full",
				}) {
					Start free trial
				}
			}
		}
		@card.Card(card.Props{
			Class: "border-primary",
		}) {
			@card.Header() {
				<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
					@icon.TrendingUp(icon.Props{
						Size:  24,
						Class: "text-primary",
					})
				</div>
				@card.Title() {
					For Business
				}
				@card.Description() {
					Ideal for established companies and teams
				}
			}
			@card.Content() {
				<ul class="space-y-2 mb-6">
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Unlimited team members</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Advanced features</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Priority support</span>
					</li>
				</ul>
				@button.Button(button.Props{
					Class: "w-full",
				}) {
					Get started
				}
			}
		}
		@card.Card() {
			@card.Header() {
				<div class="mb-4 inline-flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
					@icon.Building2(icon.Props{
						Size:  24,
						Class: "text-primary",
					})
				</div>
				@card.Title() {
					For Enterprise
				}
				@card.Description() {
					Custom solutions for large organizations
				}
			}
			@card.Content() {
				<ul class="space-y-2 mb-6">
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Custom deployment</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">Dedicated support</span>
					</li>
					<li class="flex items-center gap-2">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
						<span class="text-sm">SLA guarantee</span>
					</li>
				</ul>
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "w-full",
				}) {
					Contact sales
				}
			}
		}
	</div>
}
```

### cta_007.templ

**Path:** `cta/cta_007.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA007() {
	<section class="relative px-6 md:px-10 py-16 md:py-24 overflow-hidden">
		<div class="mx-auto max-w-7xl relative z-10">
			<div class="rounded-2xl bg-primary p-8 md:p-12 lg:p-16 text-primary-foreground relative overflow-hidden">
				@CTA007Pattern()
				<div class="relative z-10 text-center">
					@CTA007Content()
				</div>
			</div>
		</div>
	</section>
}

templ CTA007Pattern() {
	<div class="absolute inset-0 opacity-10">
		<div class="absolute inset-0" style="background-image: url('data:image/svg+xml,%3Csvg width=%2260%22 height=%2260%22 viewBox=%220 0 60 60%22 xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg fill=%22none%22 fill-rule=%22evenodd%22%3E%3Cg fill=%22%23ffffff%22 fill-opacity=%221%22%3E%3Cpath d=%22M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z%22/%3E%3C/g%3E%3C/g%3E%3C/svg%3E'); background-size: 60px 60px;"></div>
	</div>
	<div class="absolute top-0 left-0 w-96 h-96 bg-white/10 rounded-full blur-3xl -translate-x-48 -translate-y-48"></div>
	<div class="absolute bottom-0 right-0 w-96 h-96 bg-white/10 rounded-full blur-3xl translate-x-48 translate-y-48"></div>
}

templ CTA007Content() {
	<h2 class="mb-4 text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight">
		Ready to transform your business?
	</h2>
	<p class="mb-8 mx-auto max-w-2xl text-lg md:text-xl opacity-90">
		Join thousands of companies that trust us to power their growth. Start your free trial today and see the difference.
	</p>
	<div class="flex flex-col sm:flex-row gap-4 justify-center">
		@button.Button(button.Props{
			Variant: button.VariantSecondary,
		}) {
			<span class="flex items-center gap-2">
				Start free trial
				@icon.ArrowRight(icon.Props{
					Size: 20,
				})
			</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Class:   "text-primary-foreground hover:bg-white/10 dark:hover:bg-black/20",
		}) {
			<span class="flex items-center gap-2">
				@icon.CirclePlay(icon.Props{
					Size: 20,
				})
				Watch demo
			</span>
		}
	</div>
	<div class="mt-8 flex flex-col md:flex-row justify-center items-center gap-2 md:gap-8">
		<div class="text-center">
			<div class="text-2xl md:text-3xl font-bold">30 days</div>
			<div class="text-sm opacity-75">Free trial</div>
		</div>
		<div class="w-px h-8 bg-white/20"></div>
		<div class="text-center">
			<div class="text-2xl md:text-3xl font-bold">No card</div>
			<div class="text-sm opacity-75">Required</div>
		</div>
		<div class="w-px h-8 bg-white/20"></div>
		<div class="text-center">
			<div class="text-2xl md:text-3xl font-bold">Cancel</div>
			<div class="text-sm opacity-75">Anytime</div>
		</div>
	</div>
}
```

### cta_008.templ

**Path:** `cta/cta_008.templ`

```templ
package cta

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ CTA008() {
	<section class="px-6 md:px-10 py-16 md:py-24">
		<div class="mx-auto max-w-4xl text-center">
			@CTA008Badge()
			@CTA008Content()
			@CTA008Actions()
		</div>
	</section>
}

templ CTA008Badge() {
	<div class="mb-6">
		@badge.Badge(badge.Props{
			Variant: badge.VariantSecondary,
		}) {
			<span class="flex items-center gap-2">
				@icon.Sparkles(icon.Props{
					Size: 14,
				})
				Limited time offer
			</span>
		}
	</div>
}

templ CTA008Content() {
	<h2 class="mb-4 text-3xl md:text-4xl font-bold tracking-tight">
		Simple. Powerful. Yours.
	</h2>
	<p class="mb-8 text-lg text-muted-foreground">
		Everything you need to succeed, nothing you don't.
	</p>
}

templ CTA008Actions() {
	<div class="flex flex-col sm:flex-row gap-4 justify-center">
		@button.Button() {
			Get started
		}
		@button.Button(button.Props{
			Variant: button.VariantGhost,
		}) {
			Learn more
		}
	</div>
}
```

## Ecommerce

### cart_001.templ

**Path:** `ecommerce/cart_001.templ`

```templ
package ecommerce

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

// Cart001 - Cart Drawer
templ Cart001() {
	<div class="flex items-center justify-center min-h-screen p-6">
		@sheet.Sheet(sheet.Props{
			Side: sheet.SideRight,
		}) {
			@sheet.Trigger() {
				@button.Button() {
					@icon.ShoppingCart(icon.Props{Size: 16, Class: "mr-2"})
					Open Cart (3 items)
				}
			}
			@sheet.Content(sheet.ContentProps{
				HideCloseButton: true,
			}) {
				@sheet.Header() {
					@sheet.Title() {
						Shopping Cart
					}
					@sheet.Description() {
						3 items in your cart
					}
				}
				<div class="flex-1 overflow-y-auto p-4">
					@Cart001Items()
				</div>
				@sheet.Footer() {
					@Cart001Summary()
				}
			}
		}
	</div>
}

templ Cart001Items() {
	<div class="space-y-4">
		@Cart001CartItem(
			"Wireless Headphones",
			"Black",
			"$199",
			1,
			"/assets/img/placeholder.svg",
		)
		@separator.Separator()
		@Cart001CartItem(
			"Smart Watch",
			"Silver",
			"$299",
			1,
			"/assets/img/placeholder.svg",
		)
		@separator.Separator()
		@Cart001CartItem(
			"Laptop Stand",
			"Gray",
			"$59",
			2,
			"/assets/img/placeholder.svg",
		)
	</div>
}

templ Cart001CartItem(name string, variant string, price string, quantity int, imageUrl string) {
	<div class="flex gap-3">
		<div class="w-20 h-20 rounded-lg overflow-hidden bg-muted flex-shrink-0">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-full h-full object-cover"
			/>
		</div>
		<div class="flex-1 min-w-0">
			<h4 class="font-medium line-clamp-1">{ name }</h4>
			<p class="text-sm text-muted-foreground">{ variant }</p>
			<div class="flex items-center justify-between mt-2">
				<span class="font-medium">{ price }</span>
				@Cart001QuantityControls(quantity)
			</div>
		</div>
		<button class="text-muted-foreground hover:text-foreground">
			@icon.X(icon.Props{Size: 16})
		</button>
	</div>
}

templ Cart001QuantityControls(quantity int) {
	<div class="flex items-center gap-1">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
			Class:   "h-7 w-7",
		}) {
			@icon.Minus(icon.Props{Size: 12})
		}
		<span class="w-8 text-center text-sm">{ fmt.Sprintf("%d", quantity) }</span>
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
			Class:   "h-7 w-7",
		}) {
			@icon.Plus(icon.Props{Size: 12})
		}
	</div>
}

templ Cart001Summary() {
	<div class="space-y-4">
		@separator.Separator()
		<div class="space-y-2">
			@Cart001SummaryRow("Subtotal", "$616.00", false)
			@Cart001SummaryRow("Shipping", "Free", false)
			@Cart001SummaryRow("Tax", "$61.60", false)
			@separator.Separator()
			@Cart001SummaryRow("Total", "$677.60", true)
		</div>
		<div class="space-y-2">
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Checkout
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				Continue Shopping
			}
		</div>
	</div>
}

templ Cart001SummaryRow(label string, value string, isTotal bool) {
	<div
		class={ templ.KV("flex justify-between", true),
		templ.KV("text-sm", !isTotal),
		templ.KV("font-medium", isTotal) }
	>
		<span>{ label }</span>
		<span>{ value }</span>
	</div>
}
```

### cart_002.templ

**Path:** `ecommerce/cart_002.templ`

```templ
package ecommerce

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

// Cart002 - Full Cart Page
templ Cart002() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-6xl mx-auto">
			@Cart002Header()
			<div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
				<div class="lg:col-span-2">
					@Cart002CartItems()
				</div>
				<div>
					@Cart002OrderSummary()
				</div>
			</div>
		</div>
	</div>
}

templ Cart002Header() {
	<div class="mb-8">
		<h1 class="text-3xl font-bold">Shopping Cart</h1>
		<p class="text-muted-foreground mt-1">3 items in your cart</p>
	</div>
}

templ Cart002CartItems() {
	@card.Card() {
		@card.Content() {
			<div class="hidden md:block">
				@Cart002DesktopTable()
			</div>
			<div class="md:hidden space-y-4">
				@Cart002MobileItems()
			</div>
			<div class="mt-6 flex flex-col sm:flex-row sm:justify-between items-start sm:items-center gap-4">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					@icon.ArrowLeft(icon.Props{Size: 16, Class: "mr-2"})
					Continue Shopping
				}
				@button.Button(button.Props{
					Variant: button.VariantDestructive,
					Size:    button.SizeSm,
				}) {
					Clear Cart
				}
			</div>
		}
	}
}

templ Cart002DesktopTable() {
	@table.Table() {
		@table.Header() {
			@table.Row() {
				@table.Head(table.HeadProps{Class: "w-[100px]"}) {
					Product
				}
				@table.Head()
				@table.Head() {
					Price
				}
				@table.Head() {
					Quantity
				}
				@table.Head(table.HeadProps{Class: "text-right"}) {
					Total
				}
				@table.Head(table.HeadProps{Class: "w-[50px]"})
			}
		}
		@table.Body() {
			@Cart002CartRow(
				"Wireless Headphones",
				"Color: Black, Model: WH-1000XM4",
				"$199.00",
				1,
				"$199.00",
				"/assets/img/placeholder.svg",
			)
			@Cart002CartRow(
				"Smart Watch Series 7",
				"Size: 44mm, Color: Silver",
				"$299.00",
				1,
				"$299.00",
				"/assets/img/placeholder.svg",
			)
			@Cart002CartRow(
				"Ergonomic Laptop Stand",
				"Material: Aluminum, Color: Space Gray",
				"$59.00",
				2,
				"$118.00",
				"/assets/img/placeholder.svg",
			)
		}
	}
}

templ Cart002CartRow(name string, description string, price string, quantity int, total string, imageUrl string) {
	@table.Row() {
		@table.Cell() {
			<img
				src={ imageUrl }
				alt={ name }
				class="w-16 h-16 rounded object-cover"
			/>
		}
		@table.Cell() {
			<div>
				<div class="font-medium">{ name }</div>
				<div class="text-sm text-muted-foreground">{ description }</div>
			</div>
		}
		@table.Cell() {
			{ price }
		}
		@table.Cell() {
			<div class="flex items-center gap-2">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeIcon,
				}) {
					@icon.Minus(icon.Props{Size: 14})
				}
				@input.Input(input.Props{
					Value: fmt.Sprintf("%d", quantity),
				})
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeIcon,
				}) {
					@icon.Plus(icon.Props{Size: 14})
				}
			</div>
		}
		@table.Cell(table.CellProps{Class: "text-right font-medium"}) {
			{ total }
		}
		@table.Cell() {
			<button class="text-muted-foreground hover:text-foreground">
				@icon.Trash2(icon.Props{Size: 16})
			</button>
		}
	}
}

templ Cart002OrderSummary() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Order Summary
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="space-y-2">
					@Cart002SummaryRow("Subtotal", "$616.00", false)
					@Cart002SummaryRow("Shipping", "Free", false)
					@Cart002SummaryRow("Tax", "$61.60", false)
				</div>
				@separator.Separator()
				@Cart002SummaryRow("Total", "$677.60", true)
				<div class="space-y-2 mt-6">
					<label class="text-sm font-medium">Promo Code</label>
					<div class="flex gap-2">
						@input.Input(input.Props{
							Placeholder: "Enter code",
						})
						@button.Button(button.Props{
							Variant: button.VariantOutline,
						}) {
							Apply
						}
					</div>
				</div>
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Proceed to Checkout
			}
		}
	}
}

templ Cart002MobileItems() {
	@Cart002MobileCartItem(
		"Wireless Headphones",
		"Color: Black, Model: WH-1000XM4",
		"$199.00",
		1,
		"$199.00",
		"/assets/img/placeholder.svg",
	)
	@separator.Separator()
	@Cart002MobileCartItem(
		"Smart Watch Series 7",
		"Size: 44mm, Color: Silver",
		"$299.00",
		1,
		"$299.00",
		"/assets/img/placeholder.svg",
	)
	@separator.Separator()
	@Cart002MobileCartItem(
		"Ergonomic Laptop Stand",
		"Material: Aluminum, Color: Space Gray",
		"$59.00",
		2,
		"$118.00",
		"/assets/img/placeholder.svg",
	)
}

templ Cart002MobileCartItem(name string, description string, price string, quantity int, total string, imageUrl string) {
	<div class="space-y-3">
		<div class="flex gap-3">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-20 h-20 rounded object-cover"
			/>
			<div class="flex-1">
				<div class="flex justify-between items-start">
					<div>
						<h4 class="font-medium">{ name }</h4>
						<p class="text-sm text-muted-foreground">{ description }</p>
					</div>
					<button class="text-muted-foreground hover:text-foreground ml-2">
						@icon.Trash2(icon.Props{Size: 16})
					</button>
				</div>
				<div class="flex justify-between items-center mt-2">
					<span class="text-sm">{ price } each</span>
					<span class="font-medium">{ total }</span>
				</div>
			</div>
		</div>
		<div class="flex items-center gap-2">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeIcon,
			}) {
				@icon.Minus(icon.Props{Size: 14})
			}
			@input.Input(input.Props{
				Type:  "number",
				Value: fmt.Sprintf("%d", quantity),
			})
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeIcon,
			}) {
				@icon.Plus(icon.Props{Size: 14})
			}
		</div>
	</div>
}

templ Cart002SummaryRow(label string, value string, isTotal bool) {
	<div
		class={ templ.KV("flex justify-between", true),
		templ.KV("text-sm", !isTotal),
		templ.KV("font-semibold text-lg", isTotal) }
	>
		<span>{ label }</span>
		<span>{ value }</span>
	</div>
}
```

### cart_003.templ

**Path:** `ecommerce/cart_003.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Cart003 - Empty Cart State
templ Cart003() {
	<div class="flex items-center justify-center min-h-screen p-6">
		<div class="text-center max-w-md">
			@Cart003EmptyState()
		</div>
	</div>
}

templ Cart003EmptyState() {
	<div class="space-y-6">
		@Cart003Icon()
		@Cart003Content()
		@Cart003Actions()
	</div>
}

templ Cart003Icon() {
	<div class="w-24 h-24 bg-muted rounded-full flex items-center justify-center mx-auto">
		@icon.ShoppingCart(icon.Props{Size: 40, Class: "text-muted-foreground"})
	</div>
}

templ Cart003Content() {
	<div class="space-y-2">
		<h2 class="text-2xl font-semibold">Your cart is empty</h2>
		<p class="text-muted-foreground">
			Looks like you haven't added any items to your cart yet. 
			Start shopping and discover amazing products!
		</p>
	</div>
}

templ Cart003Actions() {
	<div class="space-y-3">
		@button.Button(button.Props{
			Class: "w-full sm:w-auto",
		}) {
			Start Shopping
		}
		<div class="text-sm text-muted-foreground">
			or
			<a href="#" class="underline underline-offset-4 hover:text-foreground">
				view your wishlist
			</a>
		</div>
	</div>
}

// Alternative empty cart design with product suggestions
templ Cart003WithSuggestions() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-4xl mx-auto">
			<div class="text-center py-12">
				@Cart003EmptyState()
			</div>
			<div class="mt-12">
				@Cart003Suggestions()
			</div>
		</div>
	</div>
}

templ Cart003Suggestions() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Popular Products</h3>
		<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
			@Cart003SuggestionCard("Wireless Mouse", "$29.99", "/assets/img/placeholder.svg")
			@Cart003SuggestionCard("USB-C Hub", "$49.99", "/assets/img/placeholder.svg")
			@Cart003SuggestionCard("Phone Case", "$19.99", "/assets/img/placeholder.svg")
			@Cart003SuggestionCard("Desk Lamp", "$39.99", "/assets/img/placeholder.svg")
		</div>
	</div>
}

templ Cart003SuggestionCard(name string, price string, imageUrl string) {
	<div class="group cursor-pointer">
		<div class="aspect-square rounded-lg overflow-hidden bg-muted mb-2">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
			/>
		</div>
		<h4 class="font-medium text-sm">{ name }</h4>
		<p class="text-sm text-muted-foreground">{ price }</p>
	</div>
}
```

### checkout_001.templ

**Path:** `ecommerce/checkout_001.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/radio"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

// Checkout001 - Checkout Form
templ Checkout001() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-6xl mx-auto">
			<h1 class="text-3xl font-bold mb-8">Checkout</h1>
			<div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
				<div class="lg:col-span-2 space-y-6">
					@Checkout001ShippingInfo()
					@Checkout001PaymentMethod()
				</div>
				<div>
					@Checkout001OrderSummary()
				</div>
			</div>
		</div>
	</div>
}

templ Checkout001ShippingInfo() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Shipping Information
			}
		}
		@card.Content(card.ContentProps{
			Class: "space-y-4",
		}) {
			<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
				@form.Item() {
					@label.Label(label.Props{For: "firstName"}) {
						First Name
					}
					@input.Input(input.Props{
						ID:          "firstName",
						Placeholder: "John",
					})
				}
				@form.Item() {
					@label.Label(label.Props{For: "lastName"}) {
						Last Name
					}
					@input.Input(input.Props{
						ID:          "lastName",
						Placeholder: "Doe",
					})
				}
			</div>
			@form.Item() {
				@label.Label(label.Props{For: "email"}) {
					Email
				}
				@input.Input(input.Props{
					ID:          "email",
					Type:        "email",
					Placeholder: "john@example.com",
				})
			}
			@form.Item() {
				@label.Label(label.Props{For: "address"}) {
					Street Address
				}
				@input.Input(input.Props{
					ID:          "address",
					Placeholder: "123 Main Street",
				})
			}
			<div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
				@form.Item() {
					@label.Label(label.Props{For: "city"}) {
						City
					}
					@input.Input(input.Props{
						ID:          "city",
						Placeholder: "New York",
					})
				}
				@form.Item() {
					@label.Label(label.Props{For: "state"}) {
						State
					}
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							ID:    "state",
							Class: "w-full",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Select",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "ny"}) {
								NY
							}
							@selectbox.Item(selectbox.ItemProps{Value: "ca"}) {
								CA
							}
							@selectbox.Item(selectbox.ItemProps{Value: "tx"}) {
								TX
							}
						}
					}
				}
				@form.Item() {
					@label.Label(label.Props{For: "zip"}) {
						ZIP Code
					}
					@input.Input(input.Props{
						ID:          "zip",
						Placeholder: "10001",
					})
				}
			</div>
			<div class="flex items-center space-x-2">
				@checkbox.Checkbox(checkbox.Props{ID: "saveInfo"})
				@label.Label(label.Props{
					For:   "saveInfo",
					Class: "text-sm font-normal cursor-pointer",
				}) {
					Save this information for next time
				}
			</div>
		}
	}
}

templ Checkout001PaymentMethod() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Payment Method
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="space-y-3">
					@Checkout001PaymentOption("card", "Credit Card", icon.CreditCard)
					@Checkout001PaymentOption("paypal", "PayPal", icon.DollarSign)
					@Checkout001PaymentOption("apple", "Apple Pay", icon.Smartphone)
				</div>
				@separator.Separator(separator.Props{Class: "my-4"})
				<div class="space-y-4">
					@form.Item() {
						@label.Label(label.Props{For: "cardNumber"}) {
							Card Number
						}
						@input.Input(input.Props{
							ID:          "cardNumber",
							Placeholder: "1234 5678 9012 3456",
						})
					}
					<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
						@form.Item() {
							@label.Label(label.Props{For: "expiry"}) {
								Expiry Date
							}
							@input.Input(input.Props{
								ID:          "expiry",
								Placeholder: "MM/YY",
							})
						}
						@form.Item() {
							@label.Label(label.Props{For: "cvv"}) {
								CVV
							}
							@input.Input(input.Props{
								ID:          "cvv",
								Placeholder: "123",
							})
						}
					</div>
				</div>
			</div>
		}
	}
}

templ Checkout001PaymentOption(value string, labelText string, iconFunc func(...icon.Props) templ.Component) {
	<div class="flex items-center space-x-2">
		@radio.Radio(radio.Props{
			Value: value,
			ID:    value,
			Name:  "payment-method",
		})
		@label.Label(label.Props{
			For:   value,
			Class: "flex items-center gap-2 cursor-pointer font-normal",
		}) {
			@iconFunc(icon.Props{Size: 18})
			{ labelText }
		}
	</div>
}

templ Checkout001OrderSummary() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Order Summary
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@Checkout001OrderItem("Wireless Headphones", "1x", "$199.00")
				@Checkout001OrderItem("Smart Watch", "1x", "$299.00")
				@Checkout001OrderItem("Laptop Stand", "2x", "$118.00")
				@separator.Separator()
				<div class="space-y-2">
					@Checkout001SummaryRow("Subtotal", "$616.00", false)
					@Checkout001SummaryRow("Shipping", "Free", false)
					@Checkout001SummaryRow("Tax", "$61.60", false)
				</div>
				@separator.Separator()
				@Checkout001SummaryRow("Total", "$677.60", true)
			</div>
		}
		@card.Footer(card.FooterProps{
			Class: "flex-wrap",
		}) {
			@button.Button(button.Props{
				Class: "w-full h-12",
			}) {
				@icon.Lock(icon.Props{Size: 16, Class: "mr-2"})
				Complete Order
			}
			<p class="text-xs text-center text-muted-foreground mt-2">
				Your payment information is encrypted and secure
			</p>
		}
	}
}

templ Checkout001OrderItem(name string, quantity string, price string) {
	<div class="flex justify-between text-sm">
		<div class="flex gap-2">
			<span class="text-muted-foreground">{ quantity }</span>
			<span>{ name }</span>
		</div>
		<span>{ price }</span>
	</div>
}

templ Checkout001SummaryRow(label string, value string, isTotal bool) {
	<div
		class={ templ.KV("flex justify-between", true),
		templ.KV("text-sm", !isTotal),
		templ.KV("font-semibold text-base", isTotal) }
	>
		<span>{ label }</span>
		<span>{ value }</span>
	</div>
}
```

### checkout_002.templ

**Path:** `ecommerce/checkout_002.templ`

```templ
package ecommerce

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

// Checkout002 - Order Summary Card
templ Checkout002() {
	<div class="flex items-center justify-center min-h-screen p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@Checkout002OrderSummary()
		</div>
	</div>
}

templ Checkout002OrderSummary() {
	@card.Card() {
		@card.Header() {
			<div class="flex items-center justify-between">
				@card.Title() {
					Order Confirmed
				}
				@badge.Badge(badge.Props{
					Variant: badge.VariantDefault,
					Class:   "bg-green-100 text-green-800 border-green-200",
				}) {
					@icon.Check(icon.Props{Size: 14, Class: "mr-1"})
					Paid
				}
			</div>
		}
		@card.Content() {
			<div class="space-y-6">
				@Checkout002SuccessMessage()
				@separator.Separator()
				@Checkout002OrderInfo()
				@separator.Separator()
				@Checkout002ItemsList()
				@separator.Separator()
				@Checkout002PricingSummary()
				@separator.Separator()
				@Checkout002ShippingInfo()
				@Checkout002Actions()
			</div>
		}
	}
}

templ Checkout002SuccessMessage() {
	<div class="text-center space-y-2">
		<div class="w-16 h-16 mx-auto bg-green-100 rounded-full flex items-center justify-center">
			@icon.CircleCheck(icon.Props{Size: 32, Class: "text-green-600"})
		</div>
		<h3 class="text-lg font-semibold">Thank you for your order!</h3>
		<p class="text-sm text-muted-foreground">
			We've sent a confirmation email to john@example.com
		</p>
	</div>
}

templ Checkout002OrderInfo() {
	<div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-sm">
		<div>
			<p class="text-muted-foreground">Order Number</p>
			<p class="font-medium">#ORD-2024-1234</p>
		</div>
		<div>
			<p class="text-muted-foreground">Order Date</p>
			<p class="font-medium">December 15, 2024</p>
		</div>
		<div>
			<p class="text-muted-foreground">Payment Method</p>
			<p class="font-medium">Visa ending in 4242</p>
		</div>
		<div>
			<p class="text-muted-foreground">Delivery Estimate</p>
			<p class="font-medium">Dec 18-20, 2024</p>
		</div>
	</div>
}

templ Checkout002ItemsList() {
	<div class="space-y-4">
		<h4 class="font-medium">Order Items</h4>
		<div class="space-y-3">
			@Checkout002OrderItem(
				"Premium Wireless Headphones",
				"Color: Midnight Black",
				1,
				"$299.00",
				"/assets/img/placeholder.svg",
			)
			@Checkout002OrderItem(
				"Minimalist Leather Watch",
				"Size: 40mm, Color: Brown",
				1,
				"$199.00",
				"/assets/img/placeholder.svg",
			)
			@Checkout002OrderItem(
				"Canvas Backpack",
				"Color: Navy Blue",
				2,
				"$178.00",
				"/assets/img/placeholder.svg",
			)
		</div>
	</div>
}

templ Checkout002OrderItem(name string, variant string, quantity int, price string, imageUrl string) {
	<div class="flex gap-3">
		<div class="w-12 h-12 rounded overflow-hidden bg-muted flex-shrink-0">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-full h-full object-cover"
			/>
		</div>
		<div class="flex-1 min-w-0">
			<h5 class="text-sm font-medium line-clamp-1">{ name }</h5>
			<p class="text-xs text-muted-foreground">{ variant }</p>
		</div>
		<div class="text-right text-sm">
			<p class="font-medium">{ price }</p>
			<p class="text-muted-foreground">Qty: { fmt.Sprintf("%d", quantity) }</p>
		</div>
	</div>
}

templ Checkout002PricingSummary() {
	<div class="space-y-2">
		@Checkout002PriceRow("Subtotal", "$676.00", false)
		@Checkout002PriceRow("Shipping", "Free", false)
		@Checkout002PriceRow("Tax", "$67.60", false)
		<div class="pt-2">
			@Checkout002PriceRow("Total", "$743.60", true)
		</div>
	</div>
}

templ Checkout002PriceRow(label string, value string, isTotal bool) {
	<div
		class={ templ.KV("flex justify-between", true),
		templ.KV("text-sm", !isTotal),
		templ.KV("text-base font-semibold", isTotal) }
	>
		<span class={ templ.KV("text-muted-foreground", !isTotal) }>{ label }</span>
		<span>{ value }</span>
	</div>
}

templ Checkout002ShippingInfo() {
	<div class="space-y-3">
		<h4 class="font-medium">Shipping Information</h4>
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-sm">
			<div>
				<p class="text-muted-foreground mb-1">Shipping Address</p>
				<p>John Doe</p>
				<p>123 Main Street, Apt 4B</p>
				<p>New York, NY 10001</p>
				<p>United States</p>
			</div>
			<div>
				<p class="text-muted-foreground mb-1">Billing Address</p>
				<p>Same as shipping address</p>
			</div>
		</div>
		<div class="flex items-center gap-2 text-sm text-muted-foreground bg-muted/50 p-3 rounded-lg">
			@icon.Truck(icon.Props{Size: 16})
			<span>You'll receive tracking information once your order ships</span>
		</div>
	</div>
}

templ Checkout002Actions() {
	<div class="flex flex-col sm:flex-row gap-3">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Class:   "w-full sm:flex-1",
		}) {
			@icon.Download(icon.Props{Size: 16, Class: "mr-2"})
			Download Invoice
		}
		@button.Button(button.Props{
			Class: "w-full sm:flex-1",
		}) {
			Continue Shopping
		}
	</div>
}
```

### checkout_003.templ

**Path:** `ecommerce/checkout_003.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/alert"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Checkout003 - Order Success Page
templ Checkout003() {
	<div class="min-h-screen flex items-center justify-center p-6">
		<div class="w-full max-w-2xl space-y-8">
			@Checkout003Success()
			@Checkout003NextSteps()
			@Checkout003Help()
		</div>
	</div>
}

templ Checkout003Success() {
	<div class="text-center space-y-4">
		<div class="w-20 h-20 bg-green-100 rounded-full flex items-center justify-center mx-auto">
			@icon.CircleCheck(icon.Props{Size: 40, Class: "text-green-600"})
		</div>
		<div class="space-y-2">
			<h1 class="text-3xl font-bold">Order Placed Successfully!</h1>
			<p class="text-lg text-muted-foreground">
				Thank you for your purchase. Your order #12345 has been confirmed.
			</p>
		</div>
		<div class="flex flex-col sm:flex-row gap-3 justify-center pt-4">
			@button.Button(button.Props{
				Class: "w-full sm:w-auto",
			}) {
				View Order Details
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full sm:w-auto",
			}) {
				@icon.ArrowLeft(icon.Props{Size: 16, Class: "mr-2"})
				Continue Shopping
			}
		</div>
	</div>
}

templ Checkout003NextSteps() {
	<div class="space-y-4">
		<h2 class="text-xl font-semibold text-center">What happens next?</h2>
		<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
			@Checkout003Step(
				icon.Mail,
				"Order Confirmation",
				"You'll receive an email confirmation with your order details and receipt.",
			)
			@Checkout003Step(
				icon.Package,
				"Order Processing",
				"We'll prepare your items for shipping within 1-2 business days.",
			)
			@Checkout003Step(
				icon.Truck,
				"Delivery",
				"Track your package with the tracking number we'll send via email.",
			)
		</div>
	</div>
}

templ Checkout003Step(iconFunc func(...icon.Props) templ.Component, title string, description string) {
	<div class="text-center space-y-3">
		<div class="w-12 h-12 bg-muted rounded-full flex items-center justify-center mx-auto">
			@iconFunc(icon.Props{Size: 20, Class: "text-muted-foreground"})
		</div>
		<div>
			<h3 class="font-medium">{ title }</h3>
			<p class="text-sm text-muted-foreground mt-1">{ description }</p>
		</div>
	</div>
}

templ Checkout003Help() {
	@alert.Alert() {
		@icon.Info(icon.Props{Size: 16})
		@alert.Title() {
			Need Help?
		}
		@alert.Description() {
			If you have any questions about your order, please contact our customer support at
			<a href="mailto:support@example.com" class="underline">support@example.com</a>
			or call 1-800-123-4567.
		}
	}
}

// Alternative minimalist success design
templ Checkout003Minimal() {
	<div class="min-h-screen flex items-center justify-center p-6">
		<div class="text-center max-w-md">
			<div class="space-y-6">
				@icon.CircleCheck(icon.Props{Size: 64, Class: "text-green-600 mx-auto"})
				<div class="space-y-2">
					<h1 class="text-2xl font-semibold">Payment Successful</h1>
					<p class="text-muted-foreground">
						Order #12345 • $743.60
					</p>
				</div>
				<div class="pt-2">
					@button.Button(button.Props{
						Class: "w-full sm:w-auto",
					}) {
						Done
					}
				</div>
			</div>
		</div>
	</div>
}
```

### order_001.templ

**Path:** `ecommerce/order_001.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

// Order001 - Order History List
templ Order001() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-6xl mx-auto">
			@Order001Header()
			@Order001Tabs()
		</div>
	</div>
}

templ Order001Header() {
	<div class="mb-8">
		<h1 class="text-3xl font-bold">Order History</h1>
		<p class="text-muted-foreground mt-1">Track and manage your orders</p>
	</div>
}

templ Order001Tabs() {
	@tabs.Tabs() {
		@tabs.List(tabs.ListProps{
			Class: "mb-2 overflow-scroll",
		}) {
			@tabs.Trigger(tabs.TriggerProps{Value: "all"}) {
				All Orders
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "processing"}) {
				Processing
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "shipped"}) {
				Shipped
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "delivered"}) {
				Delivered
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "cancelled"}) {
				Cancelled
			}
		}
		@tabs.Content(tabs.ContentProps{Value: "all"}) {
			@Order001OrderTable()
		}
		@tabs.Content(tabs.ContentProps{Value: "processing"}) {
			<div class="text-center py-12 text-muted-foreground">
				No orders in processing
			</div>
		}
		@tabs.Content(tabs.ContentProps{Value: "shipped"}) {
			<div class="text-center py-12 text-muted-foreground">
				No shipped orders
			</div>
		}
		@tabs.Content(tabs.ContentProps{Value: "delivered"}) {
			<div class="text-center py-12 text-muted-foreground">
				No delivered orders
			</div>
		}
		@tabs.Content(tabs.ContentProps{Value: "cancelled"}) {
			<div class="text-center py-12 text-muted-foreground">
				No cancelled orders
			</div>
		}
	}
}

templ Order001OrderTable() {
	<div class="border rounded-lg overflow-x-auto">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						Order ID
					}
					@table.Head(table.HeadProps{Class: "hidden sm:table-cell"}) {
						Date
					}
					@table.Head(table.HeadProps{Class: "hidden md:table-cell"}) {
						Items
					}
					@table.Head() {
						Total
					}
					@table.Head() {
						Status
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Actions
					}
				}
			}
			@table.Body() {
				@Order001OrderRow(
					"#ORD-2024-1234",
					"Dec 15, 2024",
					"3 items",
					"$743.60",
					"delivered",
					"Delivered",
				)
				@Order001OrderRow(
					"#ORD-2024-1233",
					"Dec 12, 2024",
					"1 item",
					"$129.99",
					"shipped",
					"Shipped",
				)
				@Order001OrderRow(
					"#ORD-2024-1232",
					"Dec 10, 2024",
					"5 items",
					"$599.00",
					"processing",
					"Processing",
				)
				@Order001OrderRow(
					"#ORD-2024-1231",
					"Dec 8, 2024",
					"2 items",
					"$89.50",
					"cancelled",
					"Cancelled",
				)
			}
		}
	</div>
}

templ Order001OrderRow(orderID string, date string, items string, total string, status string, statusLabel string) {
	@table.Row() {
		@table.Cell() {
			<div>
				<a href="#" class="font-medium hover:underline text-xs sm:text-sm">{ orderID }</a>
				<div class="sm:hidden text-xs text-muted-foreground mt-1">{ date }</div>
			</div>
		}
		@table.Cell(table.CellProps{Class: "hidden sm:table-cell text-xs sm:text-sm"}) {
			{ date }
		}
		@table.Cell(table.CellProps{Class: "hidden md:table-cell text-xs sm:text-sm"}) {
			{ items }
		}
		@table.Cell() {
			<div>
				<span class="font-medium text-sm">{ total }</span>
				<div class="md:hidden text-xs text-muted-foreground">{ items }</div>
			</div>
		}
		@table.Cell() {
			@Order001StatusBadge(status, statusLabel)
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.EllipsisVertical(icon.Props{Size: 16})
					}
				}
				@dropdown.Content() {
					@dropdown.Item() {
						@icon.Eye(icon.Props{Size: 14, Class: "mr-2"})
						View Details
					}
					@dropdown.Item() {
						@icon.Download(icon.Props{Size: 14, Class: "mr-2"})
						Download Invoice
					}
					if status == "delivered" {
						@dropdown.Item() {
							@icon.RefreshCw(icon.Props{Size: 14, Class: "mr-2"})
							Return Items
						}
						@dropdown.Item() {
							@icon.Star(icon.Props{Size: 14, Class: "mr-2"})
							Leave Review
						}
					}
					if status == "processing" || status == "shipped" {
						@dropdown.Separator()
						@dropdown.Item() {
							@icon.X(icon.Props{Size: 14, Class: "mr-2"})
							Cancel Order
						}
					}
				}
			}
		}
	}
}

templ Order001StatusBadge(status string, label string) {
	switch status {
		case "delivered":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "bg-green-100 text-green-800 border-green-200",
			}) {
				{ label }
			}
		case "shipped":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "bg-blue-100 text-blue-800 border-blue-200",
			}) {
				{ label }
			}
		case "processing":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "bg-yellow-100 text-yellow-800 border-yellow-200",
			}) {
				{ label }
			}
		case "cancelled":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "bg-gray-100 text-gray-800 border-gray-200",
			}) {
				{ label }
			}
		default:
			@badge.Badge() {
				{ label }
			}
	}
}
```

### order_002.templ

**Path:** `ecommerce/order_002.templ`

```templ
package ecommerce

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

// Order002 - Order Detail View
templ Order002() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-4xl mx-auto">
			@Order002Header()
			@Order002Content()
		</div>
	</div>
}

templ Order002Header() {
	<div class="mb-6">
		<button class="flex items-center text-sm text-muted-foreground hover:text-foreground mb-4">
			@icon.ArrowLeft(icon.Props{Size: 16, Class: "mr-1"})
			Back to orders
		</button>
		<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
			<div>
				<h1 class="text-xl sm:text-2xl font-bold">Order #ORD-2024-1234</h1>
				<p class="text-sm text-muted-foreground mt-1">Placed on December 15, 2024</p>
			</div>
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "bg-green-100 text-green-800 border-green-200 w-fit",
			}) {
				Delivered
			}
		</div>
	</div>
}

templ Order002Content() {
	@tabs.Tabs() {
		@tabs.List() {
			@tabs.Trigger(tabs.TriggerProps{Value: "overview"}) {
				Overview
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "tracking"}) {
				Tracking
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "invoice"}) {
				Invoice
			}
		}
		@tabs.Content(tabs.ContentProps{Value: "overview"}) {
			<div class="space-y-6 mt-6">
				@Order002OrderItems()
				@Order002Summary()
				@Order002Addresses()
			</div>
		}
		@tabs.Content(tabs.ContentProps{Value: "tracking"}) {
			<div class="mt-6">
				@Order002TrackingInfo()
			</div>
		}
		@tabs.Content(tabs.ContentProps{Value: "invoice"}) {
			<div class="mt-6 text-center py-12">
				@button.Button() {
					@icon.Download(icon.Props{Size: 16, Class: "mr-2"})
					Download Invoice PDF
				}
			</div>
		}
	}
}

templ Order002OrderItems() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Order Items
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@Order002Item(
					"Premium Wireless Headphones",
					"Color: Midnight Black, SKU: WH-MB-001",
					1,
					"$299.00",
					"/assets/img/placeholder.svg",
				)
				@separator.Separator()
				@Order002Item(
					"Minimalist Leather Watch",
					"Size: 40mm, Color: Brown, SKU: MW-BR-40",
					1,
					"$199.00",
					"/assets/img/placeholder.svg",
				)
				@separator.Separator()
				@Order002Item(
					"Canvas Backpack",
					"Color: Navy Blue, SKU: CB-NB-001",
					2,
					"$178.00",
					"/assets/img/placeholder.svg",
				)
			</div>
		}
	}
}

templ Order002Item(name string, details string, quantity int, price string, imageUrl string) {
	<div class="flex flex-col sm:flex-row gap-4">
		<div class="flex gap-3">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-16 h-16 sm:w-20 sm:h-20 rounded-lg object-cover flex-shrink-0"
			/>
			<div class="flex-1">
				<h4 class="font-medium text-sm sm:text-base">{ name }</h4>
				<p class="text-xs sm:text-sm text-muted-foreground">{ details }</p>
				<div class="mt-2 flex items-center justify-between">
					<span class="text-xs sm:text-sm">Qty: { fmt.Sprintf("%d", quantity) }</span>
					<span class="font-medium text-sm sm:text-base">{ price }</span>
				</div>
			</div>
		</div>
		<div class="flex sm:flex-col gap-2 sm:gap-1">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeSm,
				Class:   "flex-1 sm:flex-initial",
			}) {
				Buy Again
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeSm,
				Class:   "flex-1 sm:flex-initial",
			}) {
				Review
			}
		</div>
	</div>
}

templ Order002Summary() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Payment Summary
			}
		}
		@card.Content() {
			<div class="space-y-2">
				@Order002SummaryRow("Subtotal", "$676.00", false)
				@Order002SummaryRow("Shipping", "Free", false)
				@Order002SummaryRow("Tax", "$67.60", false)
				@separator.Separator(separator.Props{Class: "my-2"})
				@Order002SummaryRow("Total", "$743.60", true)
			</div>
			<div class="mt-4 text-sm">
				<p class="text-muted-foreground">Payment Method</p>
				<p class="font-medium">Visa ending in 4242</p>
			</div>
		}
	}
}

templ Order002SummaryRow(label string, value string, isTotal bool) {
	<div
		class={ templ.KV("flex justify-between", true),
		templ.KV("text-sm", !isTotal),
		templ.KV("font-semibold", isTotal) }
	>
		<span>{ label }</span>
		<span>{ value }</span>
	</div>
}

templ Order002Addresses() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Delivery Information
			}
		}
		@card.Content() {
			<div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
				<div>
					<h4 class="font-medium mb-2">Shipping Address</h4>
					<address class="text-sm not-italic text-muted-foreground">
						John Doe
						<br/>
						123 Main Street, Apt 4B
						<br/>
						New York, NY 10001
						<br/>
						United States
						<br/>
						Phone: (555) 123-4567
					</address>
				</div>
				<div>
					<h4 class="font-medium mb-2">Billing Address</h4>
					<p class="text-sm text-muted-foreground">Same as shipping address</p>
				</div>
			</div>
		}
	}
}

templ Order002TrackingInfo() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Shipment Tracking
			}
			@card.Description() {
				Tracking Number: 1Z999AA10123456784
			}
		}
		@card.Content() {
			<div class="space-y-6">
				@Order002TrackingStep(
					"Order Placed",
					"Dec 15, 2024 at 10:30 AM",
					true,
					true,
				)
				@Order002TrackingStep(
					"Order Confirmed",
					"Dec 15, 2024 at 10:45 AM",
					true,
					true,
				)
				@Order002TrackingStep(
					"Shipped",
					"Dec 16, 2024 at 2:15 PM",
					true,
					true,
				)
				@Order002TrackingStep(
					"Out for Delivery",
					"Dec 18, 2024 at 8:00 AM",
					true,
					true,
				)
				@Order002TrackingStep(
					"Delivered",
					"Dec 18, 2024 at 3:30 PM",
					true,
					false,
				)
			</div>
		}
	}
}

templ Order002TrackingStep(title string, time string, completed bool, hasLine bool) {
	<div class="flex gap-3">
		<div class="flex flex-col items-center">
			<div
				class={ templ.KV("w-4 h-4 rounded-full", true),
				templ.KV("bg-primary", completed),
				templ.KV("bg-muted", !completed) }
			></div>
			if hasLine {
				<div
					class={ templ.KV("w-0.5 h-16 mt-1", true),
					templ.KV("bg-primary", completed),
					templ.KV("bg-muted", !completed) }
				></div>
			}
		</div>
		<div class="flex-1 pb-8">
			<h4
				class={ templ.KV("font-medium", completed),
				templ.KV("text-muted-foreground", !completed) }
			>
				{ title }
			</h4>
			<p class="text-sm text-muted-foreground">{ time }</p>
		</div>
	</div>
}
```

### product_001.templ

**Path:** `ecommerce/product_001.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Product001 - Simple Product Card
templ Product001() {
	<div class="flex items-center justify-center min-h-[400px] p-6 md:p-10">
		@Product001ProductCard()
	</div>
}

templ Product001ProductCard() {
	@card.Card(card.Props{
		Class: "w-full max-w-sm overflow-hidden hover:shadow-lg transition-shadow duration-200",
	}) {
		<div class="aspect-square relative overflow-hidden bg-muted">
			@Product001ProductImage()
			@Product001Badge()
		</div>
		@card.Content() {
			<div class="space-y-4">
				@Product001ProductInfo()
				@Product001Actions()
			</div>
		}
	}
}

templ Product001ProductImage() {
	<img
		src="/assets/img/placeholder.svg"
		alt="Product"
		class="w-full h-full object-cover"
	/>
}

templ Product001Badge() {
	<div class="absolute top-2 right-2">
		@badge.Badge(badge.Props{
			Variant: badge.VariantSecondary,
		}) {
			New
		}
	</div>
}

templ Product001ProductInfo() {
	<div>
		<h3 class="font-semibold text-lg">Premium Watch</h3>
		<p class="text-sm text-muted-foreground">Elegant timepiece for modern professionals</p>
		<div class="mt-2 flex items-baseline gap-2">
			<span class="text-2xl font-bold">$299</span>
			<span class="text-sm text-muted-foreground line-through">$399</span>
		</div>
	</div>
}

templ Product001Actions() {
	<div class="flex gap-2">
		@button.Button(button.Props{
			Class: "flex-1",
		}) {
			@icon.ShoppingCart(icon.Props{Size: 16, Class: "mr-2"})
			Add to Cart
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
		}) {
			@icon.Heart(icon.Props{Size: 16})
		}
	</div>
}
```

### product_002.templ

**Path:** `ecommerce/product_002.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/rating"
)

// Product002 - Product Grid
templ Product002() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Product002Header()
			@Product002Grid()
		</div>
	</div>
}

templ Product002Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold">Featured Products</h2>
		<p class="text-muted-foreground mt-2">Discover our hand-picked selection</p>
	</div>
}

templ Product002Grid() {
	<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6">
		@Product002ProductCard("Wireless Headphones", "$199", "$249", 4.5, "/assets/img/placeholder.svg", true, "Sale")
		@Product002ProductCard("Smart Watch", "$399", "", 4.8, "/assets/img/placeholder.svg", false, "")
		@Product002ProductCard("Camera Lens", "$899", "$999", 4.6, "/assets/img/placeholder.svg", true, "-10%")
		@Product002ProductCard("Laptop Stand", "$59", "", 4.3, "/assets/img/placeholder.svg", false, "")
	</div>
}

templ Product002ProductCard(name string, price string, oldPrice string, ratingValue float64, imageUrl string, hasBadge bool, badgeText string) {
	@card.Card(card.Props{
		Class: "overflow-hidden hover:shadow-lg transition-all duration-200",
	}) {
		<div class="aspect-square relative overflow-hidden bg-muted">
			<img
				src={ imageUrl }
				alt={ name }
				class="w-full h-full object-cover hover:scale-105 transition-transform duration-200"
			/>
			if hasBadge {
				<div class="absolute top-2 left-2">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
					}) {
						{ badgeText }
					}
				</div>
			}
		</div>
		@card.Content() {
			<div class="space-y-3">
				@Product002ProductInfo(name, price, oldPrice, ratingValue)
				@Product002Actions()
			</div>
		}
	}
}

templ Product002ProductInfo(name string, price string, oldPrice string, ratingValue float64) {
	<div>
		<h3 class="font-semibold line-clamp-1">{ name }</h3>
		<div class="flex items-center gap-2 mt-1">
			<div class="flex items-center">
				@rating.Rating(rating.Props{
					Value:    ratingValue,
					ReadOnly: true,
					Class:    "flex-row items-center",
				}) {
					@rating.Group() {
						for i := 1; i <= 5; i++ {
							@rating.Item(rating.ItemProps{
								Value: i,
								Style: rating.StyleStar,
							})
						}
					}
				}
			</div>
			<span class="text-xs text-muted-foreground">({ ratingValue })</span>
		</div>
		<div class="mt-2 flex items-baseline gap-2">
			<span class="font-bold text-lg">{ price }</span>
			if oldPrice != "" {
				<span class="text-sm text-muted-foreground line-through">{ oldPrice }</span>
			}
		</div>
	</div>
}

templ Product002Actions() {
	<div class="flex gap-2">
		@button.Button(button.Props{
			Class: "flex-1",
		}) {
			Add to Cart
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
		}) {
			@icon.Heart(icon.Props{Size: 14})
		}
	</div>
}
```

### product_003.templ

**Path:** `ecommerce/product_003.templ`

```templ
package ecommerce

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/carousel"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/rating"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

// Product003 - Product Detail Page
templ Product003() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			<div class="grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12">
				@Product003Gallery()
				@Product003Details()
			</div>
			@separator.Separator(separator.Props{Class: "my-12"})
			@Product003TabSection()
		</div>
	</div>
}

templ Product003Gallery() {
	<div class="space-y-4">
		@carousel.Carousel(carousel.Props{
			ID: "product-gallery",
		}) {
			@carousel.Content() {
				@carousel.Item() {
					<img src="/assets/img/placeholder.svg" alt="Product 1" class="w-full aspect-square object-cover rounded-lg"/>
				}
				@carousel.Item() {
					<img src="/assets/img/placeholder.svg" alt="Product 2" class="w-full aspect-square object-cover rounded-lg"/>
				}
				@carousel.Item() {
					<img src="/assets/img/placeholder.svg" alt="Product 3" class="w-full aspect-square object-cover rounded-lg"/>
				}
			}
			@carousel.Previous()
			@carousel.Next()
		}
	</div>
}

templ Product003Details() {
	<div class="space-y-6">
		@Product003Header()
		@Product003Price()
		@separator.Separator()
		@Product003Options()
		@Product003Actions()
		@separator.Separator()
		@Product003Features()
	</div>
}

templ Product003Header() {
	<div>
		<div class="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-2">
			<h1 class="text-2xl sm:text-3xl font-bold">Premium Smart Watch</h1>
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "w-fit",
			}) {
				In Stock
			}
		</div>
		<div class="flex flex-col sm:flex-row sm:items-center gap-2 sm:gap-4 mt-2">
			<div class="flex items-center">
				@rating.Rating(rating.Props{
					Value:    4.5,
					ReadOnly: true,
					Class:    "flex-row items-center",
				}) {
					@rating.Group() {
						for i := 1; i <= 5; i++ {
							@rating.Item(rating.ItemProps{
								Value: i,
								Style: rating.StyleStar,
							})
						}
					}
				}
			</div>
			<span class="text-sm text-muted-foreground">(127 reviews)</span>
		</div>
	</div>
}

templ Product003Price() {
	<div>
		<div class="flex items-center gap-2 sm:gap-3 flex-wrap">
			<span class="text-2xl sm:text-3xl font-bold">$299</span>
			<span class="text-lg sm:text-xl text-muted-foreground line-through">$399</span>
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
			}) {
				25% OFF
			}
		</div>
		<p class="text-sm text-muted-foreground mt-1">Free shipping on orders over $50</p>
	</div>
}

templ Product003Options() {
	<div class="space-y-4">
		<div>
			<label class="text-sm font-medium mb-2 block">Color</label>
			<div class="flex gap-2">
				@Product003ColorOption("bg-gray-900", true)
				@Product003ColorOption("bg-gray-500", false)
				@Product003ColorOption("bg-blue-600", false)
			</div>
		</div>
		<div>
			<label class="text-sm font-medium mb-2 block">Size</label>
			@selectbox.SelectBox() {
				@selectbox.Trigger(selectbox.TriggerProps{
					Class: "w-full",
				}) {
					@selectbox.Value(selectbox.ValueProps{
						Placeholder: "Select size",
					})
				}
				@selectbox.Content() {
					@selectbox.Item(selectbox.ItemProps{Value: "40mm"}) {
						40mm
					}
					@selectbox.Item(selectbox.ItemProps{Value: "44mm"}) {
						44mm
					}
				}
			}
		</div>
	</div>
}

templ Product003ColorOption(color string, selected bool) {
	<button
		class={ fmt.Sprintf("w-10 h-10 rounded-full %s ring-2 ring-offset-2 transition-all", color),
			templ.KV("ring-primary", selected),
			templ.KV("ring-transparent hover:ring-gray-300", !selected) }
		aria-label="Select color"
	></button>
}

templ Product003Actions() {
	<div class="space-y-3">
		<div class="flex flex-col sm:flex-row gap-3">
			@button.Button(button.Props{
				Class: "flex-1",
			}) {
				@icon.ShoppingCart(icon.Props{Size: 18, Class: "mr-2"})
				Add to Cart
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				@icon.Heart(icon.Props{Size: 18})
			}
		</div>
		@button.Button(button.Props{
			Variant: button.VariantSecondary,
			Class:   "w-full",
		}) {
			Buy Now
		}
	</div>
}

templ Product003Features() {
	<div class="grid grid-cols-2 sm:flex sm:flex-wrap gap-3 sm:gap-4 text-sm">
		@Product003Feature(icon.Truck, "Free Shipping")
		@Product003Feature(icon.RefreshCw, "30-Day Returns")
		@Product003Feature(icon.Shield, "2-Year Warranty")
		@Product003Feature(icon.CreditCard, "Secure Payment")
	</div>
}

templ Product003Feature(iconFunc func(...icon.Props) templ.Component, text string) {
	<div class="flex items-center gap-2 text-muted-foreground">
		@iconFunc(icon.Props{Size: 16})
		<span>{ text }</span>
	</div>
}

templ Product003TabSection() {
	@tabs.Tabs() {
		@tabs.List(tabs.ListProps{
			Class: "mb-3",
		}) {
			@tabs.Trigger(tabs.TriggerProps{Value: "specifications"}) {
				Specifications
			}
			@tabs.Trigger(tabs.TriggerProps{Value: "reviews"}) {
				Reviews
			}
		}
		@tabs.Content(tabs.ContentProps{Value: "specifications"}) {
			@accordion.Accordion() {
				@accordion.Item() {
					@accordion.Trigger() {
						Dimensions & Weight
					}
					@accordion.Content() {
						<div class="space-y-1 text-sm">
							<p>Case Size: 44mm x 38mm x 10.7mm</p>
							<p>Weight: 32g (without band)</p>
							<p>Band Size: Fits 140-210mm wrists</p>
						</div>
					}
				}
				@accordion.Item() {
					@accordion.Trigger() {
						Display
					}
					@accordion.Content() {
						<div class="space-y-1 text-sm">
							<p>Type: AMOLED touchscreen</p>
							<p>Resolution: 396 x 484 pixels</p>
							<p>Always-on display</p>
						</div>
					}
				}
			}
		}
		@tabs.Content(tabs.ContentProps{Value: "reviews"}) {
			<div class="text-center py-8 text-muted-foreground">
				<p>No reviews yet. Be the first to review this product!</p>
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "mt-4",
				}) {
					Write a Review
				}
			</div>
		}
	}
}
```

### product_004.templ

**Path:** `ecommerce/product_004.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/rating"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

// Product004 - Product List View
templ Product004() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-5xl mx-auto">
			@Product004Header()
			<div class="space-y-4">
				@Product004ProductItem(
					"Wireless Noise-Canceling Headphones",
					"Premium audio experience with active noise cancellation and 30-hour battery life",
					"$249",
					"$299",
					4.6,
					"142",
					"/assets/img/placeholder.svg",
					true,
				)
				@separator.Separator()
				@Product004ProductItem(
					"Smart Fitness Watch",
					"Track your health and fitness goals with advanced sensors and GPS",
					"$199",
					"",
					4.4,
					"89",
					"/assets/img/placeholder.svg",
					true,
				)
				@separator.Separator()
				@Product004ProductItem(
					"Professional Camera Lens",
					"50mm f/1.8 prime lens for stunning portraits and low-light photography",
					"$599",
					"$699",
					4.8,
					"67",
					"/assets/img/placeholder.svg",
					false,
				)
			</div>
		</div>
	</div>
}

templ Product004Header() {
	<div class="mb-8">
		<h2 class="text-2xl font-bold">Search Results</h2>
		<p class="text-muted-foreground mt-1">Found 24 products</p>
	</div>
}

templ Product004ProductItem(name string, description string, price string, oldPrice string, rating float64, reviews string, imageUrl string, inStock bool) {
	<div class="flex flex-col sm:flex-row gap-4 p-4 rounded-lg hover:bg-muted/50 transition-colors">
		<div class="flex gap-4">
			@Product004Image(imageUrl, name)
			<div class="flex-1 min-w-0 sm:hidden">
				@Product004Info(name, description, rating, reviews, inStock)
			</div>
		</div>
		<div class="hidden sm:block flex-1 min-w-0">
			@Product004Info(name, description, rating, reviews, inStock)
		</div>
		<div class="flex sm:flex-col items-start sm:items-end justify-between sm:ml-4 gap-4 sm:gap-2">
			@Product004Pricing(price, oldPrice)
			@Product004Actions()
		</div>
	</div>
}

templ Product004Image(imageUrl string, altText string) {
	<div class="w-20 h-20 sm:w-24 sm:h-24 md:w-32 md:h-32 flex-shrink-0">
		<img
			src={ imageUrl }
			alt={ altText }
			class="w-full h-full object-cover rounded-lg"
		/>
	</div>
}

templ Product004Info(name string, description string, ratingValue float64, reviews string, inStock bool) {
	<div class="space-y-2">
		<div>
			<h3 class="font-semibold text-lg line-clamp-1">{ name }</h3>
			<p class="text-sm text-muted-foreground line-clamp-1 sm:line-clamp-2">{ description }</p>
		</div>
		<div class="flex flex-col sm:flex-row sm:items-center gap-2 sm:gap-4">
			<div class="flex items-center gap-2">
				<div class="flex items-center">
					@rating.Rating(rating.Props{
						Value:    ratingValue,
						ReadOnly: true,
						Class:    "flex-row items-center",
					}) {
						@rating.Group() {
							for i := 1; i <= 5; i++ {
								@rating.Item(rating.ItemProps{
									Value: i,
									Style: rating.StyleStar,
								})
							}
						}
					}
				</div>
				<span class="text-xs text-muted-foreground">({ reviews })</span>
			</div>
			if inStock {
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "text-xs",
				}) {
					In Stock
				}
			} else {
				@badge.Badge(badge.Props{
					Variant: badge.VariantDestructive,
					Class:   "text-xs",
				}) {
					Out of Stock
				}
			}
		</div>
	</div>
}

templ Product004Pricing(price string, oldPrice string) {
	<div class="text-right">
		<div class="font-bold text-lg">{ price }</div>
		if oldPrice != "" {
			<div class="text-sm text-muted-foreground line-through">{ oldPrice }</div>
		}
	</div>
}

templ Product004Actions() {
	<div class="flex gap-2 w-full sm:w-auto">
		@button.Button(button.Props{
			Class: "flex-1 sm:flex-initial",
		}) {
			@icon.ShoppingCart(icon.Props{Size: 14, Class: "mr-1"})
			Add
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
		}) {
			@icon.Heart(icon.Props{Size: 14})
		}
	</div>
}
```

### shop_001.templ

**Path:** `ecommerce/shop_001.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
	"github.com/templui/templui-pro/internal/ui/components/slider"
)

// Shop001 - Shop Layout with Sidebar Filters
templ Shop001() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<div class="min-h-screen bg-background">
			<!-- Mobile Filter Button -->
			<div class="lg:hidden border-b p-4">
				@sheet.Trigger() {
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Class:   "w-full",
					}) {
						@icon.Funnel(icon.Props{Size: 16, Class: "mr-2"})
						Filters
					}
				}
			</div>
			<div class="flex">
				<!-- Desktop Sidebar -->
				@Shop001Sidebar()
				@Shop001MainContent()
			</div>
		</div>
		<!-- Mobile Filter Drawer -->
		@sheet.Content(sheet.ContentProps{
			HideCloseButton: true,
		}) {
			@sheet.Header() {
				@sheet.Title() {
					Filters
				}
			}
			<div class="p-6 space-y-6">
				@Shop001CategoryFilter("mobile")
				@separator.Separator()
				@Shop001PriceFilter("mobile")
				@separator.Separator()
				@Shop001BrandFilter("mobile")
				@separator.Separator()
				@Shop001RatingFilter("mobile")
			</div>
		}
	}
}

templ Shop001Sidebar() {
	<aside class="w-64 border-r bg-background p-6 hidden lg:block">
		<div class="space-y-6">
			@Shop001FilterHeader()
			@Shop001CategoryFilter("desktop")
			@separator.Separator()
			@Shop001PriceFilter("desktop")
			@separator.Separator()
			@Shop001BrandFilter("desktop")
			@separator.Separator()
			@Shop001RatingFilter("desktop")
		</div>
	</aside>
}

templ Shop001FilterHeader() {
	<div class="flex items-center justify-between">
		<h3 class="font-semibold">Filters</h3>
		<button class="text-sm text-muted-foreground hover:text-foreground">
			Clear all
		</button>
	</div>
}

templ Shop001CategoryFilter(prefix string) {
	<div class="space-y-3">
		<h4 class="text-sm font-medium">Category</h4>
		<div class="space-y-2">
			@Shop001CheckboxItem(prefix+"-electronics", "Electronics", "124")
			@Shop001CheckboxItem(prefix+"-clothing", "Clothing", "89")
			@Shop001CheckboxItem(prefix+"-accessories", "Accessories", "67")
			@Shop001CheckboxItem(prefix+"-home", "Home & Garden", "45")
			@Shop001CheckboxItem(prefix+"-sports", "Sports", "32")
		</div>
	</div>
}

templ Shop001CheckboxItem(id string, labelText string, count string) {
	<div class="flex items-center justify-between">
		<div class="flex items-center space-x-2">
			@checkbox.Checkbox(checkbox.Props{ID: id})
			@label.Label(label.Props{
				For:   id,
				Class: "text-sm font-normal cursor-pointer",
			}) {
				{ labelText }
			}
		</div>
		<span class="text-xs text-muted-foreground">({ count })</span>
	</div>
}

templ Shop001PriceFilter(prefix string) {
	<div class="space-y-3">
		<h4 class="text-sm font-medium">Price Range</h4>
		<div class="space-y-4">
			@slider.Input(slider.InputProps{
				Min:   0,
				Max:   1000,
				Step:  10,
				Value: 100,
				Class: "w-full",
			})
			<div class="flex items-center justify-between text-sm">
				<span>$0</span>
				<span>$1000</span>
			</div>
		</div>
	</div>
}

templ Shop001BrandFilter(prefix string) {
	<div class="space-y-3">
		<h4 class="text-sm font-medium">Brand</h4>
		<div class="space-y-2">
			@Shop001CheckboxItem(prefix+"-apple", "Apple", "23")
			@Shop001CheckboxItem(prefix+"-samsung", "Samsung", "19")
			@Shop001CheckboxItem(prefix+"-sony", "Sony", "15")
			@Shop001CheckboxItem(prefix+"-nike", "Nike", "28")
			@Shop001CheckboxItem(prefix+"-adidas", "Adidas", "21")
		</div>
	</div>
}

templ Shop001RatingFilter(prefix string) {
	<div class="space-y-3">
		<h4 class="text-sm font-medium">Customer Rating</h4>
		<div class="space-y-2">
			@Shop001RatingOption(prefix+"-4-stars", "4 stars & up")
			@Shop001RatingOption(prefix+"-3-stars", "3 stars & up")
			@Shop001RatingOption(prefix+"-2-stars", "2 stars & up")
			@Shop001RatingOption(prefix+"-1-star", "1 star & up")
		</div>
	</div>
}

templ Shop001RatingOption(id string, labelText string) {
	<div class="flex items-center space-x-2">
		@checkbox.Checkbox(checkbox.Props{ID: id})
		@label.Label(label.Props{
			For:   id,
			Class: "text-sm font-normal cursor-pointer flex items-center gap-1",
		}) {
			<div class="flex">
				for i := 0; i < 4; i++ {
					@icon.Star(icon.Props{Size: 12, Class: "fill-current text-yellow-500"})
				}
			</div>
			<span>{ labelText }</span>
		}
	</div>
}

templ Shop001MainContent() {
	<main class="flex-1 p-6">
		<div class="space-y-6">
			@Shop001Header()
			@Shop001ProductGrid()
		</div>
	</main>
}

templ Shop001Header() {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
		<div>
			<h1 class="text-xl sm:text-2xl font-bold">All Products</h1>
			<p class="text-sm text-muted-foreground mt-1">Showing 24 of 156 products</p>
		</div>
		<div class="flex items-center gap-2 sm:gap-4">
			<div class="flex items-center gap-2">
				<span class="text-sm text-muted-foreground hidden sm:inline">Sort by:</span>
				@selectbox.SelectBox() {
					@selectbox.Trigger(selectbox.TriggerProps{
						Class: "w-32 sm:w-40",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Featured",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: "featured"}) {
							Featured
						}
						@selectbox.Item(selectbox.ItemProps{Value: "price-low"}) {
							Price: Low to High
						}
						@selectbox.Item(selectbox.ItemProps{Value: "price-high"}) {
							Price: High to Low
						}
						@selectbox.Item(selectbox.ItemProps{Value: "rating"}) {
							Customer Rating
						}
						@selectbox.Item(selectbox.ItemProps{Value: "newest"}) {
							Newest
						}
					}
				}
			</div>
			<div class="flex gap-1">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeIcon,
				}) {
					@icon.LayoutGrid(icon.Props{Size: 16})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.List(icon.Props{Size: 16})
				}
			</div>
		</div>
	</div>
}

templ Shop001ProductGrid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
		<!-- Products would be dynamically loaded here -->
		<div class="text-center col-span-full py-12 text-muted-foreground">
			Products will be displayed here
		</div>
	</div>
}
```

### shop_002.templ

**Path:** `ecommerce/shop_002.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Shop002 - Category Grid
templ Shop002() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Shop002Header()
			@Shop002CategoryGrid()
		</div>
	</div>
}

templ Shop002Header() {
	<div class="text-center mb-12">
		<h1 class="text-3xl font-bold mb-4">Shop by Category</h1>
		<p class="text-lg text-muted-foreground">
			Find exactly what you're looking for
		</p>
	</div>
}

templ Shop002CategoryGrid() {
	<div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 sm:gap-6">
		@Shop002CategoryCard(
			"Electronics",
			"1,234 products",
			"/assets/img/placeholder.svg",
			icon.Smartphone,
		)
		@Shop002CategoryCard(
			"Fashion",
			"856 products",
			"/assets/img/placeholder.svg",
			icon.Shirt,
		)
		@Shop002CategoryCard(
			"Home & Garden",
			"643 products",
			"/assets/img/placeholder.svg",
			icon.House,
		)
		@Shop002CategoryCard(
			"Sports & Outdoors",
			"412 products",
			"/assets/img/placeholder.svg",
			icon.Dumbbell,
		)
		@Shop002CategoryCard(
			"Books & Media",
			"789 products",
			"/assets/img/placeholder.svg",
			icon.Book,
		)
		@Shop002CategoryCard(
			"Toys & Games",
			"321 products",
			"/assets/img/placeholder.svg",
			icon.Gamepad2,
		)
		@Shop002CategoryCard(
			"Health & Beauty",
			"567 products",
			"/assets/img/placeholder.svg",
			icon.Heart,
		)
		@Shop002CategoryCard(
			"Automotive",
			"234 products",
			"/assets/img/placeholder.svg",
			icon.Car,
		)
	</div>
}

templ Shop002CategoryCard(title string, count string, imageUrl string, iconFunc func(...icon.Props) templ.Component) {
	<a href="#" class="group">
		@card.Card(card.Props{
			Class: "overflow-hidden hover:shadow-lg transition-all duration-200",
		}) {
			@aspectratio.AspectRatio(aspectratio.Props{
				Ratio: aspectratio.RatioVideo,
			}) {
				<div class="relative w-full h-full">
					<img
						src={ imageUrl }
						alt={ title }
						class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
					/>
					<div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
				</div>
			}
			@card.Content() {
				<div class="flex items-start justify-between">
					<div>
						<h3 class="font-semibold text-lg group-hover:text-primary transition-colors">
							{ title }
						</h3>
						<p class="text-sm text-muted-foreground">{ count }</p>
					</div>
					<div class="text-muted-foreground">
						@iconFunc(icon.Props{Size: 20})
					</div>
				</div>
			}
		}
	</a>
}

// Alternative minimalist category design
templ Shop002MinimalCategories() {
	<div class="min-h-screen p-6 md:p-10">
		<div class="max-w-5xl mx-auto">
			<h2 class="text-2xl font-bold mb-8">Browse Categories</h2>
			<div class="grid grid-cols-2 md:grid-cols-3 gap-4">
				@Shop002MinimalCard("Electronics", icon.Smartphone)
				@Shop002MinimalCard("Fashion", icon.Shirt)
				@Shop002MinimalCard("Home", icon.House)
				@Shop002MinimalCard("Sports", icon.Dumbbell)
				@Shop002MinimalCard("Books", icon.Book)
				@Shop002MinimalCard("Toys", icon.Gamepad2)
			</div>
		</div>
	</div>
}

templ Shop002MinimalCard(title string, iconFunc func(...icon.Props) templ.Component) {
	<a href="#" class="group">
		<div class="p-4 sm:p-6 border rounded-lg hover:border-primary hover:bg-muted/50 transition-all duration-200 text-center">
			<div class="w-10 h-10 sm:w-12 sm:h-12 mx-auto mb-3 text-muted-foreground group-hover:text-primary transition-colors flex items-center justify-center">
				@iconFunc(icon.Props{Size: 32, Class: "w-8 h-8 sm:w-10 sm:h-10"})
			</div>
			<h3 class="font-medium">{ title }</h3>
		</div>
	</a>
}
```

### shop_003.templ

**Path:** `ecommerce/shop_003.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/carousel"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Shop003 - Product Carousel / Featured Products
templ Shop003() {
	<section class="py-12 px-6 md:px-10">
		<div class="max-w-7xl mx-auto">
			@Shop003Header()
			@Shop003Carousel()
		</div>
	</section>
}

templ Shop003Header() {
	<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4 mb-8">
		<div>
			<h2 class="text-xl sm:text-2xl font-bold">Featured Products</h2>
			<p class="text-sm text-muted-foreground mt-1">Handpicked items just for you</p>
		</div>
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Class:   "w-full sm:w-auto",
		}) {
			View All
			@icon.ArrowRight(icon.Props{Size: 16, Class: "ml-2"})
		}
	</div>
}

templ Shop003Carousel() {
	@carousel.Carousel(carousel.Props{
		ID: "featured-products",
	}) {
		@carousel.Content() {
			@Shop003CarouselItem(
				"Smart Watch Pro",
				"$299",
				"/assets/img/placeholder.svg",
				true,
			)
			@Shop003CarouselItem(
				"Wireless Earbuds",
				"$149",
				"/assets/img/placeholder.svg",
				false,
			)
			@Shop003CarouselItem(
				"Leather Backpack",
				"$89",
				"/assets/img/placeholder.svg",
				true,
			)
			@Shop003CarouselItem(
				"Vintage Camera",
				"$599",
				"/assets/img/placeholder.svg",
				false,
			)
			@Shop003CarouselItem(
				"Running Shoes",
				"$129",
				"/assets/img/placeholder.svg",
				true,
			)
			@Shop003CarouselItem(
				"Coffee Maker",
				"$79",
				"/assets/img/placeholder.svg",
				false,
			)
		}
		@carousel.Previous()
		@carousel.Next()
	}
}

templ Shop003CarouselItem(name string, price string, imageUrl string, isNew bool) {
	@carousel.Item(carousel.ItemProps{
		Class: "basis-full sm:basis-1/2 lg:basis-1/3 xl:basis-1/4",
	}) {
		<div class="p-2">
			<div class="group cursor-pointer">
				<div class="aspect-square rounded-lg overflow-hidden bg-muted relative">
					<img
						src={ imageUrl }
						alt={ name }
						class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
					/>
					if isNew {
						@badge.Badge(badge.Props{
							Class: "absolute top-2 left-2",
						}) {
							New
						}
					}
					<div class="absolute inset-0 bg-black/0 group-hover:bg-black/10 transition-colors"></div>
				</div>
				<div class="mt-3 space-y-1">
					<h3 class="font-medium line-clamp-2 text-sm sm:text-base">{ name }</h3>
					<div class="flex items-center justify-between gap-2">
						<span class="font-bold text-sm sm:text-base">{ price }</span>
						@button.Button(button.Props{
							Size:    button.SizeSm,
							Variant: button.VariantOutline,
							Class:   "text-xs sm:text-sm",
						}) {
							Add to Cart
						}
					</div>
				</div>
			</div>
		</div>
	}
}

// Alternative banner style carousel
templ Shop003BannerCarousel() {
	<section class="w-full">
		@carousel.Carousel(carousel.Props{
			ID: "banner-carousel",
		}) {
			@carousel.Content() {
				@Shop003BannerSlide(
					"Summer Sale",
					"Up to 50% off on selected items",
					"Shop Now",
					"bg-gradient-to-r from-blue-500 to-purple-600",
				)
				@Shop003BannerSlide(
					"New Arrivals",
					"Check out our latest collection",
					"Explore",
					"bg-gradient-to-r from-green-500 to-teal-600",
				)
				@Shop003BannerSlide(
					"Free Shipping",
					"On orders over $50",
					"Learn More",
					"bg-gradient-to-r from-orange-500 to-red-600",
				)
			}
			@carousel.Previous()
			@carousel.Next()
		}
	</section>
}

templ Shop003BannerSlide(title string, subtitle string, cta string, gradient string) {
	@carousel.Item() {
		<div class={ "w-full h-64 md:h-80 flex items-center justify-center text-white", gradient }>
			<div class="text-center px-6">
				<h2 class="text-3xl md:text-5xl font-bold mb-4">{ title }</h2>
				<p class="text-lg md:text-xl mb-6 opacity-90">{ subtitle }</p>
				@button.Button(button.Props{
					Variant: button.VariantSecondary,
				}) {
					{ cta }
				}
			</div>
		</div>
	}
}
```

### wishlist_001.templ

**Path:** `ecommerce/wishlist_001.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

// Wishlist001 - Wishlist Grid
templ Wishlist001() {
	<div class="min-h-screen p-4 sm:p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Wishlist001Header()
			@Wishlist001Grid()
		</div>
	</div>
}

templ Wishlist001Header() {
	<div class="mb-8">
		<h1 class="text-2xl sm:text-3xl font-bold">My Wishlist</h1>
		<p class="text-muted-foreground mt-1">6 items saved</p>
	</div>
}

templ Wishlist001Grid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
		@Wishlist001Item(
			"Vintage Leather Jacket",
			"$299",
			"$399",
			"/assets/img/placeholder.svg",
			true,
			"In Stock",
		)
		@Wishlist001Item(
			"Designer Sunglasses",
			"$189",
			"",
			"/assets/img/placeholder.svg",
			true,
			"In Stock",
		)
		@Wishlist001Item(
			"Smart Home Speaker",
			"$79",
			"$99",
			"/assets/img/placeholder.svg",
			false,
			"Out of Stock",
		)
		@Wishlist001Item(
			"Wireless Keyboard",
			"$129",
			"",
			"/assets/img/placeholder.svg",
			true,
			"Low Stock",
		)
		@Wishlist001Item(
			"Running Shoes",
			"$149",
			"$179",
			"/assets/img/placeholder.svg",
			true,
			"In Stock",
		)
		@Wishlist001Item(
			"Coffee Maker Deluxe",
			"$199",
			"",
			"/assets/img/placeholder.svg",
			false,
			"Coming Soon",
		)
	</div>
}

templ Wishlist001Item(name string, price string, oldPrice string, imageUrl string, isAvailable bool, stockStatus string) {
	@card.Card(card.Props{
		Class: "overflow-hidden hover:shadow-lg transition-shadow duration-200",
	}) {
		<div class="relative">
			<div class="aspect-square overflow-hidden bg-muted">
				<img
					src={ imageUrl }
					alt={ name }
					class={ templ.KV("w-full h-full object-cover", true),
						templ.KV("opacity-50", !isAvailable) }
				/>
			</div>
			<button class="absolute top-2 right-2 w-10 h-10 bg-white/90 rounded-full flex items-center justify-center hover:bg-white transition-colors">
				@icon.X(icon.Props{Size: 20, Class: "text-muted-foreground"})
			</button>
			if oldPrice != "" {
				<div class="absolute top-2 left-2">
					@badge.Badge(badge.Props{
						Variant: badge.VariantDestructive,
					}) {
						Sale
					}
				</div>
			}
		</div>
		@card.Content() {
			<div class="space-y-3">
				@Wishlist001ProductInfo(name, price, oldPrice, stockStatus, isAvailable)
				@Wishlist001Actions(isAvailable)
			</div>
		}
	}
}

templ Wishlist001ProductInfo(name string, price string, oldPrice string, stockStatus string, isAvailable bool) {
	<div>
		<h3 class="font-semibold line-clamp-2 text-sm sm:text-base">{ name }</h3>
		<div class="flex items-baseline gap-2 mt-1">
			<span class="font-bold text-lg">{ price }</span>
			if oldPrice != "" {
				<span class="text-sm text-muted-foreground line-through">{ oldPrice }</span>
			}
		</div>
		<div class="mt-1">
			@Wishlist001StockBadge(stockStatus, isAvailable)
		</div>
	</div>
}

templ Wishlist001StockBadge(status string, isAvailable bool) {
	switch status {
		case "In Stock":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "text-xs bg-green-100 text-green-800 border-green-200",
			}) {
				{ status }
			}
		case "Low Stock":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "text-xs bg-yellow-100 text-yellow-800 border-yellow-200",
			}) {
				{ status }
			}
		case "Out of Stock":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "text-xs bg-red-100 text-red-800 border-red-200",
			}) {
				{ status }
			}
		case "Coming Soon":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
				Class:   "text-xs bg-blue-100 text-blue-800 border-blue-200",
			}) {
				{ status }
			}
		default:
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "text-xs",
			}) {
				{ status }
			}
	}
}

templ Wishlist001Actions(isAvailable bool) {
	<div class="flex gap-2">
		if isAvailable {
			@button.Button(button.Props{
				Size:  button.SizeDefault,
				Class: "flex-1 h-10 text-sm sm:text-base",
			}) {
				@icon.ShoppingCart(icon.Props{Size: 16, Class: "mr-1"})
				<span class="hidden sm:inline">Add to Cart</span>
				<span class="sm:hidden">Add</span>
			}
		} else {
			@button.Button(button.Props{
				Size:     button.SizeDefault,
				Class:    "flex-1 h-10 text-sm sm:text-base",
				Disabled: true,
			}) {
				Unavailable
			}
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    button.SizeIcon,
			Class:   "h-10 w-10",
		}) {
			@icon.Share2(icon.Props{Size: 16})
		}
	</div>
}

// Alternative empty wishlist state
templ Wishlist001Empty() {
	<div class="min-h-screen flex items-center justify-center p-6">
		<div class="text-center max-w-md">
			<div class="w-24 h-24 bg-muted rounded-full flex items-center justify-center mx-auto mb-6">
				@icon.Heart(icon.Props{Size: 40, Class: "text-muted-foreground"})
			</div>
			<h2 class="text-2xl font-semibold mb-2">Your wishlist is empty</h2>
			<p class="text-muted-foreground mb-6">
				Save items you love to your wishlist and share them with friends
			</p>
			@button.Button() {
				Start Shopping
			}
		</div>
	</div>
}
```

### wishlist_002.templ

**Path:** `ecommerce/wishlist_002.templ`

```templ
package ecommerce

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

// Wishlist002 - Compare Products
templ Wishlist002() {
	<div class="min-h-screen p-4 sm:p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Wishlist002Header()
			@Wishlist002CompareTable()
			@Wishlist002MobileView()
		</div>
	</div>
}

templ Wishlist002Header() {
	<div class="mb-8">
		<h1 class="text-2xl sm:text-3xl font-bold">Compare Products</h1>
		<p class="text-muted-foreground mt-1">Compare up to 4 products side by side</p>
	</div>
}

templ Wishlist002CompareTable() {
	<div class="hidden lg:block">
		@card.Card(card.Props{
			Class: "overflow-hidden",
		}) {
			<div class="overflow-x-auto">
				@table.Table() {
					@table.Header() {
						@table.Row() {
							@table.Head(table.HeadProps{Class: "w-48 sticky left-0 bg-background"}) {
								Feature
							}
							@table.Head(table.HeadProps{Class: "text-center min-w-[200px]"}) {
								@Wishlist002ProductHeader(
									"Smart Watch Pro",
									"$299",
									"/assets/img/placeholder.svg",
								)
							}
							@table.Head(table.HeadProps{Class: "text-center min-w-[200px]"}) {
								@Wishlist002ProductHeader(
									"Fitness Tracker Plus",
									"$199",
									"/assets/img/placeholder.svg",
								)
							}
							@table.Head(table.HeadProps{Class: "text-center min-w-[200px]"}) {
								@Wishlist002ProductHeader(
									"Basic Watch",
									"$99",
									"/assets/img/placeholder.svg",
								)
							}
							@table.Head(table.HeadProps{Class: "text-center min-w-[200px]"}) {
								<button class="w-full h-full min-h-[200px] flex flex-col items-center justify-center text-muted-foreground hover:text-foreground transition-colors">
									@icon.Plus(icon.Props{Size: 24, Class: "mb-2"})
									<span class="text-sm">Add Product</span>
								</button>
							}
						}
					}
					@table.Body() {
						@Wishlist002CompareRow("Display", []string{"1.4\" AMOLED", "1.2\" LCD", "Analog", "-"})
						@Wishlist002CompareRow("Battery Life", []string{"7 days", "10 days", "2 years", "-"})
						@Wishlist002CompareRow("Water Resistance", []string{"5 ATM", "3 ATM", "1 ATM", "-"})
						@Wishlist002CompareRow("GPS", []string{"Built-in", "Connected", "No", "-"})
						@Wishlist002CompareRow("Heart Rate", []string{"24/7", "During workouts", "No", "-"})
						@Wishlist002CompareRow("Sleep Tracking", []string{"Advanced", "Basic", "No", "-"})
						@Wishlist002CompareRow("Notifications", []string{"All apps", "Calls & texts", "No", "-"})
						@Wishlist002CompareRow("Weight", []string{"42g", "35g", "58g", "-"})
						@table.Row() {
							@table.Cell(table.CellProps{Class: "font-medium sticky left-0 bg-background"})
							@table.Cell(table.CellProps{Class: "font-medium sticky left-0 bg-background"}) {
								@button.Button(button.Props{
									Class: "w-full",
								}) {
									Add to Cart
								}
							}
							@table.Cell(table.CellProps{Class: "font-medium sticky left-0 bg-background"}) {
								@button.Button(button.Props{
									Class: "w-full",
								}) {
									Add to Cart
								}
							}
							@table.Cell(table.CellProps{Class: "font-medium sticky left-0 bg-background"}) {
								@button.Button(button.Props{
									Class: "w-full",
								}) {
									Add to Cart
								}
							}
						}
					}
				}
			</div>
		}
	</div>
}

templ Wishlist002ProductHeader(name string, price string, imageUrl string) {
	<div class="p-4">
		<button class="absolute top-2 right-2 p-1 text-muted-foreground hover:text-foreground">
			@icon.X(icon.Props{Size: 20})
		</button>
		<img
			src={ imageUrl }
			alt={ name }
			class="w-24 h-24 mx-auto mb-3 object-cover rounded-lg"
		/>
		<h3 class="font-semibold text-sm line-clamp-2">{ name }</h3>
		<p class="text-lg font-bold mt-1">{ price }</p>
	</div>
}

templ Wishlist002CompareRow(feature string, values []string) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium sticky left-0 bg-background"}) {
			{ feature }
		}
		for _, value := range values {
			@table.Cell(table.CellProps{Class: "text-center"}) {
				if value == "-" {
					<span class="text-muted-foreground">-</span>
				} else {
					{ value }
				}
			}
		}
	}
}

// Mobile view for smaller screens
templ Wishlist002MobileView() {
	<div class="lg:hidden space-y-4">
		@Wishlist002MobileProduct(
			"Smart Watch Pro",
			"$299",
			"/assets/img/placeholder.svg",
			map[string]string{
				"Display":          "1.4\" AMOLED",
				"Battery Life":     "7 days",
				"Water Resistance": "5 ATM",
				"GPS":              "Built-in",
				"Heart Rate":       "24/7",
			},
		)
		@Wishlist002MobileProduct(
			"Fitness Tracker Plus",
			"$199",
			"/assets/img/placeholder.svg",
			map[string]string{
				"Display":          "1.2\" LCD",
				"Battery Life":     "10 days",
				"Water Resistance": "3 ATM",
				"GPS":              "Connected",
				"Heart Rate":       "During workouts",
			},
		)
	</div>
}

templ Wishlist002MobileProduct(name string, price string, imageUrl string, features map[string]string) {
	@card.Card() {
		@card.Header() {
			<div class="flex items-start justify-between">
				<div>
					@card.Title() {
						{ name }
					}
					<p class="text-xl font-bold mt-1">{ price }</p>
				</div>
				<button class="p-2 -m-2 text-muted-foreground hover:text-foreground">
					@icon.X(icon.Props{Size: 20})
				</button>
			</div>
		}
		@card.Content() {
			<img
				src={ imageUrl }
				alt={ name }
				class="w-full h-32 sm:h-48 object-cover rounded-lg mb-4"
			/>
			<div class="space-y-2">
				for feature, value := range features {
					<div class="flex justify-between text-sm">
						<span class="text-muted-foreground">{ feature }</span>
						<span class="font-medium">{ value }</span>
					</div>
				}
			</div>
		}
	}
}
```

## Faq

### faq_001.templ

**Path:** `faq/faq_001.templ`

```templ
package faq

import "github.com/templui/templui-pro/internal/ui/components/accordion"

templ FAQ001() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-3xl">
			@FAQ001Header()
			@FAQ001Questions()
		</div>
	</section>
}

templ FAQ001Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Frequently asked questions
		</h2>
		<p class="text-lg text-muted-foreground">
			Everything you need to know about our product and billing.
		</p>
	</div>
}

templ FAQ001Questions() {
	@accordion.Accordion(accordion.Props{
		Class: "[&_summary_svg]:text-primary [&_details[open]_summary]:text-primary [&_summary:hover]:text-primary/80",
	}) {
		@accordion.Item() {
			@accordion.Trigger() {
				How do I reset my password?
			}
			@accordion.Content() {
				<p class="text-muted-foreground">
					You can reset your password by clicking "Forgot password" on the sign-in page. 
					You'll receive an email with a link to reset your password securely.
				</p>
			}
		}
		@accordion.Item() {
			@accordion.Trigger() {
				What payment methods do you accept?
			}
			@accordion.Content() {
				<p class="text-muted-foreground">
					We accept all major credit cards (Visa, Mastercard, American Express), PayPal, 
					bank transfers, and digital wallets. All payments are processed securely.
				</p>
			}
		}
		@accordion.Item() {
			@accordion.Trigger() {
				How can I cancel my subscription?
			}
			@accordion.Content() {
				<p class="text-muted-foreground">
					You can cancel your subscription anytime in your account settings. 
					Your cancellation will take effect at the end of your current billing period.
				</p>
			}
		}
		@accordion.Item() {
			@accordion.Trigger() {
				Is there a mobile app available?
			}
			@accordion.Content() {
				<p class="text-muted-foreground">
					Yes, our mobile app is available for both iOS and Android. 
					You can download it for free from the App Store or Google Play Store.
				</p>
			}
		}
		@accordion.Item() {
			@accordion.Trigger() {
				How do I contact support?
			}
			@accordion.Content() {
				<p class="text-muted-foreground">
					Our support team is available Monday-Friday, 9 AM to 6 PM via support@example.com. 
					For urgent inquiries, you can also use our live chat feature.
				</p>
			}
		}
	}
}
```

### faq_002.templ

**Path:** `faq/faq_002.templ`

```templ
package faq

import "github.com/templui/templui-pro/internal/ui/components/accordion"

templ FAQ002() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-7xl">
			@FAQ002Header()
			@FAQ002Questions()
		</div>
	</section>
}

templ FAQ002Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			FAQ
		</h2>
		<p class="text-lg text-muted-foreground">
			Everything you need to know
		</p>
	</div>
}

templ FAQ002Questions() {
	<div class="grid gap-8 lg:grid-cols-2">
		<!-- Left Column -->
		<div>
			@accordion.Accordion(accordion.Props{
				Class: "[&_summary_svg]:text-primary [&_details[open]_summary]:text-primary [&_summary:hover]:text-primary/80",
			}) {
				@accordion.Item() {
					@accordion.Trigger() {
						What's included in the free plan?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							The free plan includes access to basic features, 
							up to 3 projects, and email support.
						</p>
					}
				}
				@accordion.Item() {
					@accordion.Trigger() {
						Can I upgrade at any time?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							Yes, you can upgrade to a premium plan at any time. 
							The upgrade takes effect immediately and is prorated.
						</p>
					}
				}
				@accordion.Item() {
					@accordion.Trigger() {
						Do you offer a money-back guarantee?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							We offer a 30-day money-back guarantee with no questions asked. 
							If you're not satisfied, we'll refund the full amount.
						</p>
					}
				}
			}
		</div>
		<!-- Right Column -->
		<div>
			@accordion.Accordion(accordion.Props{
				Class: "[&_summary_svg]:text-primary [&_details[open]_summary]:text-primary [&_summary:hover]:text-primary/80",
			}) {
				@accordion.Item() {
					@accordion.Trigger() {
						Is my data stored securely?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							Yes, all data is encrypted and regularly backed up. 
							We're GDPR compliant and use ISO 27001 certified data centers.
						</p>
					}
				}
				@accordion.Item() {
					@accordion.Trigger() {
						Can I invite team members?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							Yes, all premium plans allow you to invite team members. 
							The number of team members varies by plan.
						</p>
					}
				}
				@accordion.Item() {
					@accordion.Trigger() {
						Is there API access?
					}
					@accordion.Content() {
						<p class="text-muted-foreground">
							Yes, we provide a comprehensive REST API for all premium plans. 
							API documentation is available in your dashboard.
						</p>
					}
				}
			}
		</div>
	</div>
}
```

### faq_003.templ

**Path:** `faq/faq_003.templ`

```templ
package faq

import (
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/badge"
)

templ FAQ003() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-4xl">
			@FAQ003Header()
			@FAQ003BillingSection()
			@FAQ003AccountSection()
			@FAQ003TechnicalSection()
		</div>
	</section>
}

templ FAQ003Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Help & Support
		</h2>
		<p class="text-lg text-muted-foreground">
			Find answers to your questions quickly
		</p>
	</div>
}

templ FAQ003BillingSection() {
	<div class="mb-12">
		<div class="flex items-center gap-3 mb-6">
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "px-3 py-1 border-primary/20 bg-primary/5 text-primary",
			}) {
				Billing
			}
		</div>
		@accordion.Accordion(accordion.Props{
			Class: "[&_summary_svg]:text-primary [&_details[open]]:border-primary/20 [&_details[open]_summary]:text-primary",
		}) {
			@accordion.Item() {
				@accordion.Trigger() {
					When will my account be charged?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Your account is automatically charged at the beginning of each billing period. 
						You'll receive an email reminder 3 days before.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					Can I get an invoice?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Yes, all invoices are automatically sent via email and are 
						also available in your account dashboard.
					</p>
				}
			}
		}
	</div>
}

templ FAQ003AccountSection() {
	<div class="mb-12">
		<div class="flex items-center gap-3 mb-6">
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "px-3 py-1 border-primary/20 bg-primary/5 text-primary",
			}) {
				Account
			}
		</div>
		@accordion.Accordion(accordion.Props{
			Class: "[&_summary_svg]:text-primary [&_details[open]]:border-primary/20 [&_details[open]_summary]:text-primary",
		}) {
			@accordion.Item() {
				@accordion.Trigger() {
					How do I change my email address?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						You can change your email address in account settings. 
						You'll need to verify the new email address before the change takes effect.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					Can I delete my account?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Yes, you can delete your account anytime in settings. 
						Please note that all your data will be permanently deleted.
					</p>
				}
			}
		}
	</div>
}

templ FAQ003TechnicalSection() {
	<div>
		<div class="flex items-center gap-3 mb-6">
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "px-3 py-1 border-primary/20 bg-primary/5 text-primary",
			}) {
				Technical
			}
		</div>
		@accordion.Accordion(accordion.Props{
			Class: "[&_summary_svg]:text-primary [&_details[open]]:border-primary/20 [&_details[open]_summary]:text-primary",
		}) {
			@accordion.Item() {
				@accordion.Trigger() {
					Which browsers are supported?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						We support all modern browsers: Chrome, Firefox, Safari, Edge. 
						The latest 2 versions are fully supported.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					Are there any system requirements?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						No, since this is a web-based application, you only need 
						a modern browser and internet connection.
					</p>
				}
			}
		}
	</div>
}
```

### faq_004.templ

**Path:** `faq/faq_004.templ`

```templ
package faq

import (
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ FAQ004() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-4xl">
			@FAQ004Header()
			@FAQ004Questions()
			@FAQ004CTA()
		</div>
	</section>
}

templ FAQ004Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			How can we help you?
		</h2>
		<p class="text-lg text-muted-foreground mb-8">
			Search our FAQ or contact us directly
		</p>
		<!-- Search Bar -->
		<div class="max-w-md mx-auto">
			@input.Input(input.Props{
				Type:        "search",
				Placeholder: "Search questions...",
				Class:       "w-full focus:border-primary focus:ring-primary",
			})
		</div>
	</div>
}

templ FAQ004Questions() {
	<div class="mb-16">
		@accordion.Accordion(accordion.Props{
			Class: "[&_summary_svg]:text-primary [&_details[open]_summary]:text-primary [&_summary:hover]:text-primary/80 [&_details[open]]:border-primary/20",
		}) {
			@accordion.Item() {
				@accordion.Trigger() {
					How do I get started with the platform?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						After registration, our onboarding assistant will guide you through the first steps. 
						You can also watch our tutorial video or read the documentation.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					Can I import existing data?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Yes, we support importing from CSV, Excel, and various other formats. 
						The import wizard helps you format your data correctly.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					What integrations are available?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						We offer integrations with 50+ popular tools like Slack, Zapier, 
						Google Workspace, Microsoft 365, and many more.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					How does team collaboration work?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Teams can collaborate on projects, leave comments, 
						assign tasks, and track progress in real-time.
					</p>
				}
			}
			@accordion.Item() {
				@accordion.Trigger() {
					Do you offer training or webinars?
				}
				@accordion.Content() {
					<p class="text-muted-foreground">
						Yes, we offer regular free webinars and have an extensive 
						library of video tutorials and guides.
					</p>
				}
			}
		}
	</div>
}

templ FAQ004CTA() {
	@card.Card() {
		@card.Header(card.HeaderProps{
			Class: "text-center mb-6",
		}) {
			@card.Title(card.TitleProps{
				Class: "text-2xl font-semibold mb-2",
			}) {
				Still have questions?
			}
			@card.Description(card.DescriptionProps{
				Class: "text-lg",
			}) {
				Our support team is here to help
			}
		}
		@card.Content(card.ContentProps{
			Class: "flex flex-col sm:flex-row gap-4 justify-center",
		}) {
			@button.Button(button.Props{
				Variant: button.VariantDefault,
			}) {
				Contact support
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				Start live chat
			}
		}
	}
}
```

### faq_005.templ

**Path:** `faq/faq_005.templ`

```templ
package faq

import (
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ FAQ005() {
	<section class="py-24 px-4 sm:px-6 lg:px-8 bg-background">
		<div class="mx-auto max-w-3xl">
			@FAQ005Header()
			@FAQ005Questions()
		</div>
	</section>
}

templ FAQ005Header() {
	<div class="text-center mb-16">
		<div class="inline-flex items-center justify-center w-16 h-16 bg-primary/10 rounded-full mb-6">
			@icon.Layers()
		</div>
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl">
			Frequently Asked Questions
		</h2>
	</div>
}

templ FAQ005Questions() {
	@accordion.Accordion(accordion.Props{
		Class: "border-0 divide-y-0 space-y-4",
	}) {
		@accordion.Item(accordion.ItemProps{
			Class: "bg-background border rounded-lg hover:shadow-md transition-shadow",
		}) {
			@accordion.Trigger(accordion.TriggerProps{
				Class: "text-left font-medium hover:no-underline",
			}) {
				@FAQ005QuestionItem("1", "How much does it cost?")
			}
			@accordion.Content() {
				<div class="pl-11">
					<p class="text-muted-foreground">
						We offer different pricing plans, from free to enterprise. 
						The free plan includes all basic features for up to 5 users.
					</p>
				</div>
			}
		}
		@accordion.Item(accordion.ItemProps{
			Class: "bg-background border rounded-lg hover:shadow-md transition-shadow",
		}) {
			@accordion.Trigger(accordion.TriggerProps{
				Class: "text-left font-medium hover:no-underline",
			}) {
				@FAQ005QuestionItem("2", "Do I need to install anything?")
			}
			@accordion.Content() {
				<div class="pl-11">
					<p class="text-muted-foreground">
						No, it's a web-based solution. You can get started directly 
						through your browser without installing anything.
					</p>
				</div>
			}
		}
		@accordion.Item(accordion.ItemProps{
			Class: "bg-background border rounded-lg hover:shadow-md transition-shadow",
		}) {
			@accordion.Trigger(accordion.TriggerProps{
				Class: "text-left font-medium hover:no-underline",
			}) {
				@FAQ005QuestionItem("3", "How secure is my data?")
			}
			@accordion.Content() {
				<div class="pl-11">
					<p class="text-muted-foreground">
						Your data is protected with state-of-the-art encryption technology. 
						We are SOC 2 Type II certified and GDPR compliant.
					</p>
				</div>
			}
		}
		@accordion.Item(accordion.ItemProps{
			Class: "bg-background border rounded-lg hover:shadow-md transition-shadow",
		}) {
			@accordion.Trigger(accordion.TriggerProps{
				Class: "text-left font-medium hover:no-underline",
			}) {
				@FAQ005QuestionItem("4", "Is there a trial period?")
			}
			@accordion.Content() {
				<div class="pl-11">
					<p class="text-muted-foreground">
						Yes, you can try all premium features for 14 days free. 
						No credit card required.
					</p>
				</div>
			}
		}
	}
}

templ FAQ005QuestionItem(number, question string) {
	<div class="flex items-center gap-3">
		<div class="w-8 h-8 bg-primary/10 rounded-full flex items-center justify-center flex-shrink-0">
			<span class="text-primary text-sm font-semibold">{ number }</span>
		</div>
		{ question }
	</div>
}
```

## Feature

### feature_001.templ

**Path:** `feature/feature_001.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Feature001() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24">
			@Feature001Header()
			@Feature001Grid()
		</div>
	</div>
}

templ Feature001Header() {
	<div class="text-center max-w-3xl mx-auto mb-16">
		<h2 class="text-3xl font-extrabold sm:text-4xl">
			Everything you need to build <span class="text-primary">modern applications</span>
		</h2>
		<p class="mt-4 text-xl text-muted-foreground">
			Our platform provides all the tools and components you need to create beautiful,
			responsive, and accessible web applications.
		</p>
	</div>
}

templ Feature001Grid() {
	<div class="grid gap-8 sm:grid-cols-2 lg:grid-cols-3">
		@Feature001Item(icon.Camera, "Lightning Fast", "Our components are optimized for performance and have minimal bundle size impact.")
		@Feature001Item(icon.Palette, "Customizable", "Every component can be easily customized to match your brand and design needs.")
		@Feature001Item(icon.Shield, "Security First", "All components are built with security best practices to help keep your users safe.")
	</div>
}

templ Feature001Item(iconFunc func(...icon.Props) templ.Component, title, description string) {
	@card.Card() {
		@card.Content() {
			<div class="flex items-center gap-2 mb-4">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8 bg-primary/10 text-primary",
				}) {
					@iconFunc(icon.Props{
						Size: 16,
					})
				}
				<h3 class="text-xl font-medium">{ title }</h3>
			</div>
			<p class="text-muted-foreground">{ description }</p>
		}
	}
}
```

### feature_002.templ

**Path:** `feature/feature_002.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Feature002() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl">
			@Feature002Header()
			@Feature002Grid()
		</div>
	</div>
}

templ Feature002Header() {
	<h2 class="mb-6 text-3xl font-semibold lg:text-4xl">
		Discover <span class="text-primary">Powerful Features</span>
	</h2>
	@button.Button() {
		Get Started
		@icon.ArrowRight(icon.Props{
			Size:  16,
			Class: "ml-2",
		})
	}
}

templ Feature002Grid() {
	<div class="mt-12 grid gap-12 sm:grid-cols-2 lg:grid-cols-4">
		@Feature002Item("01", "Seamless Integrations", "Connect your favorite tools and services effortlessly for a unified workflow.", "5 Minute")
		@Feature002Item("02", "Advanced Analytics", "Gain deep insights with powerful analytics to make data-driven decisions.", "3 Minute")
		@Feature002Item("03", "Smart Search & Filters", "Find exactly what you need with intelligent search and filtering options.", "4 Minute")
		@Feature002Item("04", "Enhanced Security", "Protect your data with top-notch security features and encryption.", "8 Minute")
	</div>
}

templ Feature002Item(number, title, description, time string) {
	<div class="flex">
		@separator.Separator(separator.Props{
			Orientation: separator.OrientationVertical,
			Class:       "mr-6 bg-primary/20",
		})
		<div>
			<h1 class="mb-16 text-9xl text-primary/20">{ number }</h1>
			<p class="text-md mb-2 font-semibold">{ title }</p>
			<p class="text-md mb-6 text-muted-foreground">{ description }</p>
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
				Class:   "py-2 border-primary/50 text-primary hover:bg-primary hover:text-primary-foreground hover:border-primary transition-colors",
			}) {
				@icon.Clock(icon.Props{Size: 14})
				{ time }
			}
		</div>
	</div>
}
```

### feature_003.templ

**Path:** `feature/feature_003.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Feature003() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl w-full">
			@Feature003Header()
			@Feature003Content()
		</div>
	</div>
}

templ Feature003Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantDefault,
			Class:   "mb-4",
		}) {
			@icon.Star(icon.Props{Size: 14})
			Why Choose Us
		}
		<h2 class="text-4xl font-bold mb-6">
			Built for <span class="text-primary">Modern Development</span>
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Everything you need to ship faster and build better applications with confidence.
		</p>
	</div>
}

templ Feature003Content() {
	<div class="grid gap-8 lg:grid-cols-3">
		<div class="lg:col-span-2">
			<div class="grid gap-6 sm:grid-cols-2">
				@Feature003MainFeature("Lightning Fast", "Components load instantly with zero runtime overhead", icon.Zap)
				@Feature003MainFeature("Type Safe", "Full type safety with Go's strong typing system", icon.Shield)
				@Feature003MainFeature("Responsive", "Mobile-first design that works on all screen sizes", icon.Smartphone)
				@Feature003MainFeature("Accessible", "WCAG 2.1 AA compliant components out of the box", icon.Heart)
			</div>
		</div>
		@Feature003Sidebar()
	</div>
}

templ Feature003Sidebar() {
	<div class="space-y-6">
		@Feature003QuickStart()
		@Feature003TrustedBy()
	</div>
}

templ Feature003QuickStart() {
	@card.Card() {
		@card.Header() {
			@card.Title(card.TitleProps{
				Class: "flex items-center gap-2",
			}) {
				@icon.Rocket(icon.Props{Size: 20, Class: "text-primary"})
				Quick Start
			}
		}
		@card.Content() {
			<div class="space-y-4">
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
					<span>Install in 2 minutes</span>
				</div>
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
					<span>Copy & paste ready</span>
				</div>
				<div class="flex items-center gap-2 text-sm">
					@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
					<span>Works with any framework</span>
				</div>
			</div>
			@separator.Separator(separator.Props{
				Class: "my-4",
			})
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Get Started
				@icon.ArrowRight(icon.Props{Size: 14, Class: "ml-1"})
			}
		}
	}
}

templ Feature003TrustedBy() {
	@card.Card() {
		@card.Header() {
			@card.Title(card.TitleProps{
				Class: "flex items-center gap-2",
			}) {
				@icon.Users(icon.Props{Size: 20, Class: "text-primary"})
				Trusted by 10,000+ Developers
			}
		}
		@card.Content(card.ContentProps{
			Class: "space-y-3",
		}) {
			<div class="flex items-center justify-between text-sm">
				<span>Startups</span>
				<span class="font-medium text-primary">8,500+</span>
			</div>
			<div class="flex items-center justify-between text-sm">
				<span>Enterprises</span>
				<span class="font-medium text-primary">1,200+</span>
			</div>
			<div class="flex items-center justify-between text-sm">
				<span>Open Source</span>
				<span class="font-medium text-primary">300+</span>
			</div>
		}
	}
}

templ Feature003MainFeature(title, description string, iconFunc func(...icon.Props) templ.Component) {
	@card.Card(card.Props{
		Class: "bg-gradient-to-br from-background to-muted/50",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			@iconFunc(icon.Props{Size: 24, Class: "mb-4 text-primary"})
			<div>
				<h3 class="text-lg font-semibold mb-2">{ title }</h3>
				<p class="text-sm text-muted-foreground">{ description }</p>
			</div>
		}
	}
}
```

### feature_004.templ

**Path:** `feature/feature_004.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Feature004() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 bg-gradient-to-br from-background to-muted">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Feature004Header()
			@Feature004Content()
		</div>
	</div>
}

templ Feature004Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantSecondary,
			Class:   "mb-4",
		}) {
			@icon.Sparkles(icon.Props{Size: 14})
			Features that Matter
		}
		<h2 class="text-4xl font-bold mb-6">
			Everything You Need in <span class="text-primary">One Package</span>
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			From design to deployment, we've got you covered with professional-grade tools and components.
		</p>
	</div>
}

templ Feature004Content() {
	<div class="grid gap-8 lg:grid-cols-2 items-start">
		<div class="space-y-8">
			<div>
				<h3 class="text-2xl font-semibold mb-6 flex items-center gap-2">
					@icon.Palette(icon.Props{Size: 20, Class: "text-primary"})
					Design System
				</h3>
				<div class="grid gap-4 sm:grid-cols-2">
					@Feature004FeatureItem("200+ Components", "Pre-built UI elements", icon.Package)
					@Feature004FeatureItem("Dark Mode", "Beautiful light & dark themes", icon.Moon)
					@Feature004FeatureItem("Responsive", "Mobile-first approach", icon.Smartphone)
					@Feature004FeatureItem("Customizable", "Easy theme configuration", icon.Settings)
				</div>
			</div>
			<div>
				<h3 class="text-2xl font-semibold mb-6 flex items-center gap-2">
					@icon.Code(icon.Props{Size: 20, Class: "text-primary"})
					Developer Experience
				</h3>
				<div class="grid gap-4 sm:grid-cols-2">
					@Feature004FeatureItem("Go", "Full type safety", icon.Shield)
					@Feature004FeatureItem("Zero Config", "Works out of the box", icon.Zap)
					@Feature004FeatureItem("Tree Shaking", "Optimized bundle size", icon.Minimize)
					@Feature004FeatureItem("Hot Reload", "Instant development", icon.RefreshCw)
				</div>
			</div>
		</div>
		@Feature004Sidebar()
	</div>
}

templ Feature004Sidebar() {
	<div class="space-y-6">
		@card.Card(card.Props{
			Class: " shadow-xl",
		}) {
			@card.Header() {
				@card.Title(card.TitleProps{
					Class: "text-center",
				}) {
					Ready to Get Started?
				}
				@card.Description(card.DescriptionProps{
					Class: "text-center",
				}) {
					Join thousands of developers building better apps
				}
			}
			@card.Content(card.ContentProps{
				Class: "space-y-6",
			}) {
				<div class="text-center">
					<div class="text-3xl font-bold mb-2 text-primary">$29</div>
					<div class="text-sm text-muted-foreground">per developer / month</div>
				</div>
				@separator.Separator()
				<div class="space-y-3">
					<div class="flex items-center gap-3">
						@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
						<span class="text-sm">Unlimited projects</span>
					</div>
					<div class="flex items-center gap-3">
						@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
						<span class="text-sm">All components included</span>
					</div>
					<div class="flex items-center gap-3">
						@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
						<span class="text-sm">Premium support</span>
					</div>
					<div class="flex items-center gap-3">
						@icon.Check(icon.Props{Size: 16, Class: "text-primary"})
						<span class="text-sm">Lifetime updates</span>
					</div>
				</div>
				@button.Button(button.Props{
					Class: "w-full",
				}) {
					Start Free Trial
					@icon.ArrowRight(icon.Props{Size: 16, Class: "ml-2"})
				}
				<p class="text-xs text-center text-muted-foreground">
					14-day free trial • No credit card required
				</p>
			}
		}
		<div class="bg-primary rounded-xl p-6 text-primary-foreground">
			<div class="flex items-center gap-3 mb-4">
				@icon.Trophy(icon.Props{Size: 24})
				<h4 class="font-semibold">Enterprise Ready</h4>
			</div>
			<p class="text-primary-foreground/80 text-sm mb-4">
				Need custom solutions? We offer enterprise packages with dedicated support and custom components.
			</p>
			@button.Button(button.Props{
				Variant: button.VariantSecondary,
			}) {
				Contact Sales
			}
		</div>
	</div>
}

templ Feature004FeatureItem(title, description string, iconFunc func(...icon.Props) templ.Component) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "p-4 flex items-center gap-3",
		}) {
			@avatar.Avatar(avatar.Props{
				Class: "h-8 w-8 rounded-sm bg-primary/10 text-primary",
			}) {
				@iconFunc(icon.Props{Size: 16})
			}
			<div>
				<div class="font-medium text-sm">{ title }</div>
				<div class="text-xs text-muted-foreground">{ description }</div>
			</div>
		}
	}
}
```

### feature_005.templ

**Path:** `feature/feature_005.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Feature005() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl w-full">
			@Feature005Header()
			<div class="grid gap-8 lg:grid-cols-12 items-center">
				@Feature005Terminal()
				@Feature005Metrics()
			</div>
		</div>
	</div>
}

templ Feature005Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantDefault,
			Class:   "mb-4",
		}) {
			@icon.Zap(icon.Props{Size: 14})
			Performance First
		}
		<h2 class="text-4xl font-bold mb-6">
			Built for Scale and Speed
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Enterprise-grade performance with developer-friendly APIs. From prototypes to production at scale.
		</p>
	</div>
}

templ Feature005Metrics() {
	<div class="lg:col-span-5 space-y-8">
		<div class="space-y-6">
			@Feature005MetricCard("< 5ms", "Average response time", "99.9% uptime SLA", icon.Zap)
			@Feature005MetricCard("0.5KB", "Minimal bundle impact", "Tree-shaking optimized", icon.Minimize)
			@Feature005MetricCard("SSR Ready", "Server-side rendering", "Zero client-side JS required", icon.Server)
		</div>
		@button.Button() {
			View Performance Docs
			@icon.ExternalLink(icon.Props{Size: 16, Class: "ml-2"})
		}
	</div>
}

templ Feature005Terminal() {
	<div class="lg:col-span-7">
		@card.Card() {
			@card.Content(card.ContentProps{
				Class: "p-4",
			}) {
				<div class="absolute inset-0 bg-gradient-to-br from-primary/5 to-accent/5"></div>
				<div class="relative">
					<div class="flex items-center justify-between mb-4">
						<div class="flex items-center gap-2">
							@icon.Terminal(icon.Props{Size: 16})
							<span class="text-sm font-mono">Performance Metrics</span>
						</div>
						<div class="flex gap-2">
							<div class="w-3 h-3 rounded-full bg-destructive"></div>
							<div class="w-3 h-3 rounded-full bg-muted"></div>
							<div class="w-3 h-3 rounded-full bg-primary"></div>
						</div>
					</div>
					<div class="space-y-3 font-mono text-sm">
						<div class="text-muted-foreground">
							<span>$</span> go build
						</div>
						<div>
							✓ Build completed in 2.1s
						</div>
						<div class="text-muted-foreground">
							<span>$</span> bundlesize check
						</div>
						<div>
							✓ All bundles under size limit
						</div>
						@card.Card() {
							@card.Content(card.ContentProps{
								Class: "grid grid-cols-2 gap-4 p-3 bg-muted/20",
							}) {
								<div>
									<div class="text-muted-foreground text-xs">Bundle Size</div>
									<div class="text-foreground font-semibold">12.5 KB</div>
								</div>
								<div>
									<div class="text-muted-foreground text-xs">Gzipped</div>
									<div class="text-foreground font-semibold">4.2 KB</div>
								</div>
								<div>
									<div class="text-muted-foreground text-xs">Load Time</div>
									<div class="text-foreground font-semibold">&lt; 100ms</div>
								</div>
								<div>
									<div class="text-muted-foreground text-xs">Lighthouse</div>
									<div class="font-semibold">100/100</div>
								</div>
							}
						}
					</div>
				</div>
				<div class="grid gap-4 sm:grid-cols-2 mt-6">
					@Feature005TechBadge("Web Vitals", "Perfect Core Web Vitals scores", icon.Activity)
					@Feature005TechBadge("CDN Ready", "Global edge distribution", icon.Globe)
					@Feature005TechBadge("Cache Optimized", "Smart caching strategies", icon.Database)
					@Feature005TechBadge("Mobile First", "Optimized for all devices", icon.Smartphone)
				</div>
			}
		}
	</div>
}

templ Feature005MetricCard(value, title, description string, iconFunc func(...icon.Props) templ.Component) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "gap-4 p-4",
		}) {
			<div class="flex items-center gap-2 mb-1">
				@iconFunc(icon.Props{Size: 20})
				<div class="text-2xl font-bold">{ value }</div>
			</div>
			<div class="text-sm text-muted-foreground">{ title }</div>
			<div class="text-xs">{ description }</div>
		}
	}
}

templ Feature005TechBadge(title, description string, iconFunc func(...icon.Props) templ.Component) {
	<div class="flex items-start gap-3 p-3 rounded-lg bg-muted/50 border">
		@iconFunc(icon.Props{Size: 16, Class: "mt-0.5"})
		<div>
			<div class="font-medium text-sm">{ title }</div>
			<div class="text-xs text-muted-foreground">{ description }</div>
		</div>
	</div>
}
```

### feature_006.templ

**Path:** `feature/feature_006.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"strconv"
)

templ Feature006() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 bg-gradient-to-b from-background to-muted">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Feature006Header()
			@Feature006Content()
		</div>
	</div>
}

templ Feature006Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantSecondary,
			Class:   "mb-4",
		}) {
			@icon.Shield(icon.Props{Size: 14})
			Security & Compliance
		}
		<h2 class="text-4xl font-bold mb-6">
			Enterprise Security by Default
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Built with security-first principles. SOC2 compliant, GDPR ready, and trusted by Fortune 500 companies.
		</p>
	</div>
}

templ Feature006Content() {
	<div class="grid gap-12 lg:grid-cols-2 items-start">
		<div class="space-y-8">
			<div>
				<h3 class="text-2xl font-semibold mb-6 flex items-center gap-2">
					@icon.Lock(icon.Props{Size: 24})
					Security Features
				</h3>
				<div class="space-y-4">
					@Feature006SecurityItem("End-to-End Encryption", "All data encrypted in transit and at rest with AES-256", icon.Key, true)
					@Feature006SecurityItem("Zero Trust Architecture", "Every request verified, no implicit trust", icon.Shield, true)
					@Feature006SecurityItem("Regular Security Audits", "Quarterly penetration testing by third parties", icon.Search, true)
					@Feature006SecurityItem("Incident Response", "24/7 security monitoring and rapid response", icon.Clock, true)
				</div>
			</div>
			<div>
				<h3 class="text-2xl font-semibold mb-6 flex items-center gap-2">
					@icon.Award(icon.Props{Size: 24})
					Compliance Standards
				</h3>
				<div class="grid gap-3 sm:grid-cols-2">
					@Feature006ComplianceBadge("SOC 2 Type II", "Certified")
					@Feature006ComplianceBadge("GDPR", "Compliant")
					@Feature006ComplianceBadge("HIPAA", "Ready")
					@Feature006ComplianceBadge("ISO 27001", "Certified")
				</div>
			</div>
		</div>
		@Feature006Sidebar()
	</div>
}

templ Feature006Sidebar() {
	<div class="space-y-6">
		@card.Card(card.Props{
			Class: "border-primary",
		}) {
			@card.Header() {
				@card.Title(card.TitleProps{
					Class: "flex items-center gap-2",
				}) {
					@icon.Check(icon.Props{Size: 20})
					Security Score: A+
				}
			}
			@card.Content() {
				<div class="space-y-4">
					@Feature006ScoreItem("Vulnerability Scanning", 100)
					@Feature006ScoreItem("Access Controls", 98)
					@Feature006ScoreItem("Data Protection", 100)
					@Feature006ScoreItem("Network Security", 97)
				</div>
			}
		}
		@card.Card() {
			@card.Header() {
				@card.Title(card.TitleProps{
					Class: "flex items-center gap-2",
				}) {
					@icon.Users(icon.Props{Size: 20})
					Trusted Worldwide
				}
			}
			@card.Content() {
				<div class="grid gap-4 text-center">
					<div>
						<div class="text-2xl font-bold">500+</div>
						<div class="text-sm text-muted-foreground">Enterprise Customers</div>
					</div>
					<div>
						<div class="text-2xl font-bold">99.99%</div>
						<div class="text-sm text-muted-foreground">Security Uptime</div>
					</div>
					<div>
						<div class="text-2xl font-bold">0</div>
						<div class="text-sm text-muted-foreground">Data Breaches</div>
					</div>
				</div>
				@separator.Separator(separator.Props{
					Class: "my-4",
				})
				@button.Button(button.Props{
					Class: "w-full",
				}) {
					View Security Details
					@icon.ExternalLink(icon.Props{Size: 14, Class: "ml-2"})
				}
			}
		}
		<div class="bg-primary rounded-xl p-6 text-primary-foreground">
			<div class="flex items-center gap-3 mb-4">
				@icon.Phone(icon.Props{Size: 20})
				<h4 class="font-semibold">24/7 Security Support</h4>
			</div>
			<p class="text-primary-foreground/80 text-sm mb-4">
				Direct line to our security team. Average response time: 15 minutes.
			</p>
			<button class="bg-primary-foreground/20 hover:bg-primary-foreground/30 px-4 py-2 rounded-lg text-sm font-medium transition-colors">
				Contact Security Team
			</button>
		</div>
	</div>
}

templ Feature006SecurityItem(title, description string, iconFunc func(...icon.Props) templ.Component, verified bool) {
	<div class="flex items-start gap-3 p-3 rounded-lg hover:bg-muted/80 transition-colors">
		@iconFunc(icon.Props{Size: 18, Class: "mt-0.5"})
		<div class="flex-1">
			<div class="flex items-center gap-2 mb-1">
				<span class="font-medium">{ title }</span>
				if verified {
					@icon.Check(icon.Props{Size: 14})
				}
			</div>
			<p class="text-sm text-muted-foreground">{ description }</p>
		</div>
	</div>
}

templ Feature006ComplianceBadge(standard, status string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "flex items-center justify-between p-3",
		}) {
			<span class="font-medium text-sm">{ standard }</span>
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "text-xs",
			}) {
				{ status }
			}
		}
	}
}

templ Feature006ScoreItem(item string, score int) {
	<div class="flex items-center justify-between">
		<span class="text-sm">{ item }</span>
		<div class="flex items-center gap-3">
			@progress.Progress(progress.Props{
				Value: score,
				Max:   100,
				Class: "w-16 h-2",
			})
			<span class="text-xs font-medium w-8 text-right">{ strconv.Itoa(score) }%</span>
		</div>
	</div>
}
```

### feature_007.templ

**Path:** `feature/feature_007.templ`

```templ
package feature

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

templ Feature007() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl w-full">
			@Feature007Header()
			@Feature007TabsSection()
		</div>
	</div>
}

templ Feature007Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantDefault,
			Class:   "mb-4",
		}) {
			@icon.Code(icon.Props{Size: 14})
			Developer Experience
		}
		<h2 class="text-4xl font-bold mb-6">
			Code Like Never Before
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			From idea to deployment in minutes. IntelliSense, hot reload, and powerful dev tools included.
		</p>
	</div>
}

templ Feature007TabsSection() {
	@tabs.Tabs(tabs.Props{
		Class: "w-full",
	}) {
		@tabs.List(tabs.ListProps{
			Class: "mb-8 overflow-x-auto justify-start",
		}) {
			@tabs.Trigger(tabs.TriggerProps{
				Value: "intellisense",
				Class: "flex items-center gap-2",
			}) {
				@icon.Lightbulb(icon.Props{Size: 16})
				IntelliSense
			}
			@tabs.Trigger(tabs.TriggerProps{
				Value: "devtools",
				Class: "flex items-center gap-2",
			}) {
				@icon.Settings(icon.Props{Size: 16})
				Dev Tools
			}
			@tabs.Trigger(tabs.TriggerProps{
				Value: "testing",
				Class: "flex items-center gap-2",
			}) {
				@icon.Check(icon.Props{Size: 16})
				Testing
			}
			@tabs.Trigger(tabs.TriggerProps{
				Value: "deployment",
				Class: "flex items-center gap-2",
			}) {
				@icon.Rocket(icon.Props{Size: 16})
				Deploy
			}
		}
		@tabs.Content(tabs.ContentProps{
			Value: "intellisense",
		}) {
			@Feature007TabContent(
				"Smart Code Completion",
				"AI-powered suggestions that understand your project context and coding patterns.",
				[]Feature007_Feature{
					{Icon: icon.Zap, Title: "Context-Aware", Description: "Understands your entire codebase"},
					{Icon: icon.Sparkles, Title: "AI-Powered", Description: "Machine learning suggestions"},
					{Icon: icon.Code, Title: "Multi-Language", Description: "Works with 50+ languages"},
					{Icon: icon.Clock, Title: "Real-Time", Description: "Instant suggestions as you type"},
				},
				"/assets/img/placeholder.svg",
			)
		}
		@tabs.Content(tabs.ContentProps{
			Value: "devtools",
		}) {
			@Feature007TabContent(
				"Powerful Development Tools",
				"Everything you need for productive development, debugging, and performance optimization.",
				[]Feature007_Feature{
					{Icon: icon.Search, Title: "Advanced Debugger", Description: "Step-through debugging with breakpoints"},
					{Icon: icon.Activity, Title: "Performance Monitor", Description: "Real-time performance metrics"},
					{Icon: icon.Terminal, Title: "Integrated Terminal", Description: "Built-in terminal with smart suggestions"},
					{Icon: icon.Package, Title: "Extension Marketplace", Description: "Thousands of community extensions"},
				},
				"/assets/img/placeholder.svg",
			)
		}
		@tabs.Content(tabs.ContentProps{
			Value: "testing",
		}) {
			@Feature007TabContent(
				"Automated Testing Suite",
				"Write, run, and debug tests with confidence. Full coverage reports and CI/CD integration.",
				[]Feature007_Feature{
					{Icon: icon.Play, Title: "One-Click Testing", Description: "Run all tests with a single command"},
					{Icon: icon.TrendingUp, Title: "Coverage Reports", Description: "Detailed test coverage analysis"},
					{Icon: icon.GitBranch, Title: "CI/CD Integration", Description: "Seamless pipeline integration"},
					{Icon: icon.Shield, Title: "Security Testing", Description: "Automated vulnerability scanning"},
				},
				"/assets/img/placeholder.svg",
			)
		}
		@tabs.Content(tabs.ContentProps{
			Value: "deployment",
		}) {
			@Feature007TabContent(
				"One-Click Deployment",
				"Deploy to any cloud provider with a single click. Automatic scaling, monitoring, and rollbacks.",
				[]Feature007_Feature{
					{Icon: icon.Cloud, Title: "Multi-Cloud", Description: "Deploy to AWS, Azure, GCP, and more"},
					{Icon: icon.TrendingUp, Title: "Auto-Scaling", Description: "Intelligent resource management"},
					{Icon: icon.Eye, Title: "Monitoring", Description: "Real-time application monitoring"},
					{Icon: icon.RefreshCw, Title: "Instant Rollbacks", Description: "One-click rollback to previous versions"},
				},
				"/assets/img/placeholder.svg",
			)
		}
	}
}

type Feature007_Feature struct {
	Icon        func(...icon.Props) templ.Component
	Title       string
	Description string
}

templ Feature007TabContent(title, description string, features []Feature007_Feature, imageUrl string) {
	<div class="grid gap-8 lg:grid-cols-2 items-center">
		<div class="space-y-8">
			<div>
				<h3 class="text-3xl font-bold mb-4">{ title }</h3>
				<p class="text-lg text-muted-foreground mb-8">{ description }</p>
			</div>
			<div class="grid gap-4 sm:grid-cols-2">
				for _, feature := range features {
					@card.Card() {
						@card.Content(card.ContentProps{
							Class: "p-4",
						}) {
							<div class="flex items-center gap-3 mb-2">
								@feature.Icon(icon.Props{Size: 18})
								<h4 class="font-semibold">{ feature.Title }</h4>
							</div>
							<p class="text-sm text-muted-foreground">{ feature.Description }</p>
						}
					}
				}
			</div>
			<div class="flex gap-4">
				@button.Button() {
					Try Free Trial
					@icon.ArrowRight(icon.Props{Size: 16, Class: "ml-2"})
				}
				@button.Button(button.Props{
					Variant: button.VariantSecondary,
				}) {
					Watch Demo
					@icon.Play(icon.Props{Size: 16, Class: "ml-2"})
				}
			</div>
		</div>
		<div class="relative">
			<div class="absolute inset-0 bg-gradient-to-br from-primary/20 to-accent/20 rounded-2xl transform rotate-3"></div>
			@card.Card(card.Props{
				Class: "relative bg-card shadow-2xl",
			}) {
				@aspectratio.AspectRatio(aspectratio.Props{
					Ratio: aspectratio.RatioVideo,
				}) {
					<img
						src={ imageUrl }
						alt="Card image"
						class="h-full w-full object-cover rounded-t-lg"
					/>
				}
				@card.Content(card.ContentProps{
					Class: "p-6",
				}) {
					<div class="flex items-center justify-between">
						<div>
							<div class="font-medium">Ready to get started?</div>
							<div class="text-sm text-muted-foreground">Join 50,000+ developers</div>
						</div>
						@button.Button() {
							Start Now
						}
					</div>
				}
			}
		</div>
	</div>
}
```

## Footer

### footer_001.templ

**Path:** `footer/footer_001.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer001Main()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer001Bottom()
			</div>
		</footer>
	</section>
}

templ Footer001Main() {
	<div class="grid grid-cols-1 gap-8 lg:grid-cols-5">
		@Footer001Brand()
		@Footer001Products()
		@Footer001Company()
		@Footer001Resources()
		@Footer001Newsletter()
	</div>
}

templ Footer001Brand() {
	<div class="lg:col-span-2">
		<div class="flex items-center gap-2 mb-4">
			@icon.Layers(icon.Props{Class: "text-primary"})
			<span class="text-xl font-bold">Acme Inc</span>
		</div>
		<p class="text-sm text-muted-foreground mb-6 max-w-md">
			Beautiful UI components and blocks built with Tailwind CSS. 
			Perfect for modern web applications and websites.
		</p>
		@Footer001Social()
	</div>
}

templ Footer001Social() {
	<div class="flex items-center gap-4">
		<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
			@icon.Github(icon.Props{
				Class: "size-5",
			})
		</a>
		<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
			@icon.Twitter(icon.Props{
				Class: "size-5",
			})
		</a>
	</div>
}

templ Footer001Products() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Products</h3>
		<div class="flex flex-col gap-2">
			@Footer001Link("Components", "#")
			@Footer001Link("Blocks", "#")
			@Footer001Link("Templates", "#")
			@Footer001Link("Icons", "#")
		</div>
	</div>
}

templ Footer001Company() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Company</h3>
		<div class="flex flex-col gap-2">
			@Footer001Link("About", "#")
			@Footer001Link("Blog", "#")
			@Footer001Link("Careers", "#")
			@Footer001Link("Contact", "#")
		</div>
	</div>
}

templ Footer001Resources() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Resources</h3>
		<div class="flex flex-col gap-2">
			@Footer001Link("Documentation", "#")
			@Footer001Link("Help Center", "#")
			@Footer001Link("Community", "#")
			@Footer001Link("Status", "#")
		</div>
	</div>
}

templ Footer001Newsletter() {
	<div class="lg:col-span-2">
		<h3 class="text-sm font-semibold mb-4">Stay updated</h3>
		<p class="text-sm text-muted-foreground mb-4">
			Get the latest updates and news delivered to your inbox.
		</p>
		<div class="flex gap-2">
			@input.Input(input.Props{
				Type:        "email",
				Placeholder: "Enter your email",
				Class:       "flex-1",
			})
			@button.Button() {
				Subscribe
			}
		</div>
	</div>
}

templ Footer001Bottom() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc. All rights reserved.
		</p>
		<div class="flex flex-col gap-2">
			@Footer001Link("Privacy Policy", "#")
			@Footer001Link("Terms of Service", "#")
			@Footer001Link("Cookie Policy", "#")
		</div>
	</div>
}

templ Footer001Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-primary transition-colors">
		{ text }
	</a>
}
```

### footer_002.templ

**Path:** `footer/footer_002.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-8 sm:px-6 lg:px-8">
				@Footer002Content()
			</div>
		</footer>
	</section>
}

templ Footer002Content() {
	<div class="flex flex-col gap-6 sm:flex-row sm:items-center sm:justify-between">
		@Footer002Brand()
		@Footer002Links()
		@Footer002Social()
	</div>
	@separator.Separator(separator.Props{Class: "my-6"})
	@Footer002Copyright()
}

templ Footer002Brand() {
	<div class="flex items-center gap-2">
		@icon.Layers(icon.Props{Class: "text-primary"})
		<span class="font-semibold">Acme Inc</span>
	</div>
}

templ Footer002Links() {
	<nav class="flex items-center gap-6">
		@Footer002Link("About", "#")
		@Footer002Link("Blog", "#")
		@Footer002Link("Docs", "#")
		@Footer002Link("Support", "#")
	</nav>
}

templ Footer002Social() {
	<div class="flex items-center gap-3">
		<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
			@icon.Github(icon.Props{
				Class: "size-5",
			})
		</a>
		<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
			@icon.Twitter(icon.Props{
				Class: "size-5",
			})
		</a>
	</div>
}

templ Footer002Copyright() {
	<div class="text-center">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc. All rights reserved.
		</p>
	</div>
}

templ Footer002Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-primary transition-colors">
		{ text }
	</a>
}
```

### footer_003.templ

**Path:** `footer/footer_003.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer003Newsletter()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer003Links()
				@separator.Separator(separator.Props{Class: "my-6"})
				@Footer003Bottom()
			</div>
		</footer>
	</section>
}

templ Footer003Newsletter() {
	<div class="text-center max-w-2xl mx-auto">
		<h2 class="text-2xl font-bold mb-2">Stay in the loop</h2>
		<p class="text-muted-foreground mb-6">
			Subscribe to our newsletter for the latest updates, tutorials, and exclusive content.
		</p>
		<div class="flex flex-col gap-3 sm:flex-row sm:max-w-md sm:mx-auto">
			@input.Input(input.Props{
				Type:        "email",
				Placeholder: "Enter your email address",
				Class:       "flex-1",
			})
			@button.Button(button.Props{
				Class: "sm:w-auto",
			}) {
				Subscribe
			}
		</div>
		<p class="text-xs text-muted-foreground mt-3">
			No spam, unsubscribe at any time.
		</p>
	</div>
}

templ Footer003Links() {
	<div class="grid grid-cols-2 gap-8 md:grid-cols-4">
		@Footer003ProductLinks()
		@Footer003CompanyLinks()
		@Footer003ResourceLinks()
		@Footer003SocialLinks()
	</div>
}

templ Footer003ProductLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Product</h3>
		<div class="flex flex-col gap-2">
			@Footer003Link("Components", "#")
			@Footer003Link("Blocks", "#")
			@Footer003Link("Templates", "#")
			@Footer003Link("Pricing", "#")
		</div>
	</div>
}

templ Footer003CompanyLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Company</h3>
		<div class="flex flex-col gap-2">
			@Footer003Link("About", "#")
			@Footer003Link("Blog", "#")
			@Footer003Link("Careers", "#")
			@Footer003Link("Contact", "#")
		</div>
	</div>
}

templ Footer003ResourceLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Resources</h3>
		<div class="flex flex-col gap-2">
			@Footer003Link("Documentation", "#")
			@Footer003Link("Help Center", "#")
			@Footer003Link("API Reference", "#")
			@Footer003Link("Status", "#")
		</div>
	</div>
}

templ Footer003SocialLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Follow us</h3>
		<div class="flex items-center gap-3">
			<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
				@icon.Github(icon.Props{
					Class: "size-5",
				})
			</a>
			<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
				@icon.Twitter(icon.Props{
					Class: "size-5",
				})
			</a>
		</div>
	</div>
}

templ Footer003Bottom() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<span class="font-semibold text-primary">Acme Inc</span>
		<div class="flex flex-col gap-2 sm:flex-row sm:items-center sm:gap-6">
			<p class="text-sm text-muted-foreground">
				© 2024 Acme Inc. All rights reserved.
			</p>
			<div class="flex items-center gap-4">
				@Footer003Link("Privacy", "#")
				@Footer003Link("Terms", "#")
			</div>
		</div>
	</div>
}

templ Footer003Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-primary transition-colors">
		{ text }
	</a>
}
```

### footer_004.templ

**Path:** `footer/footer_004.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer004Main()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer004Bottom()
			</div>
		</footer>
	</section>
}

templ Footer004Main() {
	<div class="grid gap-8 lg:grid-cols-4">
		@Footer004Company()
		@Footer004Products()
		@Footer004Support()
		@Footer004Legal()
	</div>
}

templ Footer004Company() {
	<div class="lg:col-span-2">
		<div class="flex items-center gap-2 mb-4">
			@icon.Layers(icon.Props{Class: "text-primary"})
			<span class="text-2xl font-bold">Acme Inc</span>
		</div>
		<p class="text-muted-foreground mb-6 max-w-md">
			We build beautiful, accessible UI components and design systems 
			that help developers create better user experiences faster.
		</p>
		@Footer004Contact()
		@Footer004Social()
	</div>
}

templ Footer004Contact() {
	<div class="space-y-3 mb-6">
		<div class="flex items-center gap-3 text-sm">
			<span class="text-primary">📧</span>
			<span class="text-muted-foreground">hello@acme.com</span>
		</div>
		<div class="flex items-center gap-3 text-sm">
			<span class="text-primary">📍</span>
			<span class="text-muted-foreground">San Francisco, CA</span>
		</div>
		<div class="flex items-center gap-3 text-sm">
			<span class="text-primary">📞</span>
			<span class="text-muted-foreground">+1 (555) 123-4567</span>
		</div>
	</div>
}

templ Footer004Social() {
	<div>
		<p class="text-sm font-medium mb-3">Follow us</p>
		<div class="flex items-center gap-4">
			<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
				@icon.Github(icon.Props{
					Class: "size-5",
				})
			</a>
			<a href="#" class="text-muted-foreground hover:text-primary transition-colors">
				@icon.Twitter(icon.Props{
					Class: "size-5",
				})
			</a>
		</div>
	</div>
}

templ Footer004Products() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Products</h3>
		<div class="flex flex-col gap-2">
			@Footer004Link("UI Components", "#")
			@Footer004Link("Design Blocks", "#")
			@Footer004Link("Website Templates", "#")
			@Footer004Link("Icon Library", "#")
			@Footer004Link("Design System", "#")
		</div>
	</div>
}

templ Footer004Support() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Support</h3>
		<div class="flex flex-col gap-2">
			@Footer004Link("Documentation", "#")
			@Footer004Link("Help Center", "#")
			@Footer004Link("Community", "#")
			@Footer004Link("Contact Support", "#")
			@Footer004Link("System Status", "#")
		</div>
	</div>
}

templ Footer004Legal() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Legal</h3>
		<div class="flex flex-col gap-2">
			@Footer004Link("Privacy Policy", "#")
			@Footer004Link("Terms of Service", "#")
			@Footer004Link("Cookie Policy", "#")
			@Footer004Link("GDPR", "#")
			@Footer004Link("Licensing", "#")
		</div>
	</div>
}

templ Footer004Bottom() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc Inc. All rights reserved.
		</p>
		<p class="text-sm text-muted-foreground">
			Made with <span class="text-primary">❤️</span> in San Francisco
		</p>
	</div>
}

templ Footer004Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-primary transition-colors">
		{ text }
	</a>
}
```

### footer_005.templ

**Path:** `footer/footer_005.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer005Main()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer005Bottom()
			</div>
		</footer>
	</section>
}

templ Footer005Main() {
	<div class="text-center">
		@Footer005Brand()
		@Footer005Social()
		@Footer005Links()
	</div>
}

templ Footer005Brand() {
	<div class="mb-8">
		<div class="flex items-center justify-center gap-2 mb-4">
			@icon.Layers(icon.Props{Class: "text-primary"})
			<span class="text-2xl font-bold">Acme Inc</span>
		</div>
		<p class="text-muted-foreground max-w-md mx-auto">
			Connect with us on social media for the latest updates, 
			behind-the-scenes content, and community highlights.
		</p>
	</div>
}

templ Footer005Social() {
	<div class="mb-8">
		<h3 class="text-lg font-semibold mb-6">Follow our journey</h3>
		<div class="flex items-center justify-center gap-6 mb-6">
			@Footer005SocialButton("GitHub", "#", icon.Github(icon.Props{
				Class: "size-5",
			}))
			@Footer005SocialButton("Twitter", "#", icon.Twitter(icon.Props{
				Class: "size-5",
			}))
		</div>
		<div class="flex flex-col gap-3 sm:flex-row sm:justify-center sm:gap-4">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "sm:w-auto flex gap-2",
			}) {
				@icon.Mail(icon.Props{Class: "w-5 h-5"})
				Subscribe to Newsletter
			}
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "sm:w-auto flex gap-2",
			}) {
				@icon.MessageCircle(icon.Props{Class: "w-5 h-5"})
				Join Discord Community
			}
		</div>
	</div>
}

templ Footer005SocialButton(name, href string, icon templ.Component) {
	<a
		href={ templ.URL(href) }
		class="flex flex-col items-center gap-2 p-4 rounded-lg border border-transparent hover:border-border hover:bg-muted/50 transition-all group"
	>
		<div class="text-muted-foreground group-hover:text-primary transition-colors">
			@icon
		</div>
		<span class="text-sm font-medium text-muted-foreground group-hover:text-primary transition-colors">
			{ name }
		</span>
	</a>
}

templ Footer005Links() {
	<div class="grid grid-cols-2 gap-6 sm:flex sm:justify-center sm:gap-8">
		@Footer005Link("About", "#")
		@Footer005Link("Blog", "#")
		@Footer005Link("Docs", "#")
		@Footer005Link("Support", "#")
		@Footer005Link("Privacy", "#")
		@Footer005Link("Terms", "#")
	</div>
}

templ Footer005Bottom() {
	<div class="text-center">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc. Made with <span class="text-primary">❤️</span> { "for" } the developer community.
		</p>
	</div>
}

templ Footer005Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-primary transition-colors">
		{ text }
	</a>
}
```

### footer_006.templ

**Path:** `footer/footer_006.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer006() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer006Main()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer006Bottom()
			</div>
		</footer>
	</section>
}

templ Footer006Main() {
	<div class="grid gap-8 lg:grid-cols-3">
		@Footer006AppPromo()
		@Footer006QuickLinks()
		@Footer006Contact()
	</div>
}

templ Footer006AppPromo() {
	<div class="lg:col-span-1">
		<div class="flex items-center gap-2 mb-4">
			@icon.Layers()
			<span class="text-xl font-bold">Acme Inc</span>
		</div>
		<h3 class="text-lg font-semibold mb-2">Get our mobile app</h3>
		<p class="text-sm text-muted-foreground mb-6">
			Access your favorite UI components on the go. Available for iOS and Android.
		</p>
		@Footer006AppButtons()
		@Footer006QRCode()
	</div>
}

templ Footer006AppButtons() {
	<div class="space-y-3 mb-6">
		@Footer006AppStoreButton("📱 Download on the App Store", "#", "bg-foreground text-background hover:bg-foreground/90")
		@Footer006AppStoreButton("🤖 Get it on Google Play", "#", "bg-primary text-primary-foreground hover:bg-primary/90")
	</div>
}

templ Footer006AppStoreButton(text, href, classes string) {
	@button.Button(button.Props{
		Variant:   button.VariantOutline,
		FullWidth: true,
		Href:      href,
		Target:    "_blank",
	}) {
		{ text }
	}
}

templ Footer006QRCode() {
	<div class="p-4 bg-muted rounded-lg text-center">
		<div class="w-20 h-20 mx-auto mb-2 bg-black rounded" style="background-image: url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODAiIGhlaWdodD0iODAiIHZpZXdCb3g9IjAgMCA4MCA4MCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjgwIiBmaWxsPSJ3aGl0ZSIvPgo8cmVjdCB4PSI0IiB5PSI0IiB3aWR0aD0iNzIiIGhlaWdodD0iNzIiIGZpbGw9ImJsYWNrIi8+CjxyZWN0IHg9IjEyIiB5PSIxMiIgd2lkdGg9IjU2IiBoZWlnaHQ9IjU2IiBmaWxsPSJ3aGl0ZSIvPgo8L3N2Zz4K'); background-size: cover;"></div>
		<p class="text-xs text-muted-foreground">Scan to download</p>
	</div>
}

templ Footer006QuickLinks() {
	<div class="grid grid-cols-2 gap-8">
		@Footer006ProductLinks()
		@Footer006SupportLinks()
	</div>
}

templ Footer006ProductLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Product</h3>
		<div class="flex flex-col gap-2">
			@Footer006Link("Features", "#")
			@Footer006Link("Pricing", "#")
			@Footer006Link("Updates", "#")
			@Footer006Link("Roadmap", "#")
		</div>
	</div>
}

templ Footer006SupportLinks() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Support</h3>
		<div class="flex flex-col gap-2">
			@Footer006Link("Help Center", "#")
			@Footer006Link("Tutorials", "#")
			@Footer006Link("Community", "#")
			@Footer006Link("Contact", "#")
		</div>
	</div>
}

templ Footer006Contact() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Get in touch</h3>
		<div class="space-y-4 mb-6">
			<div>
				<p class="text-sm text-muted-foreground mb-2">Need help?</p>
				@button.Button(button.Props{
					Variant:   button.VariantOutline,
					FullWidth: true,
				}) {
					@icon.Mail(icon.Props{Class: "w-5 h-5 mr-2"})
					Contact Support
				}
			</div>
			<div>
				<p class="text-sm text-muted-foreground mb-2">Follow us</p>
				<div class="flex items-center gap-3">
					<a href="#" class="text-muted-foreground hover:text-foreground transition-colors">
						@icon.Github(icon.Props{
							Class: "size-5",
						})
					</a>
					<a href="#" class="text-muted-foreground hover:text-foreground transition-colors">
						@icon.Twitter(icon.Props{
							Class: "size-5",
						})
					</a>
				</div>
			</div>
		</div>
	</div>
}

templ Footer006Bottom() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc. All rights reserved.
		</p>
		<div class="flex flex-col gap-2">
			@Footer006Link("Privacy Policy", "#")
			@Footer006Link("Terms of Service", "#")
		</div>
	</div>
}

templ Footer006Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-foreground transition-colors">
		{ text }
	</a>
}
```

### footer_007.templ

**Path:** `footer/footer_007.templ`

```templ
package footer

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Footer007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<footer class="bg-background border-t w-full max-w-7xl">
			<div class="px-4 py-12 sm:px-6 lg:px-8">
				@Footer007TopTier()
				@separator.Separator(separator.Props{Class: "my-12"})
				@Footer007BottomTier()
				@separator.Separator(separator.Props{Class: "my-8"})
				@Footer007Copyright()
			</div>
		</footer>
	</section>
}

templ Footer007TopTier() {
	@card.Card(card.Props{
		Class: "bg-muted/30 rounded-2xl p-8 lg:p-12",
	}) {
		<div class="grid gap-8 lg:grid-cols-2 lg:items-center">
			@Footer007CTA()
			@Footer007Newsletter()
		</div>
	}
}

templ Footer007CTA() {
	<div>
		<h2 class="text-2xl font-bold mb-4 lg:text-3xl">
			Ready to build something amazing?
		</h2>
		<p class="text-muted-foreground mb-6 lg:text-lg">
			Join thousands of developers who are already using Acme Inc 
			to create beautiful, accessible interfaces.
		</p>
		<div class="flex flex-col gap-3 sm:flex-row">
			@button.Button(button.Props{
				Class: "sm:w-auto",
			}) {
				Get Started Free
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "sm:w-auto",
			}) {
				View Documentation
			}
		</div>
	</div>
}

templ Footer007Newsletter() {
	<div class="lg:max-w-md lg:ml-auto">
		<h3 class="text-lg font-semibold mb-2">Stay updated</h3>
		<p class="text-sm text-muted-foreground mb-4">
			Get the latest components, updates, and tips delivered to your inbox.
		</p>
		<div class="flex gap-2">
			@input.Input(input.Props{
				Type:        "email",
				Placeholder: "your@email.com",
				Class:       "flex-1",
			})
			@button.Button() {
				Subscribe
			}
		</div>
		<p class="text-xs text-muted-foreground mt-2">
			We respect your privacy. Unsubscribe at any time.
		</p>
	</div>
}

templ Footer007BottomTier() {
	<div class="grid gap-8 md:grid-cols-2 lg:grid-cols-4">
		@Footer007BrandSection()
		@Footer007ProductSection()
		@Footer007CompanySection()
		@Footer007ResourceSection()
	</div>
}

templ Footer007BrandSection() {
	<div>
		<div class="flex items-center gap-2 mb-4">
			@icon.Layers()
			<span class="text-lg font-bold">Acme Inc</span>
		</div>
		<p class="text-sm text-muted-foreground mb-4">
			Beautiful UI components for modern web applications.
		</p>
		<div class="flex items-center gap-3">
			<a href="#" class="text-muted-foreground hover:text-foreground transition-colors">
				@icon.Github(icon.Props{
					Class: "size-5",
				})
			</a>
			<a href="#" class="text-muted-foreground hover:text-foreground transition-colors">
				@icon.Twitter(icon.Props{
					Class: "size-5",
				})
			</a>
		</div>
	</div>
}

templ Footer007ProductSection() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Product</h3>
		<div class="flex flex-col gap-2">
			@Footer007Link("Components", "#")
			@Footer007Link("Blocks", "#")
			@Footer007Link("Templates", "#")
			@Footer007Link("Pricing", "#")
		</div>
	</div>
}

templ Footer007CompanySection() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Company</h3>
		<div class="flex flex-col gap-2">
			@Footer007Link("About", "#")
			@Footer007Link("Blog", "#")
			@Footer007Link("Careers", "#")
			@Footer007Link("Press", "#")
			@Footer007Link("Contact", "#")
		</div>
	</div>
}

templ Footer007ResourceSection() {
	<div>
		<h3 class="text-sm font-semibold mb-4">Resources</h3>
		<div class="flex flex-col gap-2">
			@Footer007Link("Documentation", "#")
			@Footer007Link("Guides", "#")
			@Footer007Link("Help Center", "#")
			@Footer007Link("Community", "#")
			@Footer007Link("Status", "#")
		</div>
	</div>
}

templ Footer007Copyright() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<p class="text-sm text-muted-foreground">
			© 2024 Acme Inc. All rights reserved.
		</p>
		<div class="flex items-center gap-6">
			@Footer007Link("Privacy Policy", "#")
			@Footer007Link("Terms of Service", "#")
			@Footer007Link("Cookie Settings", "#")
		</div>
	</div>
}

templ Footer007Link(text, href string) {
	<a href={ templ.URL(href) } class="text-sm text-muted-foreground hover:text-foreground transition-colors">
		{ text }
	</a>
}
```

## Gallery

### gallery_001.templ

**Path:** `gallery/gallery_001.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Gallery001() {
	<section class="w-full p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Gallery001Header()
			@Gallery001Grid()
		</div>
	</section>
}

templ Gallery001Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Our <span class="text-primary">Gallery</span>
		</h2>
		<p class="text-lg text-muted-foreground max-w-2xl mx-auto">
			Explore our collection of stunning visuals and creative works
		</p>
	</div>
}

templ Gallery001Grid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
		@Gallery001Item("/assets/img/placeholder.svg", "Portrait Photography", "Professional portrait session")
		@Gallery001Item("/assets/img/placeholder.svg", "Fashion Shoot", "Editorial fashion photography")
		@Gallery001Item("/assets/img/placeholder.svg", "Beauty Portrait", "Natural beauty photography")
		@Gallery001Item("/assets/img/placeholder.svg", "Male Portrait", "Professional headshot")
		@Gallery001Item("/assets/img/placeholder.svg", "Studio Photography", "Creative studio work")
		@Gallery001Item("/assets/img/placeholder.svg", "Outdoor Portrait", "Natural light photography")
	</div>
}

templ Gallery001Item(src, title, description string) {
	@card.Card(card.Props{
		Class: "group relative overflow-hidden",
	}) {
		<div class="aspect-square overflow-hidden">
			<img
				src={ src }
				alt={ title }
				class="h-full w-full object-cover transition-transform duration-300 group-hover:scale-110"
			/>
		</div>
		<div class="absolute inset-0 bg-gradient-to-t from-black/80 via-black/40 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300">
			<div class="absolute bottom-0 left-0 right-0 p-6 text-white">
				<h3 class="text-xl font-semibold mb-1">{ title }</h3>
				<p class="text-sm opacity-90">{ description }</p>
				<div class="mt-3">
					<span class="inline-flex items-center gap-1 text-sm font-medium text-white/90 hover:text-white transition-colors">
						View Details
						@icon.ArrowRight(icon.Props{Size: 14})
					</span>
				</div>
			</div>
		</div>
	}
}
```

### gallery_002.templ

**Path:** `gallery/gallery_002.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Gallery002() {
	<section class="w-full p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Gallery002Header()
			@Gallery002Masonry()
		</div>
	</section>
}

templ Gallery002Header() {
	<div class="flex flex-col md:flex-row md:items-center md:justify-between mb-12">
		<div>
			<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-2">
				Portfolio <span class="text-primary">Showcase</span>
			</h2>
			<p class="text-lg text-muted-foreground">
				Creative works in masonry layout
			</p>
		</div>
		<div class="mt-4 md:mt-0">
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
				Class:   "border-primary/20 text-primary",
			}) {
				12 Projects
			}
		</div>
	</div>
}

templ Gallery002Masonry() {
	<div class="columns-1 md:columns-2 lg:columns-3 gap-6 space-y-6">
		@Gallery002Item("/assets/img/placeholder.svg", "Architecture", "h-[400px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Interior Design", "h-[300px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Product Design", "h-[500px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Typography", "h-[350px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Branding", "h-[450px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Digital Art", "h-[400px]")
		@Gallery002Item("/assets/img/placeholder.svg", "Photography", "h-[320px]")
		@Gallery002Item("/assets/img/placeholder.svg", "3D Design", "h-[480px]")
	</div>
}

templ Gallery002Item(src, title, heightClass string) {
	@card.Card(card.Props{
		Class: "group relative overflow-hidden break-inside-avoid",
	}) {
		<div class={ "relative overflow-hidden", heightClass }>
			<img
				src={ src }
				alt={ title }
				class="h-full w-full object-cover transition-all duration-500 group-hover:scale-105 group-hover:brightness-75"
			/>
			<div class="absolute inset-0 flex items-end p-6 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
				<div class="bg-white/90 dark:bg-black/90 backdrop-blur-sm rounded-lg px-4 py-2 border border-primary/20">
					<span class="text-sm font-medium text-primary">{ title }</span>
				</div>
			</div>
		</div>
	}
}
```

### gallery_003.templ

**Path:** `gallery/gallery_003.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/carousel"
)

templ Gallery003() {
	<div class="h-fit">
		<section class="max-w-5xl mx-auto p-6 md:p-10">
			@Gallery003Header()
			@Gallery003Carousel()
		</section>
	</div>
}

templ Gallery003Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Featured <span class="text-primary">Gallery</span>
		</h2>
		<p class="text-lg text-muted-foreground max-w-2xl mx-auto">
			Swipe through our curated collection
		</p>
	</div>
}

templ Gallery003Carousel() {
	@carousel.Carousel(carousel.Props{
		Autoplay: true,
		Interval: 5000,
		Loop:     true,
		Class:    "rounded-xl overflow-hidden shadow-lg",
	}) {
		@carousel.Content() {
			@carousel.Item() {
				@Gallery003ImageSlide("/assets/img/placeholder.svg", "Mountain Landscape")
				<div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/80 to-black/40 text-white p-8">
					<h3 class="text-2xl md:text-3xl font-bold mb-2">Mountain Landscape</h3>
					<p class="text-lg opacity-90">Breathtaking mountain views</p>
					<div class="mt-3">
						<span class="inline-flex items-center text-sm font-medium text-primary">
							Explore →
						</span>
					</div>
				</div>
			}
			@carousel.Item() {
				@Gallery003ImageSlide("/assets/img/placeholder.svg", "Ocean Sunset")
				<div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/80 to-black/40 text-white p-8">
					<h3 class="text-2xl md:text-3xl font-bold mb-2">Ocean Sunset</h3>
					<p class="text-lg opacity-90">Peaceful ocean scenery</p>
					<div class="mt-3">
						<span class="inline-flex items-center text-sm font-medium text-primary">
							Explore →
						</span>
					</div>
				</div>
			}
			@carousel.Item() {
				@Gallery003ImageSlide("/assets/img/placeholder.svg", "Alpine Vista")
				<div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/80 to-black/40 text-white p-8">
					<h3 class="text-2xl md:text-3xl font-bold mb-2">Alpine Vista</h3>
					<p class="text-lg opacity-90">Stunning alpine landscape</p>
					<div class="mt-3">
						<span class="inline-flex items-center text-sm font-medium text-primary">
							Explore →
						</span>
					</div>
				</div>
			}
			@carousel.Item() {
				@Gallery003ImageSlide("/assets/img/placeholder.svg", "Desert Dunes")
				<div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/80 to-black/40 text-white p-8">
					<h3 class="text-2xl md:text-3xl font-bold mb-2">Desert Dunes</h3>
					<p class="text-lg opacity-90">Vast desert landscapes</p>
					<div class="mt-3">
						<span class="inline-flex items-center text-sm font-medium text-primary">
							Explore →
						</span>
					</div>
				</div>
			}
		}
		@carousel.Previous()
		@carousel.Next()
		@carousel.Indicators(carousel.IndicatorsProps{
			Count: 4,
		})
	}
}

templ Gallery003ImageSlide(src string, alt string) {
	@aspectratio.AspectRatio(aspectratio.Props{
		Ratio: aspectratio.RatioWide,
	}) {
		<img
			src={ src }
			alt={ alt }
			class="w-full h-full object-cover"
		/>
	}
}
```

### gallery_004.templ

**Path:** `gallery/gallery_004.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Gallery004() {
	<section class="w-full p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Gallery004Header()
			@Gallery004Filters()
			@Gallery004Grid()
		</div>
	</section>
}

templ Gallery004Header() {
	<div class="text-center mb-8">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Project <span class="text-primary">Portfolio</span>
		</h2>
		<p class="text-lg text-muted-foreground max-w-2xl mx-auto">
			Filter through our diverse range of creative projects
		</p>
	</div>
}

templ Gallery004Filters() {
	<div class="flex flex-wrap justify-center gap-2 mb-12">
		@button.Button(button.Props{
			Variant: button.VariantDefault,
		}) {
			All
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Branding
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Web Design
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Photography
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Illustration
		}
	</div>
}

templ Gallery004Grid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
		@Gallery004Item("/assets/img/placeholder.svg", "Brand Identity", "Branding", "Complete brand redesign for tech startup")
		@Gallery004Item("/assets/img/placeholder.svg", "E-commerce Platform", "Web Design", "Modern online shopping experience")
		@Gallery004Item("/assets/img/placeholder.svg", "Product Photography", "Photography", "Professional product shoot")
		@Gallery004Item("/assets/img/placeholder.svg", "Digital Illustration", "Illustration", "Custom illustrations for mobile app")
		@Gallery004Item("/assets/img/placeholder.svg", "Dashboard Design", "Web Design", "Analytics dashboard interface")
		@Gallery004Item("/assets/img/placeholder.svg", "Marketing Campaign", "Branding", "Multi-channel marketing materials")
	</div>
}

templ Gallery004Item(src, title, category, description string) {
	@card.Card(card.Props{
		Class: "group cursor-pointer border-0 shadow-none p-0 bg-transparent",
	}) {
		<div class="relative overflow-hidden rounded-lg mb-4">
			<div class="aspect-[3/2] overflow-hidden bg-muted">
				<img
					src={ src }
					alt={ title }
					class="h-full w-full object-cover transition-transform duration-700 group-hover:scale-110"
				/>
			</div>
			<div class="absolute top-4 left-4">
				@badge.Badge(badge.Props{
					Class: "bg-primary/90 backdrop-blur-sm text-primary-foreground border-0 px-3 py-1 text-xs font-medium",
				}) {
					{ category }
				}
			</div>
		</div>
		<h3 class="text-lg font-semibold mb-2 group-hover:text-primary transition-colors">
			{ title }
		</h3>
		<p class="text-sm text-muted-foreground">
			{ description }
		</p>
	}
}
```

### gallery_005.templ

**Path:** `gallery/gallery_005.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Gallery005() {
	<section class="w-full p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Gallery005Header()
			@Gallery005Grid()
			@Gallery005Modal()
		</div>
	</section>
}

templ Gallery005Header() {
	<div class="mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Interactive <span class="text-primary">Gallery</span>
		</h2>
		<p class="text-lg text-muted-foreground">
			Click any image to view in lightbox mode
		</p>
	</div>
}

templ Gallery005Grid() {
	<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
		@Gallery005Item("/assets/img/placeholder.svg", "Abstract Art")
		@Gallery005Item("/assets/img/placeholder.svg", "Digital Creation")
		@Gallery005Item("/assets/img/placeholder.svg", "Watercolor")
		@Gallery005Item("/assets/img/placeholder.svg", "Mixed Media")
		@Gallery005Item("/assets/img/placeholder.svg", "Contemporary")
		@Gallery005Item("/assets/img/placeholder.svg", "Minimalist")
		@Gallery005Item("/assets/img/placeholder.svg", "Geometric")
		@Gallery005Item("/assets/img/placeholder.svg", "Texture Study")
	</div>
}

templ Gallery005Item(src, title string) {
	<div>
		@card.Card(card.Props{
			Class: "group relative aspect-square overflow-hidden cursor-pointer focus-within:ring-2 focus-within:ring-primary focus-within:ring-offset-2 hover:shadow-lg hover:shadow-primary/10 transition-all duration-300",
		}) {
			<button
				class="absolute inset-0 w-full h-full bg-transparent border-0 p-0"
				data-lightbox="gallery"
				data-src={ src }
				data-title={ title }
			>
				<img
					src={ src }
					alt={ title }
					class="h-full w-full object-cover transition-all duration-300 group-hover:scale-110 group-hover:brightness-90"
				/>
				<div class="absolute inset-0 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity duration-300">
					@icon.Expand(icon.Props{
						Size:  24,
						Class: "text-primary drop-shadow-lg",
					})
				</div>
			</button>
		}
	</div>
}

templ Gallery005Modal() {
	<div class="fixed inset-0 z-50 hidden items-center justify-center bg-black/90 backdrop-blur-sm" data-lightbox-modal>
		<button
			class="absolute top-4 right-4 text-white/80 hover:text-primary transition-colors"
			data-lightbox-close
		>
			@icon.X(icon.Props{
				Size: 24,
			})
		</button>
		<button
			class="absolute left-4 top-1/2 -translate-y-1/2 text-white/80 hover:text-primary transition-colors"
			data-lightbox-prev
		>
			@icon.ChevronLeft(icon.Props{
				Size: 32,
			})
		</button>
		<button
			class="absolute right-4 top-1/2 -translate-y-1/2 text-white/80 hover:text-primary transition-colors"
			data-lightbox-next
		>
			@icon.ChevronRight(icon.Props{
				Size: 32,
			})
		</button>
		<div class="relative max-w-7xl max-h-[90vh] mx-4">
			<img
				src=""
				alt=""
				class="max-w-full max-h-[90vh] object-contain"
				data-lightbox-image
			/>
			<div class="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/60 to-transparent p-4 text-white text-center">
				<p class="text-lg font-medium" data-lightbox-title></p>
			</div>
		</div>
	</div>
}
```

### gallery_006.templ

**Path:** `gallery/gallery_006.templ`

```templ
package gallery

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Gallery006() {
	<section class="w-full p-6 md:p-10">
		<div class="max-w-7xl mx-auto">
			@Gallery006Header()
			@Gallery006Showcase()
		</div>
	</section>
}

templ Gallery006Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Portfolio <span class="text-primary">Showcase</span>
		</h2>
		<p class="text-lg text-muted-foreground max-w-2xl mx-auto">
			Featured projects with detailed case studies
		</p>
	</div>
}

templ Gallery006Showcase() {
	<div class="space-y-20">
		@Gallery006Project(
			"/assets/img/placeholder.svg",
			"Modern Brand Identity",
			"Branding",
			"A complete brand overhaul for a leading tech company, featuring a new visual identity system that reflects innovation and accessibility.",
			[]string{"Strategy", "Visual Design", "Guidelines"},
			false,
		)
		@Gallery006Project(
			"/assets/img/placeholder.svg",
			"Mobile Banking App",
			"UI/UX Design",
			"Redesigned mobile banking experience focusing on simplicity and security, resulting in 40% increase in user engagement.",
			[]string{"Research", "Prototyping", "Testing"},
			true,
		)
		@Gallery006Project(
			"/assets/img/placeholder.svg",
			"E-commerce Platform",
			"Web Development",
			"Full-stack development of a scalable e-commerce solution handling thousands of daily transactions with real-time inventory management.",
			[]string{"Frontend", "Backend", "DevOps"},
			false,
		)
	</div>
}

templ Gallery006Project(src, title, category, description string, tags []string, reversed bool) {
	<div class={ "grid grid-cols-1 lg:grid-cols-2 gap-8 lg:gap-12 items-center", templ.KV("lg:flex-row-reverse", reversed) }>
		<div class={ templ.KV("lg:order-2", reversed) }>
			@card.Card(card.Props{
				Class: "relative overflow-hidden shadow-2xl",
			}) {
				<div class="aspect-[4/3] bg-muted">
					<img
						src={ src }
						alt={ title }
						class="h-full w-full object-cover"
					/>
				</div>
			}
		</div>
		<div class={ templ.KV("lg:order-1", reversed) }>
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
				Class:   "border-primary/50 text-primary",
			}) {
				{ category }
			}
			<h3 class="text-2xl md:text-3xl font-bold mt-4 mb-4 hover:text-primary transition-colors">
				{ title }
			</h3>
			<p class="text-lg text-muted-foreground mb-6">
				{ description }
			</p>
			<div class="flex flex-wrap gap-2 mb-8">
				for _, tag := range tags {
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "text-sm",
					}) {
						{ tag }
					}
				}
			</div>
			<div class="flex gap-4">
				@button.Button() {
					View Case Study
					@icon.ArrowRight(icon.Props{
						Size:  16,
						Class: "ml-2",
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Class:   "hover:text-primary",
				}) {
					Live Preview
					@icon.ExternalLink(icon.Props{
						Size:  16,
						Class: "ml-2",
					})
				}
			</div>
		</div>
	</div>
}
```

## Hero

### hero_001.templ

**Path:** `hero/hero_001.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Hero001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="flex flex-col items-center py-16 md:py-24 text-center">
			@Hero001Badge()
			@Hero001Headline()
			@Hero001Buttons()
			@Hero001Stats()
			@Hero001Preview()
		</div>
	</section>
}

templ Hero001Badge() {
	@badge.Badge() {
		New Features Available
	}
}

templ Hero001Headline() {
	<h1 class="max-w-4xl text-5xl md:text-6xl lg:text-7xl font-bold tracking-tight text-center mb-6">
		Transform your <span>digital experience</span>
	</h1>
	<p class="max-w-2xl text-xl md:text-2xl text-muted-foreground mb-10">
		Build stunning web applications with our modern UI component library. Fast, accessible, and designed for real projects.
	</p>
}

templ Hero001Buttons() {
	<div class="flex flex-col sm:flex-row gap-2 mb-16">
		@button.Button() {
			<span class="flex items-center gap-2">
				Get Started
				@icon.ArrowRight(icon.Props{
					Size: 18,
				})
			</span>
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			View Components
		}
	</div>
}

templ Hero001Stats() {
	<div class="grid grid-cols-2 md:grid-cols-4 gap-6 md:gap-12 text-center">
		<div class="flex flex-col">
			<span class="text-3xl md:text-4xl font-bold">1200+</span>
			<span class="text-sm text-muted-foreground">Components</span>
		</div>
		<div class="flex flex-col">
			<span class="text-3xl md:text-4xl font-bold">10k+</span>
			<span class="text-sm text-muted-foreground">Downloads</span>
		</div>
		<div class="flex flex-col">
			<span class="text-3xl md:text-4xl font-bold">95%</span>
			<span class="text-sm text-muted-foreground">Satisfaction</span>
		</div>
		<div class="flex flex-col">
			<span class="text-3xl md:text-4xl font-bold">24/7</span>
			<span class="text-sm text-muted-foreground">Support</span>
		</div>
	</div>
}

templ Hero001Preview() {
	<div class="hidden sm:block relative mt-16 w-full max-w-4xl mx-auto border rounded-xl overflow-hidden">
		<div class="bg-muted p-2 flex items-center border-b">
			<div class="flex space-x-1 mr-4">
				<div class="w-3 h-3 rounded-full bg-muted-foreground/20"></div>
				<div class="w-3 h-3 rounded-full bg-muted-foreground/20"></div>
				<div class="w-3 h-3 rounded-full bg-muted-foreground/20"></div>
			</div>
			<div class="flex-1 bg-muted-foreground/10 rounded-md h-5"></div>
		</div>
		<div class="h-[240px] bg-background flex items-center justify-center p-4">
			<div class="text-center">
				<span class="text-lg font-medium text-muted-foreground">Interactive Preview</span>
				<p class="text-sm text-muted-foreground">Coming soon</p>
			</div>
		</div>
	</div>
}
```

### hero_002.templ

**Path:** `hero/hero_002.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Hero002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		@Hero002Background()
		@Hero002Content()
	</section>
}

templ Hero002Background() {
	<div class="absolute inset-0 w-full h-full">
		<div class="absolute inset-0 bg-black/60 z-10"></div>
		<video
			class="w-full h-full object-cover"
			autoplay
			loop
			muted
			playsinline
		>
			<source src="https://cdn.pixabay.com/video/2018/05/15/16224-270577444_large.mp4" type="video/mp4"/>
			Your browser does not support the video tag.
		</video>
	</div>
}

templ Hero002Content() {
	<div class="relative z-20 container py-24 md:py-32 lg:py-40">
		<div class="max-w-3xl">
			@Hero002Badge()
			@Hero002Headline()
			@Hero002Buttons()
		</div>
	</div>
}

templ Hero002Badge() {
	@badge.Badge(badge.Props{
		Variant: badge.VariantOutline,
		Class:   "mb-4 bg-black/30 backdrop-blur-sm border-white/20 text-white/90",
	}) {
		New Feature
	}
}

templ Hero002Headline() {
	<h1 class="text-4xl md:text-5xl font-bold tracking-tight text-white mb-4">
		Create stunning landing pages with video backgrounds
	</h1>
	<p class="text-lg text-white/80 mb-8 max-w-xl">
		Engage your audience with dynamic, full-screen video backgrounds that showcase your product in action, all without compromising on load times.
	</p>
}

templ Hero002Buttons() {
	<div class="flex flex-wrap gap-2">
		@button.Button(button.Props{
			Size:  "lg",
			Class: "font-medium",
		}) {
			Get Started
			@icon.ArrowRight(icon.Props{
				Class: "ml-2 h-4 w-4",
			})
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    "lg",
			Class:   "font-medium bg-black/30 backdrop-blur-sm border-white/20 text-white hover:bg-white/10 hover:text-white",
		}) {
			@icon.Play(icon.Props{
				Class: "mr-2 h-4 w-4",
			})
			Watch Demo
		}
	</div>
}
```

### hero_003.templ

**Path:** `hero/hero_003.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Hero003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="flex flex-col items-center justify-center space-y-4 text-center">
			@Hero003Header()
			@Hero003SocialProof()
		</div>
	</section>
}

templ Hero003Header() {
	<div class="container flex flex-col items-center justify-center space-y-8 text-center">
		<h1 class="text-4xl font-bold tracking-tight text-foreground sm:text-5xl md:text-6xl">
			Trusted by Thousands
		</h1>
		<p class="mx-auto max-w-[600px] text-muted-foreground md:text-lg">
			Join the growing community of developers building amazing applications faster than ever before.
		</p>
		<div class="pt-2">
			@button.Button(button.Props{
				Size:  "lg",
				Class: "px-8",
			}) {
				<div class="flex items-center gap-2">
					@icon.Rocket(icon.Props{Class: "h-4 w-4"})
					Get Started Today
				</div>
			}
		</div>
	</div>
}

templ Hero003SocialProof() {
	<div class="container mt-12">
		@separator.Separator(separator.Props{Class: "my-8"})
		<div class="flex flex-col items-center space-y-6">
			<span class="text-sm font-medium text-muted-foreground">
				Powering the best teams worldwide
			</span>
			<div class="flex flex-wrap items-center justify-center gap-x-8 gap-y-6 pt-2 opacity-80">
				@icon.MicVocal()
				@icon.IceCreamCone()
				@icon.CakeSlice()
				@icon.Beer()
				@icon.Bean()
			</div>
			<div class="flex items-center gap-2 pt-4 text-sm text-muted-foreground">
				@avatar.Avatar(avatar.Props{
					Class: "bg-foreground text-background",
				}) {
					99k
				}
				<span>Satisfied customers and counting</span>
			</div>
		</div>
	</div>
}
```

### hero_004.templ

**Path:** `hero/hero_004.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Hero004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="grid gap-6 lg:grid-cols-2 lg:gap-12 items-center py-16">
			@Hero004Content()
			@Hero004Illustration()
		</div>
	</section>
}

templ Hero004Content() {
	<div class="flex flex-col justify-center space-y-4">
		@badge.Badge(badge.Props{
			Variant: badge.VariantOutline,
			Class:   "inline-flex items-center gap-1 rounded-full px-3 py-1 text-sm w-fit bg-primary/10 border-primary/20",
		}) {
			<span>Just Launched</span>
			<div class="h-1.5 w-1.5 rounded-full bg-primary animate-pulse"></div>
		}
		<h1 class="text-3xl font-bold tracking-tight md:text-4xl lg:text-5xl">
			Join our community of forward-thinking professionals
		</h1>
		<p class="text-muted-foreground md:text-lg">
			Get exclusive insights, early access to new features, and weekly tips delivered straight to your inbox.
		</p>
		<div class="flex flex-col gap-2 pt-4 sm:flex-row max-w-md">
			@input.Input(input.Props{
				Type:        "email",
				Placeholder: "Enter your email",
				Class:       "flex-1",
			})
			@button.Button(button.Props{
				Size:  "default",
				Class: "shrink-0",
			}) {
				Subscribe
				@icon.ArrowRight(icon.Props{Class: "ml-2 h-4 w-4"})
			}
		</div>
		@separator.Separator(separator.Props{Class: "my-6"})
		<div class="flex items-center gap-4">
			<div class="flex flex-col gap-1">
				<div class="flex items-center">
					for i := 0; i < 5; i++ {
						@icon.Star(icon.Props{
							Class: "h-4 w-4 text-primary fill-primary",
						})
					}
				</div>
				<p class="text-sm italic text-muted-foreground">
					"The newsletter has been incredibly valuable for our team."
				</p>
				<div class="text-sm font-medium">Alex Morgan, Design Lead</div>
			</div>
		</div>
	</div>
}

templ Hero004Illustration() {
	@card.Card(card.Props{
		Class: "w-full overflow-hidden",
	}) {
		@card.Content() {
			<div class="mb-6 flex items-center justify-between">
				<div class="flex items-center gap-2">
					@avatar.Avatar(avatar.Props{Class: "h-8 w-8"}) {
						@icon.Mail(icon.Props{Size: 16})
					}
					<p class="font-medium">Weekly Insights</p>
				</div>
				<p class="text-xs text-muted-foreground">Just now</p>
			</div>
			<h3 class="text-lg font-semibold mb-2">This week's top resources</h3>
			<p class="text-sm text-muted-foreground mb-4">
				Explore our curated list of articles, tools, and tips to boost your productivity.
			</p>
			<div class="space-y-3 overflow-x-auto">
				@Hero004ResourceItem("How to improve your workflow", "5 min read")
				@separator.Separator(separator.Props{Class: "my-4"})
				@Hero004ResourceItem("The best tools for remote teams", "8 min read")
				@separator.Separator(separator.Props{Class: "my-4"})
				@Hero004ResourceItem("This week's top resources", "2 min read")
			</div>
			<a href="#" class="mt-4 text-sm text-muted-foreground flex items-center gap-1 hover:text-primary hover:underline">
				See all resources
				@icon.ArrowRight(icon.Props{Size: 16})
			</a>
		}
	}
}

templ Hero004ResourceItem(title string, subtitle string) {
	<div class="flex items-center gap-3 sm:gap-3">
		<div class="h-10 w-10 rounded bg-primary/10 flex items-center justify-center shrink-0">
			@icon.FileText(icon.Props{Class: "h-5 w-5"})
		</div>
		<div class="flex-1 min-w-0">
			<p class="truncate font-medium text-sm">{ title }</p>
			<p class="text-xs text-muted-foreground">{ subtitle }</p>
		</div>
		<a href="#">
			@button.Button(button.Props{
				Size:    button.SizeIcon,
				Variant: button.VariantGhost,
			}) {
				@icon.ExternalLink(icon.Props{Size: 16})
			}
		</a>
	</div>
}
```

### hero_005.templ

**Path:** `hero/hero_005.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Hero005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="flex flex-col items-center justify-center space-y-4 text-center">
			@Hero005Header()
			@Hero005Features()
			@Hero005Actions()
		</div>
	</section>
}

templ Hero005Header() {
	@badge.Badge(badge.Props{
		Class: "bg-muted px-3 py-1 rounded-lg text-sm font-medium",
	}) {
		@icon.Sparkles(icon.Props{
			Size:  16,
			Class: "text-primary fill-primary",
		})
		<span class="text-primary">New Features</span>
	}
	<h1 class="text-3xl font-bold tracking-tight sm:text-4xl md:text-5xl lg:text-6xl">
		Powerful Features for Modern Teams
	</h1>
	<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl/relaxed lg:text-base/relaxed xl:text-xl/relaxed">
		Everything you need to streamline your workflow and boost productivity
	</p>
}

templ Hero005Features() {
	<div class="mx-auto flex w-full flex-col gap-4 mt-8">
		<div class="grid grid-cols-1 md:grid-cols-3 gap-6">
			@Hero005FeatureCard("Lightning Fast", "Experience blazing performance with our optimized architecture and efficient caching strategy.", icon.Zap)
			@Hero005FeatureCard("Enterprise Security", "Bank-grade encryption and compliance with industry standards keep your data protected at all times.", icon.Shield)
			@Hero005FeatureCard("Seamless Integration", "Connect with your favorite tools and services through our extensive API and pre-built integrations.", icon.RefreshCw)
		</div>
	</div>
}

templ Hero005FeatureCard(title string, description string, iconFunc func(...icon.Props) templ.Component) {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		@card.Header() {
			<div class="flex items-center justify-center gap-2">
				@avatar.Avatar(avatar.Props{
					Class: "bg-primary/10",
				}) {
					@iconFunc(icon.Props{Class: "h-5 w-5"})
				}
				@card.Title(card.TitleProps{Class: "text-xl"}) {
					{ title }
				}
			</div>
		}
		@card.Content() {
			<p class="text-muted-foreground">{ description }</p>
		}
	}
}

templ Hero005Actions() {
	<div class="flex flex-col gap-2 min-[400px]:flex-row pt-8">
		@button.Button(button.Props{
			Size:  "lg",
			Class: "font-medium",
		}) {
			Get Started
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    "lg",
			Class:   "font-medium",
		}) {
			View Documentation
		}
	</div>
}
```

### hero_006.templ

**Path:** `hero/hero_006.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Hero006() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="flex flex-col items-center justify-center space-y-4 text-center">
			@Hero006Header()
			@Hero006Metrics()
			@Hero006Actions()
			@Hero006Logos()
		</div>
	</section>
}

templ Hero006Header() {
	<a href="#" rel="noopener noreferrer">
		@badge.Badge(badge.Props{
			Class:   "rounded-full px-4 py-1.5 text-sm font-medium hover:bg-muted",
			Variant: badge.VariantOutline,
		}) {
			@icon.Feather(icon.Props{Class: "h-4 w-4"})
			Featured on Product Hunt
		}
	</a>
	<h1 class="text-3xl font-bold tracking-tight sm:text-4xl md:text-5xl lg:text-6xl">
		Revolutionize Your Workflow
	</h1>
	<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl/relaxed lg:text-base/relaxed xl:text-xl/relaxed">
		Join thousands of teams who have already transformed how they build and deploy applications
	</p>
}

templ Hero006Metrics() {
	<div class="mx-auto grid grid-cols-1 gap-8 md:grid-cols-3 md:gap-12 lg:gap-16 mt-8">
		@Hero006Metric("250K+", "Active Users")
		@Hero006Metric("99.9%", "Uptime")
		@Hero006Metric("4.9/5", "Average Rating")
	</div>
}

templ Hero006Metric(value string, label string) {
	<div class="flex flex-col items-center">
		<span class="text-4xl font-bold">{ value }</span>
		<span class="text-sm text-muted-foreground">{ label }</span>
	</div>
}

templ Hero006Actions() {
	<div class="flex flex-col gap-2 min-[400px]:flex-row pt-8">
		@button.Button(button.Props{
			Size:  "lg",
			Class: "font-medium",
		}) {
			Try it Free
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    "lg",
			Class:   "font-medium",
		}) {
			View Demo
			@icon.ArrowRight(icon.Props{Class: "ml-2 h-4 w-4"})
		}
	</div>
}

templ Hero006Logos() {
	<div class="mt-12">
		<p class="text-sm text-muted-foreground mb-4">Trusted by innovative companies</p>
		<div class="flex flex-wrap justify-center gap-8 grayscale opacity-70">
			for _, name := range []string{"Adobe", "Microsoft", "Google", "Shopify", "Spotify"} {
				<p class="text-muted-foreground font-semibold">{ name }</p>
			}
		</div>
	</div>
}
```

### hero_007.templ

**Path:** `hero/hero_007.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/rating"
)

templ Hero007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="max-w-xl text-center">
			@Hero007Header()
			@Hero007Actions()
			@Hero007Social()
		</div>
	</section>
}

templ Hero007Header() {
	@badge.Badge() {
		New features available
	}
	<h1 class="mt-4 text-4xl font-extrabold tracking-tight sm:text-5xl lg:text-6xl">
		<span class="block">Take your product to</span>
		<span class="block">the next level</span>
	</h1>
	<p class="mt-6 text-xl text-muted-foreground max-w-lg mx-auto">
		Our platform helps you build beautiful, fast, and accessible web applications with our collection of reusable components.
	</p>
}

templ Hero007Actions() {
	<div class="mt-10 flex justify-center gap-4">
		@button.Button() {
			Get Access
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<div class="flex items-center gap-1.5">
				@icon.Play(icon.Props{Size: 16})
				Watch Demo
			</div>
		}
	</div>
}

templ Hero007Social() {
	<div class="mt-12 flex flex-wrap justify-center items-center gap-4">
		<div class="flex -space-x-4 *:ring-2 *:ring-background">
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-1.png",
					Alt: "User avatar",
				})
				@avatar.Fallback() {
					U1
				}
			}
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-2.png",
					Alt: "User avatar",
				})
				@avatar.Fallback() {
					U2
				}
			}
			@avatar.Avatar() {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-3.png",
					Alt: "User avatar",
				})
				@avatar.Fallback() {
					U3
				}
			}
			@avatar.Avatar(avatar.Props{
				Class: "bg-muted text-muted-foreground",
			}) {
				@avatar.Fallback() {
					+2
				}
			}
		</div>
		<div class="flex flex-col items-start">
			<span class="text-sm font-medium">Trusted by 5000+ customers</span>
			<div class="flex items-center mt-1">
				@rating.Rating(rating.Props{
					Value:     4.3,
					ReadOnly:  true,
					Precision: 0.5,
					Class:     "text-primary",
				}) {
					@rating.Group() {
						@rating.Item(rating.ItemProps{Value: 1, Style: rating.StyleStar})
						@rating.Item(rating.ItemProps{Value: 2, Style: rating.StyleStar})
						@rating.Item(rating.ItemProps{Value: 3, Style: rating.StyleStar})
						@rating.Item(rating.ItemProps{Value: 4, Style: rating.StyleStar})
						@rating.Item(rating.ItemProps{Value: 5, Style: rating.StyleStar})
					}
				}
				<span class="ml-1 text-xs text-muted-foreground">4.3/5</span>
			</div>
		</div>
	</div>
}
```

### hero_008.templ

**Path:** `hero/hero_008.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Hero008() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="grid lg:grid-cols-2 gap-8">
			@Hero008Content()
			@Hero008Image()
		</div>
	</section>
}

templ Hero008Content() {
	<div class="flex items-center justify-center">
		<div class="max-w-xl">
			<div class="flex items-center gap-2 mb-6">
				@badge.Badge() {
					New
				}
				<span class="text-sm text-muted-foreground">Version 2.0 released</span>
			</div>
			<h1 class="text-4xl font-bold tracking-tight sm:text-5xl">
				Design. Build. <span>Deploy.</span>
			</h1>
			<p class="mt-4 text-lg text-muted-foreground">
				Create stunning interfaces with our component library. Build faster, design better, and ship with confidence.
			</p>
			<div class="mt-8 flex flex-col sm:flex-row gap-2">
				@button.Button() {
					Get Started
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					<div class="flex items-center justify-center gap-2">
						Documentation
						@icon.ArrowRight(icon.Props{Size: 16})
					</div>
				}
			</div>
			<div class="mt-8 border-t pt-6 border-border">
				<p class="text-sm text-muted-foreground mb-2">Trusted by industry leaders</p>
				<div class="flex flex-wrap gap-6">
					<div class="text-muted-foreground font-semibold">Microsoft</div>
					<div class="text-muted-foreground font-semibold">Amazon</div>
					<div class="text-muted-foreground font-semibold">Apple</div>
					<div class="text-muted-foreground font-semibold">Google</div>
				</div>
			</div>
		</div>
	</div>
}

templ Hero008Image() {
	<div class="relative h-[40vh] lg:h-auto bg-muted flex items-center justify-center gap-4">
		<img
			src="/assets/img/placeholder.svg"
			alt="Hero Split"
			class="absolute inset-0 h-full w-full object-cover dark:brightness-[0.2] dark:grayscale"
		/>
	</div>
}
```

### hero_009.templ

**Path:** `hero/hero_009.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Hero009() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="mx-auto max-w-[800px] text-center">
			@Hero009Header()
			@Hero009Actions()
			@Hero009Links()
		</div>
	</section>
}

templ Hero009Header() {
	<p class="mb-6 text-sm font-medium uppercase tracking-widest">
		Design Matters
	</p>
	<h1 class="font-serif text-4xl font-bold tracking-tight sm:text-5xl md:text-6xl lg:text-7xl mb-8">
		<span class="block">Beautiful typography</span>
		<span class="block mt-2">creates memorable experiences</span>
	</h1>
	<p class="mx-auto mb-10 max-w-[600px] text-muted-foreground text-lg md:text-xl/relaxed lg:text-2xl/relaxed">
		Typography is the art and technique of arranging type to make written language legible, readable, and appealing when displayed.
	</p>
	@separator.Separator(separator.Props{
		Class: "my-10",
	}) {
		<span class="text-sm">Crafted with attention to detail</span>
	}
}

templ Hero009Actions() {
	<div class="mt-10 flex flex-col sm:flex-row justify-center gap-2">
		@button.Button(button.Props{
			Size:  "lg",
			Class: "font-medium",
		}) {
			Get Started
		}
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Size:    "lg",
			Class:   "font-medium",
		}) {
			View Examples
			@icon.ExternalLink(icon.Props{Class: "ml-2 h-4 w-4"})
		}
	</div>
}

templ Hero009Links() {
	<div class="mt-16 flex justify-center space-x-6 text-sm text-muted-foreground">
		<a href="#" class="underline-offset-4 hover:underline">About</a>
		<a href="#" class="underline-offset-4 hover:underline">Features</a>
		<a href="#" class="underline-offset-4 hover:underline">Testimonials</a>
		<a href="#" class="underline-offset-4 hover:underline">Contact</a>
	</div>
}
```

### hero_010.templ

**Path:** `hero/hero_010.templ`

```templ
package hero

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Hero010() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="container relative flex flex-col items-center justify-center space-y-4 py-16 md:py-24 lg:space-y-14 lg:py-32">
			@Hero010Header()
			@Hero010Waitlist()
			@Hero010Features()
			@Hero010Countdown()
		</div>
	</section>
}

templ Hero010Header() {
	@badge.Badge(badge.Props{
		Variant: badge.VariantOutline,
		Class:   "relative flex items-center justify-center rounded-full px-3 py-1.5 bg-background",
	}) {
		<div class="absolute -inset-1 rounded-full bg-primary/10 blur-md"></div>
		<span class="font-medium text-sm animate-pulse">Coming Soon</span>
	}
	<div class="space-y-4 text-center">
		<h1 class="text-4xl font-bold tracking-tight md:text-5xl lg:text-6xl xl:text-7xl max-w-4xl">
			<span class="block">Something amazing is cooking</span>
			<span class="mt-2 block bg-gradient-to-r from-primary to-primary/70 bg-clip-text text-transparent">
				Join our exclusive waitlist
			</span>
		</h1>
		<p class="mx-auto max-w-[700px] text-muted-foreground md:text-xl/relaxed">
			Be the first to experience our revolutionary new platform. Early access members will receive special benefits and pricing.
		</p>
	</div>
}

templ Hero010Waitlist() {
	<div class="mx-auto w-full max-w-lg space-y-6">
		@separator.Separator(separator.Props{Class: "my-6"}) {
			<span class="text-sm font-medium">Enter your email below</span>
		}
		<div class="relative">
			<div class="flex items-center overflow-hidden rounded-lg border shadow-sm focus-within:ring-1 focus-within:ring-primary">
				@input.Input(input.Props{
					Type:        "email",
					Placeholder: "your@email.com",
					Class:       "flex-1 border-0 bg-transparent shadow-none focus-visible:ring-0 focus-visible:ring-offset-0",
				})
				@button.Button(button.Props{Class: "rounded-l-none"}) {
					Join Waitlist
				}
			</div>
			<div class="mt-3 flex justify-between text-sm">
				<div class="flex items-center text-muted-foreground">
					@icon.Lock(icon.Props{Class: "mr-1 h-3 w-3"})
					<span>We respect your privacy</span>
				</div>
				<div class="font-medium">
					<span class="text-primary">723</span>
					<span class="text-muted-foreground">people waiting</span>
				</div>
			</div>
		</div>
	</div>
}

templ Hero010Features() {
	<div class="grid gap-4 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 max-w-4xl">
		@Hero010FeatureCard("Early Access", "Get exclusive access to our platform before anyone else.", icon.Zap)
		@Hero010FeatureCard("Exclusive Benefits", "Special pricing and premium features", icon.Gift)
		@Hero010FeatureCard("Priority Support", "Get answers to your questions faster", icon.MessageSquare)
	</div>
}

templ Hero010FeatureCard(title, desc string, iconFunc func(...icon.Props) templ.Component) {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4"}) {
			<div class="flex justify-center gap-2">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8 bg-primary/10 flex-shrink-0",
				}) {
					@iconFunc(icon.Props{Size: 16})
				}
				<div class="flex flex-col">
					<p class="font-medium">{ title }</p>
					<p class="text-sm mt-2 text-muted-foreground">{ desc }</p>
				</div>
			</div>
		}
	}
}

templ Hero010Countdown() {
	<div class="w-full max-w-lg flex flex-col items-center pt-6">
		<p class="text-sm text-muted-foreground mb-2">Launching in:</p>
		<div class="flex gap-4 justify-center">
			for _, unit := range []struct {
				Value string
				Label string
			}{
				{Value: "10", Label: "Days"},
				{Value: "08", Label: "Hours"},
				{Value: "45", Label: "Minutes"},
				{Value: "30", Label: "Seconds"},
			} {
				<div class="flex flex-col items-center">
					<span class="text-3xl font-bold text-foreground tabular-nums">{ unit.Value }</span>
					<span class="text-xs text-muted-foreground">{ unit.Label }</span>
				</div>
			}
		</div>
	</div>
}
```

## Layout

### layout_001.templ

**Path:** `layout/layout_001.templ`

```templ
// Layout001 - Fixed Sidebar + Fixed Header
// Classic dashboard layout with always visible sidebar and header
package layout

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Layout001() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<div class="min-h-screen bg-background">
			<!-- Desktop Layout -->
			<div class="flex h-screen">
				<!-- Fixed Sidebar -->
				<aside class="hidden lg:block w-64 bg-card border-r">
					@Layout001Sidebar()
				</aside>
				<!-- Main Content -->
				<div class="flex-1 flex flex-col">
					<!-- Fixed Header -->
					<header class="h-16 bg-background border-b px-6 flex items-center">
						<div class="w-full flex items-center justify-between">
							<div class="flex items-center gap-4">
								<!-- Mobile Menu -->
								<div class="lg:hidden">
									@sheet.Trigger() {
										@button.Button(button.Props{
											Variant: button.VariantOutline,
											Size:    button.SizeIcon,
										}) {
											@icon.Menu(icon.Props{Size: 20})
										}
									}
								</div>
								<div class="h-8 w-32 bg-muted rounded"></div>
							</div>
							<div class="flex items-center gap-4">
								<div class="h-8 w-8 bg-muted rounded-full"></div>
								<div class="h-8 w-8 bg-muted rounded-full"></div>
							</div>
						</div>
					</header>
					<!-- Scrollable Content -->
					<main class="flex-1 overflow-y-auto p-6">
						<div class="max-w-6xl mx-auto space-y-6">
							<!-- Content blocks -->
							for i := 0; i < 5; i++ {
								<div class="h-48 bg-muted/50 rounded-lg"></div>
							}
						</div>
					</main>
				</div>
			</div>
		</div>
		<!-- Mobile Drawer -->
		@sheet.Content() {
			@Layout001Sidebar()
		}
	}
}

templ Layout001Sidebar() {
	<div class="h-full flex flex-col">
		<!-- Logo -->
		<div class="h-16 px-6 flex items-center border-b">
			<div class="h-8 w-32 bg-primary rounded"></div>
		</div>
		<!-- Navigation -->
		<nav class="flex-1 p-4 space-y-2">
			<div class="h-10 bg-primary/10 rounded"></div>
			for i := 0; i < 4; i++ {
				<div class="h-10 bg-muted/50 rounded"></div>
			}
		</nav>
		<!-- Footer -->
		<div class="p-4 border-t">
			<div class="h-10 bg-muted/50 rounded"></div>
		</div>
	</div>
}
```

### layout_002.templ

**Path:** `layout/layout_002.templ`

```templ
// Layout002 - Fixed Sidebar + Full Width Header
// Similar to Layout001 but with header spanning full width
package layout

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Layout002() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<div class="min-h-screen bg-background">
			<!-- Fixed Header (Full Width) -->
			<header class="h-16 bg-background border-b px-6 flex items-center fixed top-0 left-0 right-0 z-40">
				<div class="w-full flex items-center justify-between">
					<div class="flex items-center gap-4">
						<!-- Mobile Menu -->
						<div class="lg:hidden">
							@sheet.Trigger() {
								@button.Button(button.Props{
									Variant: button.VariantOutline,
									Size:    button.SizeIcon,
								}) {
									@icon.Menu(icon.Props{Size: 20})
								}
							}
						</div>
						<div class="h-8 w-32 bg-muted rounded"></div>
					</div>
					<div class="flex items-center gap-4">
						<div class="h-8 w-8 bg-muted rounded-full"></div>
						<div class="h-8 w-8 bg-muted rounded-full"></div>
					</div>
				</div>
			</header>
			<!-- Desktop Layout -->
			<div class="flex h-screen pt-16">
				<!-- Fixed Sidebar -->
				<aside class="hidden lg:block w-64 bg-card border-r">
					@Layout002Sidebar()
				</aside>
				<!-- Main Content -->
				<div class="flex-1 flex flex-col">
					<!-- Scrollable Content -->
					<main class="flex-1 overflow-y-auto p-6">
						<div class="max-w-6xl mx-auto space-y-6">
							<!-- Content blocks -->
							for i := 0; i < 5; i++ {
								<div class="h-48 bg-muted/50 rounded-lg"></div>
							}
						</div>
					</main>
				</div>
			</div>
		</div>
		<!-- Mobile Drawer -->
		@sheet.Content() {
			@Layout002Sidebar()
		}
	}
}

templ Layout002Sidebar() {
	<div class="h-full flex flex-col">
		<!-- Navigation -->
		<nav class="flex-1 p-4 space-y-2">
			<div class="h-10 bg-primary/10 rounded"></div>
			for i := 0; i < 4; i++ {
				<div class="h-10 bg-muted/50 rounded"></div>
			}
		</nav>
		<!-- Footer -->
		<div class="p-4 border-t">
			<div class="h-10 bg-muted/50 rounded"></div>
		</div>
	</div>
}
```

### layout_003.templ

**Path:** `layout/layout_003.templ`

```templ
// Layout003 - Sticky Header + Sidebar
// Header stays at top when scrolling, sidebar scrolls with content
package layout

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Layout003() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<div class="min-h-screen bg-background">
			<!-- Sticky Header -->
			<header class="sticky top-0 z-40 w-full bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 border-b">
				<div class="flex h-16 items-center px-4 lg:px-6">
					<!-- Mobile Menu -->
					<div class="lg:hidden">
						@sheet.Trigger() {
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeIcon,
							}) {
								@icon.Menu(icon.Props{Size: 20})
							}
						}
					</div>
					<!-- Logo -->
					<div class="ml-4 lg:ml-0">
						<div class="h-8 w-32 bg-primary rounded"></div>
					</div>
					<!-- Header Content -->
					<div class="flex-1 flex items-center justify-end gap-4 ml-8">
						<div class="hidden md:block max-w-md w-full">
							<div class="h-9 bg-muted/50 rounded-lg"></div>
						</div>
						<div class="h-8 w-8 bg-muted rounded-full"></div>
						<div class="h-8 w-8 bg-muted rounded-full"></div>
					</div>
				</div>
			</header>
			<!-- Main Layout -->
			<div class="flex">
				<!-- Desktop Sidebar (scrolls with content) -->
				<aside class="hidden lg:block w-64 bg-card border-r min-h-[calc(100vh-4rem)]">
					@Layout003SidebarContent()
				</aside>
				<!-- Main Content -->
				<main class="flex-1 p-6">
					<div class="max-w-6xl mx-auto space-y-6">
						<!-- Content blocks -->
						for i := 0; i < 5; i++ {
							<div class="h-48 bg-muted/50 rounded-lg"></div>
						}
					</div>
				</main>
			</div>
		</div>
		<!-- Mobile Drawer -->
		@sheet.Content() {
			@Layout003SidebarContent()
		}
	}
}

templ Layout003SidebarContent() {
	<div class="p-4 space-y-4">
		<!-- Navigation -->
		<nav class="space-y-2">
			<div class="h-10 bg-primary/10 rounded"></div>
			for i := 0; i < 5; i++ {
				<div class="h-10 bg-muted/50 rounded"></div>
			}
		</nav>
		<!-- Divider -->
		<div class="border-t my-4"></div>
		<!-- Secondary Navigation -->
		<nav class="space-y-2">
			for i := 0; i < 3; i++ {
				<div class="h-10 bg-muted/50 rounded"></div>
			}
		</nav>
	</div>
}
```

### layout_004.templ

**Path:** `layout/layout_004.templ`

```templ
// Layout004 - Header Only (No Sidebar)
// Clean layout with only top navigation, perfect for marketing sites
package layout

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Layout004() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideRight,
	}) {
		<div class="min-h-screen bg-background">
			<!-- Header -->
			<header class="sticky top-0 z-40 w-full bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 border-b">
				<div class="container mx-auto px-4 lg:px-6">
					<div class="flex h-16 items-center justify-between">
						<!-- Logo -->
						<div class="flex items-center gap-8">
							<div class="h-8 w-32 bg-primary rounded"></div>
							<!-- Desktop Navigation -->
							<nav class="hidden lg:flex items-center gap-6">
								<div class="h-4 w-16 bg-primary/80 rounded"></div>
								<div class="h-4 w-16 bg-muted rounded"></div>
								<div class="h-4 w-16 bg-muted rounded"></div>
								<div class="h-4 w-16 bg-muted rounded"></div>
							</nav>
						</div>
						<!-- Right Actions -->
						<div class="flex items-center gap-4">
							<!-- Desktop Actions -->
							<div class="hidden lg:flex items-center gap-4">
								<div class="h-9 w-24 bg-muted rounded-lg"></div>
								<div class="h-9 w-24 bg-primary rounded-lg"></div>
							</div>
							<!-- Mobile Menu -->
							<div class="lg:hidden">
								@sheet.Trigger() {
									@button.Button(button.Props{
										Variant: button.VariantGhost,
										Size:    button.SizeIcon,
									}) {
										@icon.Menu(icon.Props{Size: 20})
									}
								}
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- Main Content -->
			<main>
				<div class="container mx-auto px-4 lg:px-6 py-8">
					<!-- Hero Section -->
					<div class="h-96 bg-muted/50 rounded-lg mb-12"></div>
					<!-- Content Grid -->
					<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
						for i := 0; i < 6; i++ {
							<div class="h-64 bg-muted/50 rounded-lg"></div>
						}
					</div>
					<!-- Feature Section -->
					<div class="h-64 bg-muted/50 rounded-lg mb-12"></div>
					<!-- More Content -->
					<div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
						<div class="h-80 bg-muted/50 rounded-lg"></div>
						<div class="h-80 bg-muted/50 rounded-lg"></div>
					</div>
				</div>
			</main>
			<!-- Footer -->
			<footer class="border-t mt-24">
				<div class="container mx-auto px-4 lg:px-6 py-12">
					<div class="h-48 bg-muted/30 rounded-lg"></div>
				</div>
			</footer>
		</div>
		<!-- Mobile Drawer -->
		@sheet.Content(sheet.ContentProps{
			HideCloseButton: true,
		}) {
			@Layout004MobileMenu()
		}
	}
}

templ Layout004MobileMenu() {
	<div class="flex flex-col h-full">
		<!-- Mobile Menu Header -->
		<div class="p-4 border-b">
			<div class="flex items-center justify-between">
				<div class="h-8 w-32 bg-primary rounded"></div>
				@sheet.Close() {
					@icon.X(icon.Props{Size: 16})
				}
			</div>
		</div>
		<!-- Mobile Navigation -->
		<nav class="flex-1 p-4 space-y-2">
			<div class="h-10 bg-primary/10 rounded"></div>
			for i := 0; i < 4; i++ {
				<div class="h-10 bg-muted/50 rounded"></div>
			}
		</nav>
		<!-- Mobile Actions -->
		<div class="p-4 border-t space-y-3">
			<div class="h-10 bg-muted rounded"></div>
			<div class="h-10 bg-primary rounded"></div>
		</div>
	</div>
}
```

### layout_005.templ

**Path:** `layout/layout_005.templ`

```templ
// Layout005 - Footer Navigation + Bottom Drawer
// Mobile-first layout with sticky footer navigation and bottom drawer
package layout

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Layout005() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideBottom,
	}) {
		<div class="min-h-screen bg-background flex flex-col">
			<!-- Main Content -->
			<main class="flex-1 pb-20">
				<div class="container mx-auto px-4 lg:px-6 py-8">
					<!-- Content goes here -->
					<div class="h-64 bg-muted/50 rounded-lg mb-8"></div>
					<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
						for i := 0; i < 9; i++ {
							<div class="h-48 bg-muted/50 rounded-lg"></div>
						}
					</div>
				</div>
			</main>
			<!-- Mobile Footer Navigation -->
			<nav class="fixed bottom-0 left-0 right-0 bg-background border-t z-30">
				<div class="grid grid-cols-5 h-16 items-center">
					<!-- Home -->
					<button class="flex flex-col items-center justify-center gap-1 text-primary">
						<div class="w-5 h-5 bg-primary rounded"></div>
						<span class="text-xs">Home</span>
					</button>
					<!-- Search -->
					<button class="flex flex-col items-center justify-center gap-1 text-muted-foreground">
						<div class="w-5 h-5 bg-muted rounded"></div>
						<span class="text-xs">Search</span>
					</button>
					<!-- Menu (Triggers Bottom Drawer) -->
					@sheet.Trigger(sheet.TriggerProps{
						Class: "flex justify-center",
					}) {
						@button.Button(button.Props{
							Size:    button.SizeIcon,
							Variant: button.VariantGhost,
						}) {
							@icon.Menu()
						}
					}
					<!-- Notifications -->
					<button class="flex flex-col items-center justify-center gap-1 text-muted-foreground">
						<div class="w-5 h-5 bg-muted rounded"></div>
						<span class="text-xs">Alerts</span>
					</button>
					<!-- Profile -->
					<button class="flex flex-col items-center justify-center gap-1 text-muted-foreground">
						<div class="w-5 h-5 bg-muted rounded-full"></div>
						<span class="text-xs">Profile</span>
					</button>
				</div>
			</nav>
		</div>
		<!-- Bottom Drawer -->
		@sheet.Content(sheet.ContentProps{
			Class:           "!h-[75vh] sm:!h-[75vh] p-6",
			HideCloseButton: true,
		}) {
			@Layout005DrawerContent()
		}
	}
}

templ Layout005DrawerContent() {
	<div class="space-y-4">
		<!-- Drawer Handle -->
		<div class="w-12 h-1 bg-muted rounded-full mx-auto -mt-2"></div>
		<!-- Header -->
		<div class="flex items-center justify-between">
			<h2 class="text-lg font-semibold">Menu</h2>
			@sheet.Close() {
				@icon.X(icon.Props{Size: 20})
			}
		</div>
		<!-- Navigation Section -->
		<div class="pb-4">
			<h3 class="text-sm font-bold text-muted-foreground mb-2">Navigation</h3>
			<div class="space-y-2">
				for i := 0; i < 5; i++ {
					<div class="h-12 bg-muted/50 rounded-lg"></div>
				}
			</div>
		</div>
		<!-- Features Section -->
		<div class="pb-4">
			<h3 class="text-sm font-bold text-muted-foreground mb-2">Features</h3>
			<div class="space-y-2">
				for i := 0; i < 5; i++ {
					<div class="h-12 bg-muted/50 rounded-lg"></div>
				}
			</div>
		</div>
		<!-- Settings Section -->
		<div class="pb-4">
			<h3 class="text-sm font-bold text-muted-foreground mb-2">Settings</h3>
			<div class="space-y-2">
				for i := 0; i < 5; i++ {
					<div class="h-12 bg-muted/50 rounded-lg"></div>
				}
			</div>
		</div>
		<!-- Actions -->
		<div class="pb-4">
			<div class="space-y-2">
				<div class="h-12 bg-muted rounded-lg"></div>
				<div class="h-12 bg-primary rounded-lg"></div>
			</div>
		</div>
		<!-- User Profile -->
		<div class="border-t pt-4">
			<div class="flex items-center gap-3">
				<div class="h-10 w-10 bg-muted rounded-full"></div>
				<div class="flex-1">
					<div class="h-3 w-24 bg-muted rounded mb-1"></div>
					<div class="h-2 w-20 bg-muted/50 rounded"></div>
				</div>
				<div class="h-8 w-8 bg-muted rounded"></div>
			</div>
		</div>
	</div>
}
```

## Navbar

### navbar_001.templ

**Path:** `navbar/navbar_001.templ`

```templ
package navbar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Navbar001() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		@Navbar001Desktop()
		@Navbar001MobileDrawer()
	}
}

templ Navbar001MobileDrawer() {
	@sheet.Content() {
		@Navbar001DrawerContent()
	}
}

templ Navbar001DrawerContent() {
	<div class="flex flex-col h-full">
		<div class="flex items-center justify-between p-4 border-b bg-background">
			@Navbar001Logo()
		</div>
		<nav class="flex-1 p-4 bg-background">
			<div class="flex flex-col space-y-3">
				@Navbar001MobileMenuItems()
			</div>
		</nav>
	</div>
}

templ Navbar001Desktop() {
	<nav class="sticky top-0 w-full border-b border-border/40 bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
		<div class="container mx-auto px-4">
			<div class="flex h-16 items-center justify-between">
				@Navbar001Logo()
				<div class="hidden md:flex items-center space-x-8">
					@Navbar001MenuItems()
				</div>
				<div class="md:hidden">
					@sheet.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-9 w-9",
						}) {
							@icon.Menu(icon.Props{Size: 20})
						}
					}
				</div>
			</div>
		</div>
	</nav>
}

templ Navbar001Logo() {
	<div class="flex items-center space-x-2">
		@icon.Layers()
		<span class="text-xl font-bold">Acme Inc</span>
	</div>
}

templ Navbar001MenuItems() {
	<a href="#" class="text-sm font-medium transition-colors hover:text-primary">
		Home
	</a>
	<a href="#" class="text-sm font-medium transition-colors hover:text-primary">
		Features
	</a>
	<a href="#" class="text-sm font-medium transition-colors hover:text-primary">
		Pricing
	</a>
	<a href="#" class="text-sm font-medium transition-colors hover:text-primary">
		About
	</a>
	<a href="#" class="text-sm font-medium transition-colors hover:text-primary">
		Contact
	</a>
}

templ Navbar001MobileMenuItems() {
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Home
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Features
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Pricing
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		About
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Contact
	</a>
}
```

### navbar_002.templ

**Path:** `navbar/navbar_002.templ`

```templ
package navbar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Navbar002() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		@Navbar002Desktop()
		@Navbar002MobileDrawer()
	}
}

templ Navbar002MobileDrawer() {
	@sheet.Content() {
		@Navbar002DrawerContent()
	}
}

templ Navbar002DrawerContent() {
	<div class="flex flex-col h-full">
		<div class="flex items-center justify-between p-4 border-b bg-background">
			@Navbar002Logo()
		</div>
		<nav class="flex-1 p-4 overflow-y-auto bg-background">
			<div class="space-y-1">
				@Navbar002MobileMenuItems()
			</div>
		</nav>
		<div class="p-4 border-t space-y-2 bg-background">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "w-full justify-center",
			}) {
				Sign In
			}
			@button.Button(button.Props{
				Class: "w-full justify-center",
			}) {
				Get Started
			}
		</div>
	</div>
}

templ Navbar002Desktop() {
	<nav class="sticky top-0 w-full border-b shadow-sm">
		<div class="container mx-auto px-4">
			<div class="flex h-16 items-center justify-between">
				@Navbar002Logo()
				<div class="hidden lg:flex items-center space-x-1">
					@Navbar002MenuItems()
				</div>
				<div class="hidden lg:flex items-center space-x-3">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "h-9 px-4 text-sm font-medium",
					}) {
						Sign In
					}
					@button.Button(button.Props{
						Class: "h-9 px-6 text-sm font-medium",
					}) {
						Get Started
					}
				</div>
				<div class="lg:hidden">
					@sheet.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-9 w-9",
						}) {
							@icon.Menu(icon.Props{Size: 20})
						}
					}
				</div>
			</div>
		</div>
	</nav>
}

templ Navbar002Logo() {
	<div class="flex items-center space-x-2">
		@icon.Layers()
		<span class="text-xl font-bold">Acme Inc</span>
	</div>
}

templ Navbar002MenuItems() {
	<a href="#" class="px-3 py-2 text-sm font-medium">
		Home
	</a>
	@Navbar002ProductsDropdown()
	@Navbar002SolutionsDropdown()
	<a href="#" class="px-3 py-2 text-sm font-medium">
		Pricing
	</a>
	<a href="#" class="px-3 py-2 text-sm font-medium">
		About
	</a>
}

templ Navbar002ProductsDropdown() {
	@dropdown.Dropdown(dropdown.Props{
		ID: "products-dropdown",
	}) {
		@dropdown.Trigger() {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Products
				@icon.ChevronDown(icon.Props{Size: 16, Class: "ml-1"})
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-64 p-2",
		}) {
			@dropdown.Item(dropdown.ItemProps{
				Class: "p-3 rounded-md",
			}) {
				<div class="flex items-start space-x-3">
					@icon.Globe(icon.Props{Size: 20, Class: "mt-0.5 text-muted-foreground"})
					<div>
						<div class="font-medium">Web Platform</div>
						<div class="text-sm text-muted-foreground">Build modern web applications</div>
					</div>
				</div>
			}
			@dropdown.Item(dropdown.ItemProps{
				Class: "p-3 rounded-md",
			}) {
				<div class="flex items-start space-x-3">
					@icon.Smartphone(icon.Props{Size: 20, Class: "mt-0.5 text-muted-foreground"})
					<div>
						<div class="font-medium">Mobile SDK</div>
						<div class="text-sm text-muted-foreground">Native mobile development</div>
					</div>
				</div>
			}
			@dropdown.Item(dropdown.ItemProps{
				Class: "p-3 rounded-md",
			}) {
				<div class="flex items-start space-x-3">
					@icon.Database(icon.Props{Size: 20, Class: "mt-0.5 text-muted-foreground"})
					<div>
						<div class="font-medium">API Services</div>
						<div class="text-sm text-muted-foreground">Scalable backend solutions</div>
					</div>
				</div>
			}
		}
	}
}

templ Navbar002SolutionsDropdown() {
	@dropdown.Dropdown(dropdown.Props{
		ID: "solutions-dropdown",
	}) {
		@dropdown.Trigger() {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
			}) {
				Solutions
				@icon.ChevronDown(icon.Props{Size: 16, Class: "ml-1"})
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-48 p-1",
		}) {
			@dropdown.Item() {
				Enterprise
			}
			@dropdown.Item() {
				Startups
			}
			@dropdown.Item() {
				Developers
			}
			@dropdown.Item() {
				Agencies
			}
		}
	}
}

templ Navbar002MobileMenuItems() {
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Home
	</a>
	@Navbar002MobileProducts()
	@separator.Separator(separator.Props{Class: "my-2"})
	@Navbar002MobileSolutions()
	@separator.Separator(separator.Props{Class: "my-2"})
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Pricing
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		About
	</a>
}

templ Navbar002MobileProducts() {
	<div class="py-2">
		<div class="px-3 py-2 text-sm font-semibold text-muted-foreground">Products</div>
		<div class="ml-4 space-y-1">
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">
				<div class="flex items-center space-x-3">
					@icon.Globe(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<div>
						<div class="font-medium">Web Platform</div>
						<div class="text-xs text-muted-foreground">Build modern web applications</div>
					</div>
				</div>
			</a>
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">
				<div class="flex items-center space-x-3">
					@icon.Smartphone(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<div>
						<div class="font-medium">Mobile SDK</div>
						<div class="text-xs text-muted-foreground">Native mobile development</div>
					</div>
				</div>
			</a>
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">
				<div class="flex items-center space-x-3">
					@icon.Database(icon.Props{Size: 16, Class: "text-muted-foreground"})
					<div>
						<div class="font-medium">API Services</div>
						<div class="text-xs text-muted-foreground">Scalable backend solutions</div>
					</div>
				</div>
			</a>
		</div>
	</div>
}

templ Navbar002MobileSolutions() {
	<div class="py-2">
		<div class="px-3 py-2 text-sm font-semibold text-muted-foreground">Solutions</div>
		<div class="ml-4 space-y-1">
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">Enterprise</a>
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">Startups</a>
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">Developers</a>
			<a href="#" class="block px-3 py-2 rounded-md text-sm transition-colors hover:bg-accent hover:text-accent-foreground">Agencies</a>
		</div>
	</div>
}
```

### navbar_003.templ

**Path:** `navbar/navbar_003.templ`

```templ
package navbar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Navbar003() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		@Navbar003Desktop()
		@Navbar003MobileDrawer()
	}
}

templ Navbar003MobileDrawer() {
	@sheet.Content() {
		@Navbar003DrawerContent()
	}
}

templ Navbar003DrawerContent() {
	<div class="flex flex-col h-full">
		<div class="flex items-center justify-between p-4 border-b bg-background">
			@Navbar003Logo()
		</div>
		<div class="p-4 border-b bg-background">
			@Navbar003MobileSearch()
		</div>
		<nav class="flex-1 p-4 bg-background">
			<div class="flex flex-col space-y-3">
				@Navbar003MobileMenuItems()
			</div>
		</nav>
		<div class="p-4 border-t space-y-2 bg-background">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full justify-start",
			}) {
				@icon.Bell(icon.Props{Size: 18, Class: "mr-2"})
				Notifications
				<span class="ml-auto h-2 w-2 bg-destructive rounded-full"></span>
			}
			@separator.Separator(separator.Props{Class: "my-2"})
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "w-full justify-center",
			}) {
				Sign In
			}
		</div>
	</div>
}

templ Navbar003Desktop() {
	<nav class="sticky top-0 w-full border-b shadow-sm">
		<div class="container mx-auto px-4">
			<div class="flex h-16 items-center justify-between gap-4">
				@Navbar003Logo()
				<div class="hidden lg:flex items-center space-x-6">
					@Navbar003MenuItems()
				</div>
				<div class="flex-1 max-w-md mx-4 hidden sm:block">
					@Navbar003SearchBar()
				</div>
				<div class="hidden md:flex items-center space-x-3">
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Size:    button.SizeIcon,
						Class:   "relative",
					}) {
						@icon.Bell(icon.Props{Size: 18, Class: "text-muted-foreground"})
						<span class="absolute -top-1 -right-1 h-3 w-3 bg-destructive rounded-full"></span>
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
					}) {
						Sign In
					}
				</div>
				<div class="md:hidden">
					@sheet.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-10 w-10",
						}) {
							@icon.Menu(icon.Props{Size: 20})
						}
					}
				</div>
			</div>
		</div>
	</nav>
}

templ Navbar003Logo() {
	<div class="flex items-center space-x-2 flex-shrink-0">
		@icon.Layers()
		<span class="text-xl font-bold">Acme Inc</span>
	</div>
}

templ Navbar003SearchBar() {
	<div class="relative">
		@input.Input(input.Props{
			Type:        "search",
			Placeholder: "Search products, docs, help...",
			Class:       "pl-10 pr-12 h-10",
		})
		<div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
			@icon.Search(icon.Props{Size: 18, Class: "text-muted-foreground"})
		</div>
		<div class="absolute inset-y-0 right-0 flex items-center pr-3">
			<kbd class="hidden sm:inline-flex h-6 select-none items-center gap-1 rounded border bg-muted px-2 font-mono text-xs font-medium text-muted-foreground">
				<span class="text-xs">⌘</span>K
			</kbd>
		</div>
	</div>
}

templ Navbar003MobileSearch() {
	<div class="relative">
		@input.Input(input.Props{
			Type:        "search",
			Placeholder: "Search...",
			Class:       "pl-10",
		})
		<div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
			@icon.Search(icon.Props{Size: 18, Class: "text-muted-foreground"})
		</div>
	</div>
}

templ Navbar003MenuItems() {
	<a href="#" class="text-sm font-medium hover:text-primary/80 transition-colors whitespace-nowrap">
		Docs
	</a>
	<a href="#" class="text-sm font-medium hover:text-primary/80 transition-colors whitespace-nowrap">
		API
	</a>
	<a href="#" class="text-sm font-medium hover:text-primary/80 transition-colors whitespace-nowrap">
		Guides
	</a>
}

templ Navbar003MobileMenuItems() {
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Docs
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		API
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Guides
	</a>
}
```

### navbar_004.templ

**Path:** `navbar/navbar_004.templ`

```templ
package navbar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Navbar004() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		<div class="relative min-h-screen bg-gradient-to-br from-primary to-secondary text-secondary">
			@Navbar004Desktop()
			@Navbar004HeroContent()
		</div>
		@Navbar004MobileDrawer()
	}
}

templ Navbar004MobileDrawer() {
	@sheet.Content() {
		@Navbar004DrawerContent()
	}
}

templ Navbar004DrawerContent() {
	<div class="flex flex-col h-full">
		<div class="flex items-center justify-between p-4 border-b bg-background">
			<div class="flex items-center space-x-2">
				@icon.Layers(icon.Props{Size: 24})
				<span class="text-xl font-bold">Acme Inc</span>
			</div>
		</div>
		<nav class="flex-1 p-4 bg-background">
			<div class="flex flex-col space-y-3">
				@Navbar004MobileMenuItems()
			</div>
		</nav>
		<div class="p-4 border-t space-y-2 bg-background">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full justify-center",
			}) {
				Sign In
			}
			@button.Button(button.Props{
				Class: "w-full justify-center",
			}) {
				Get Started
			}
		</div>
	</div>
}

templ Navbar004Desktop() {
	<nav class="sticky top-0 w-full transition-all duration-300">
		<div class="container mx-auto px-4">
			<div class="flex h-20 items-center justify-between">
				@Navbar004Logo()
				<div class="hidden md:flex items-center space-x-8">
					@Navbar004MenuItems()
				</div>
				<div class="hidden md:flex items-center space-x-4">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "text-white/90 hover:text-white hover:bg-white/10 border border-white/20",
					}) {
						Sign In
					}
					@button.Button(button.Props{
						Class: "bg-background text-foreground hover:bg-muted shadow-lg",
					}) {
						Get Started
					}
				</div>
				<div class="md:hidden">
					@sheet.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-10 w-10 text-white hover:bg-white/10",
						}) {
							@icon.Menu(icon.Props{Size: 20})
						}
					}
				</div>
			</div>
		</div>
	</nav>
}

templ Navbar004Logo() {
	<div class="flex items-center space-x-2">
		<div class="transition-colors duration-300">
			@icon.Layers(icon.Props{Size: 32})
		</div>
		<span class="text-xl font-bold transition-colors duration-300">
			Acme Inc
		</span>
	</div>
}

templ Navbar004MenuItems() {
	<a href="#" class="text-sm font-medium transition-colors duration-300">
		Home
	</a>
	<a href="#" class="text-sm font-medium transition-colors duration-300">
		About
	</a>
	<a href="#" class="text-sm font-medium transition-colors duration-300">
		Services
	</a>
	<a href="#" class="text-sm font-medium transition-colors duration-300">
		Portfolio
	</a>
	<a href="#" class="text-sm font-medium transition-colors duration-300">
		Contact
	</a>
}

templ Navbar004MobileMenuItems() {
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Home
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		About
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Services
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Portfolio
	</a>
	<a href="#" class="block px-3 py-2 rounded-md text-base font-medium transition-colors hover:bg-accent hover:text-accent-foreground">
		Contact
	</a>
}

templ Navbar004HeroContent() {
	<div class="flex items-center justify-center min-h-screen text-center px-4">
		<div class="max-w-3xl">
			<h1 class="text-5xl md:text-6xl font-bold text-white mb-6">
				Beautiful Transparent Navbar
			</h1>
			<p class="text-xl text-white/80 mb-8">
				This navbar becomes solid when you scroll. Perfect for hero sections and landing pages.
			</p>
			@button.Button() {
				See It In Action
			}
		</div>
	</div>
}
```

### navbar_005.templ

**Path:** `navbar/navbar_005.templ`

```templ
package navbar

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Navbar005() {
	@sheet.Sheet(sheet.Props{
		Side: sheet.SideLeft,
	}) {
		@Navbar005Desktop()
		@Navbar005MobileDrawer()
	}
}

templ Navbar005MobileDrawer() {
	@sheet.Content() {
		@Navbar005DrawerContent()
	}
}

templ Navbar005DrawerContent() {
	<div class="flex flex-col h-full">
		<div class="p-4 border-b bg-background">
			<div class="flex items-center justify-between mb-4">
				@Navbar005Logo()
			</div>
			@Navbar005UserProfile()
		</div>
		<nav class="flex-1 p-4 overflow-y-auto bg-background">
			<div class="space-y-1">
				<div class="mb-4">
					<div class="px-3 py-2 text-xs font-semibold text-muted-foreground uppercase tracking-wider">Navigation</div>
					@Navbar005MobileMenuItems()
				</div>
				@separator.Separator(separator.Props{Class: "my-4"})
				<div>
					<div class="px-3 py-2 text-xs font-semibold text-muted-foreground uppercase tracking-wider">Account</div>
					@Navbar005MobileUserItems()
				</div>
			</div>
		</nav>
		@Navbar005DrawerFooter()
	</div>
}

templ Navbar005Desktop() {
	<nav class="sticky top-0 w-full border-b border-border shadow-sm">
		<div class="container mx-auto px-4">
			<div class="flex h-16 items-center justify-between">
				<div class="flex items-center space-x-8">
					@Navbar005Logo()
					<div class="hidden lg:flex items-center space-x-6 text-muted-foreground">
						@Navbar005MenuItems()
					</div>
				</div>
				@Navbar005DesktopUserSection()
				<div class="md:hidden">
					@sheet.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeIcon,
							Class:   "h-9 w-9",
						}) {
							@icon.Menu(icon.Props{Size: 20})
						}
					}
				</div>
			</div>
		</div>
	</nav>
}

templ Navbar005Logo() {
	<div class="flex items-center space-x-3">
		@icon.Layers()
		<div>
			<div class="text-lg font-bold">Acme Inc</div>
			<div class="text-xs text-muted-foreground font-medium">Dashboard</div>
		</div>
	</div>
}

templ Navbar005UserProfile() {
	<div class="flex items-center space-x-3">
		@avatar.Avatar(avatar.Props{
			Class: "h-12 w-12",
		}) {
			@avatar.Image(avatar.ImageProps{
				Src: "/assets/img/avatar-gh-1.png",
				Alt: "User Avatar",
			})
			@avatar.Fallback() {
				JD
			}
		}
		<div class="flex-1 min-w-0">
			<div class="font-medium text-primary/80">John Doe</div>
			<div class="text-sm truncate text-muted-foreground">john.doe@acme.com</div>
			<div class="flex items-center space-x-2 mt-1">
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "text-xs",
				}) {
					Premium
				}
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "text-xs bg-primary/10 text-primary",
				}) {
					Online
				}
			</div>
		</div>
	</div>
}

templ Navbar005DesktopUserSection() {
	<div class="hidden md:flex items-center space-x-4 text-muted-foreground">
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeIcon,
		}) {
			@icon.Search(icon.Props{Size: 18})
		}
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeIcon,
			Class:   "relative",
		}) {
			@icon.Bell(icon.Props{Size: 18})
			<span class="absolute -top-1 -right-1 h-3 w-3 bg-destructive rounded-full border-2 border-background"></span>
		}
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeIcon,
		}) {
			@icon.MessageSquare(icon.Props{Size: 18})
		}
		@separator.Separator(separator.Props{
			Orientation: "vertical",
			Class:       "h-6",
		})
		@Navbar005UserDropdown()
	</div>
}

templ Navbar005UserDropdown() {
	@dropdown.Dropdown(dropdown.Props{
		ID: "user-menu",
	}) {
		@dropdown.Trigger() {
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Class:   "flex items-center justify-center",
			}) {
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8 border-2 border-border",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "User Avatar",
					})
					@avatar.Fallback() {
						JD
					}
				}
				@icon.ChevronDown(icon.Props{Size: 16, Class: "text-muted-foreground"})
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-72",
		}) {
			<div class="px-4 py-3 border-b">
				<div class="flex items-center space-x-3">
					@avatar.Avatar(avatar.Props{
						Class: "h-12 w-12",
					}) {
						@avatar.Image(avatar.ImageProps{
							Src: "/assets/img/avatar-gh-1.png",
							Alt: "User Avatar",
						})
						@avatar.Fallback() {
							JD
						}
					}
					<div class="flex-1 min-w-0">
						<div class="font-medium text-primary/80">John Doe</div>
						<div class="text-sm truncate text-muted-foreground">john.doe@acme.com</div>
						<div class="flex items-center space-x-2 mt-1">
							@badge.Badge(badge.Props{
								Variant: badge.VariantSecondary,
								Class:   "text-xs",
							}) {
								Premium
							}
							@badge.Badge(badge.Props{
								Variant: badge.VariantSecondary,
								Class:   "text-xs bg-primary/10 text-primary",
							}) {
								Online
							}
						</div>
					</div>
				</div>
			</div>
			<div class="py-1">
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.User(icon.Props{Size: 16})
						<span class="text-sm">View Profile</span>
					</div>
				}
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.Settings(icon.Props{Size: 16})
						<span class="text-sm">Account Settings</span>
					</div>
				}
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.CreditCard(icon.Props{Size: 16})
						<span class="text-sm">Billing & Plans</span>
					</div>
				}
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.Users(icon.Props{Size: 16})
						<span class="text-sm">Team Management</span>
					</div>
				}
			</div>
			@separator.Separator()
			<div class="py-1">
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.CircleQuestionMark(icon.Props{Size: 16})
						<span class="text-sm">Help & Support</span>
					</div>
				}
				@dropdown.Item(dropdown.ItemProps{
					Class: "px-4 py-2 hover:bg-destructive/10",
				}) {
					<div class="flex items-center space-x-3 text-muted-foreground">
						@icon.LogOut(icon.Props{Size: 16, Class: "text-destructive"})
						<span class="text-sm text-destructive">Sign Out</span>
					</div>
				}
			</div>
		}
	}
}

templ Navbar005DrawerFooter() {
	<div class="p-4 border-t bg-background">
		<div class="flex items-center justify-between mb-3">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeIcon,
				Class:   "relative",
			}) {
				@icon.Search(icon.Props{Size: 18})
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeIcon,
				Class:   "relative",
			}) {
				@icon.Bell(icon.Props{Size: 18})
				<span class="absolute -top-1 -right-1 h-3 w-3 bg-destructive rounded-full border-2 border-background"></span>
			}
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeIcon,
			}) {
				@icon.MessageSquare(icon.Props{Size: 18})
			}
		</div>
		@button.Button(button.Props{
			Variant: button.VariantOutline,
			Class:   "w-full justify-start text-destructive hover:bg-destructive/10",
		}) {
			@icon.LogOut(icon.Props{Size: 16, Class: "mr-2"})
			Sign Out
		}
	</div>
}

templ Navbar005MenuItems() {
	@button.Button(button.Props{
		Variant: button.VariantGhost,
		Class:   "flex items-center gap-2",
	}) {
		@icon.LayoutDashboard(icon.Props{Size: 16})
		<span>Dashboard</span>
	}
	@button.Button(button.Props{
		Variant: button.VariantGhost,
		Class:   "flex items-center gap-2",
	}) {
		@icon.FolderOpen(icon.Props{Size: 16})
		<span>Projects</span>
	}
	@button.Button(button.Props{
		Variant: button.VariantGhost,
		Class:   "flex items-center gap-2",
	}) {
		@icon.Check(icon.Props{Size: 16})
		<span>Tasks</span>
	}
	@button.Button(button.Props{
		Variant: button.VariantGhost,
		Class:   "flex items-center gap-2",
	}) {
		@icon.ChartBar(icon.Props{Size: 16})
		<span>Analytics</span>
	}
}

templ Navbar005MobileMenuItems() {
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.LayoutDashboard(icon.Props{Size: 18})
		<span class="font-medium">Dashboard</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.FolderOpen(icon.Props{Size: 18})
		<span class="font-medium">Projects</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.Check(icon.Props{Size: 18})
		<span class="font-medium">Tasks</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.ChartBar(icon.Props{Size: 18})
		<span class="font-medium">Analytics</span>
	</a>
}

templ Navbar005MobileUserItems() {
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.User(icon.Props{Size: 18})
		<span>View Profile</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.Settings(icon.Props{Size: 18})
		<span>Account Settings</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.CreditCard(icon.Props{Size: 18})
		<span>Billing & Plans</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.Users(icon.Props{Size: 18})
		<span>Team Management</span>
	</a>
	<a href="#" class="flex items-center gap-3 px-3 py-2 rounded-md transition-colors hover:bg-accent hover:text-accent-foreground">
		@icon.CircleQuestionMark(icon.Props{Size: 18})
		<span>Help & Support</span>
	</a>
}
```

## Newsletter

### newsletter_001.templ

**Path:** `newsletter/newsletter_001.templ`

```templ
package newsletter

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Newsletter001() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 max-w-4xl">
			<div class="text-center mb-6">
				<h2 class="text-2xl font-bold">Stay <span class="text-primary">Updated</span></h2>
			</div>
			<div
				class="flex flex-col sm:flex-row gap-3 max-w-xl mx-auto"
			>
				@input.Input(input.Props{
					Type:        input.TypeEmail,
					Name:        "email",
					Placeholder: "Enter your email",
					Class:       "flex-1 focus:border-primary",
				})
				@button.Button(button.Props{
					Type:    button.TypeSubmit,
					Variant: button.VariantDefault,
				}) {
					Subscribe
				}
			</div>
		</div>
	</section>
}
```

### newsletter_002.templ

**Path:** `newsletter/newsletter_002.templ`

```templ
package newsletter

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
)

templ Newsletter002() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4">
			<div class="mx-auto max-w-6xl">
				<div class="grid gap-8 md:grid-cols-2 md:gap-12 items-center">
					@Newsletter002Content()
					@Newsletter002Form()
				</div>
			</div>
		</div>
	</section>
}

templ Newsletter002Content() {
	<div class="space-y-4">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl">
			Stay in the <span class="text-primary">loop</span>
		</h2>
		<p class="text-muted-foreground text-lg">
			Get the latest updates on new features, tips & tricks, and exclusive content delivered straight to your inbox.
		</p>
		<div class="flex items-center gap-2 text-sm text-muted-foreground">
			@icon.CircleCheck(icon.Props{Size: 16, Class: "text-primary"})
			<span>No spam, unsubscribe anytime</span>
		</div>
	</div>
}

templ Newsletter002Form() {
	<div class="space-y-4">
		<div class="space-y-3">
			<div class="space-y-2">
				@label.Label(label.Props{
					For: "email-002",
				}) {
					Email address
				}
				@input.Input(input.Props{
					ID:          "email-002",
					Type:        input.TypeEmail,
					Name:        "email",
					Placeholder: "you@example.com",
					Class:       "focus:border-primary",
				})
			</div>
			@button.Button(button.Props{
				Class: "w-full",
			}) {
				Subscribe to newsletter
			}
		</div>
		<p class="text-xs text-muted-foreground">
			By subscribing, you agree to our Privacy Policy and consent to receive updates from our company.
		</p>
	</div>
}
```

### newsletter_003.templ

**Path:** `newsletter/newsletter_003.templ`

```templ
package newsletter

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Newsletter003() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4">
			<div class="mx-auto max-w-3xl text-center">
				@Newsletter003Header()
				@Newsletter003Benefits()
				@Newsletter003Form()
			</div>
		</div>
	</section>
}

templ Newsletter003Header() {
	<div class="space-y-4 mb-8">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl md:text-5xl">
			Join our newsletter
		</h2>
		<p class="text-muted-foreground text-lg">
			Be the first to know about new features and updates
		</p>
	</div>
}

templ Newsletter003Benefits() {
	<div class="grid sm:grid-cols-3 gap-4 mb-10 text-left max-w-2xl mx-auto">
		<div class="flex gap-3">
			@icon.Zap(icon.Props{
				Size:  20,
				Class: "text-primary mt-0.5 flex-shrink-0",
			})
			<div>
				<div class="font-medium text-sm">Early Access</div>
				<div class="text-sm text-muted-foreground">Get before everyone else</div>
			</div>
		</div>
		<div class="flex gap-3">
			@icon.Gift(icon.Props{
				Size:  20,
				Class: "text-primary mt-0.5 flex-shrink-0",
			})
			<div>
				<div class="font-medium text-sm">Exclusive Content</div>
				<div class="text-sm text-muted-foreground">Tips, tutorials & resources</div>
			</div>
		</div>
		<div class="flex gap-3">
			@icon.Shield(icon.Props{
				Size:  20,
				Class: "text-primary mt-0.5 flex-shrink-0",
			})
			<div>
				<div class="font-medium text-sm">No Spam</div>
				<div class="text-sm text-muted-foreground">Quality updates only</div>
			</div>
		</div>
	</div>
}

templ Newsletter003Form() {
	<div class="flex flex-col sm:flex-row gap-3 max-w-md mx-auto">
		@input.Input(input.Props{
			Type:        input.TypeEmail,
			Name:        "email",
			Placeholder: "Enter your email address",
			Class:       "flex-1",
		})
		@button.Button() {
			<span class="flex items-center gap-2">
				Subscribe
				@icon.ArrowRight(icon.Props{Size: 16})
			</span>
		}
	</div>
}
```

### newsletter_004.templ

**Path:** `newsletter/newsletter_004.templ`

```templ
package newsletter

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Newsletter004() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4">
			<div class="mx-auto max-w-2xl">
				@card.Card(card.Props{
					Class: "overflow-hidden",
				}) {
					<div class="bg-gradient-to-br from-primary/10 via-primary/5 to-background p-8 md:p-12">
						@Newsletter004Content()
					</div>
				}
			</div>
		</div>
	</section>
}

templ Newsletter004Content() {
	<div class="space-y-6">
		<div class="space-y-4 text-center">
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
			}) {
				Limited Time Offer
			}
			<h2 class="text-3xl font-bold tracking-tight">
				Get 20% off your first month
			</h2>
			<p class="text-muted-foreground max-w-md mx-auto">
				Subscribe to our newsletter and unlock exclusive discounts, early access to new features, and premium content.
			</p>
		</div>
		<div class="space-y-4">
			<div class="flex flex-col sm:flex-row gap-3">
				@input.Input(input.Props{
					Type:        input.TypeEmail,
					Name:        "email",
					Placeholder: "Enter your email",
					Class:       "flex-1",
				})
				@button.Button(button.Props{
					Variant: button.VariantDefault,
				}) {
					Get 20% Off
				}
			</div>
			<p class="text-xs text-center text-muted-foreground">
				No credit card required. Unsubscribe anytime.
			</p>
		</div>
	</div>
}
```

### newsletter_005.templ

**Path:** `newsletter/newsletter_005.templ`

```templ
package newsletter

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Newsletter005() {
	<div class="w-full border-t py-6">
		<div class="container mx-auto px-4">
			<div class="flex flex-col sm:flex-row items-center justify-between gap-4">
				<div class="flex items-center gap-2 text-sm">
					@icon.Mail(icon.Props{Size: 16, Class: "text-primary"})
					<span class="text-muted-foreground">Subscribe for <span class="text-primary font-medium">updates</span></span>
				</div>
				<div class="flex gap-2 w-full sm:w-auto">
					@input.Input(input.Props{
						Type:        input.TypeEmail,
						Name:        "email",
						Placeholder: "Email address",
						Class:       "h-9 text-sm focus:border-primary",
					})
					@button.Button(button.Props{
						Variant: button.VariantDefault,
						Size:    button.SizeSm,
					}) {
						Subscribe
					}
				</div>
			</div>
		</div>
	</div>
}
```

## Notification

### notification_002.templ

**Path:** `notification/notification_002.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/tabs"
)

templ Notification002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full flex flex-col gap-8 items-center">
			@Notification002Basic()
			@Notification002Advanced()
			@Notification002WithTabs()
		</div>
	</section>
}

templ Notification002Basic() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			<div class="relative">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
				}) {
					@icon.Bell(icon.Props{
						Size: 20,
					})
				}
				<span class="absolute -top-1 -right-1 w-5 h-5 bg-primary text-primary-foreground text-xs rounded-full flex items-center justify-center">
					3
				</span>
			</div>
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-80",
		}) {
			<div class="p-4">
				<h4 class="font-semibold mb-3">Notifications</h4>
				<div class="space-y-3">
					@Notification002Item(
						"New message from Sarah",
						"Hey, are you available for a quick call?",
						"2m ago",
						"message",
						true,
					)
					@Notification002Item(
						"Project deadline reminder",
						"Design review meeting in 1 hour",
						"15m ago",
						"calendar",
						true,
					)
					@Notification002Item(
						"System update completed",
						"Your system has been successfully updated",
						"1h ago",
						"system",
						false,
					)
				</div>
				<div class="mt-4 pt-4 border-t">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Class:   "w-full justify-center text-sm",
					}) {
						View all notifications
					}
				</div>
			</div>
		}
	}
}

templ Notification002Item(title, description, time, notifType string, unread bool) {
	<div
		class={
			"flex gap-3 p-2 rounded-lg transition-colors cursor-pointer",
			templ.KV("bg-muted/50", unread),
			templ.KV("hover:bg-muted/50", !unread),
		}
	>
		<div class="flex-shrink-0">
			switch notifType {
				case "message":
					<div class="w-8 h-8 bg-muted rounded-full flex items-center justify-center">
						@icon.MessageSquare(icon.Props{
							Size:  16,
							Class: "text-muted-foreground",
						})
					</div>
				case "calendar":
					<div class="w-8 h-8 bg-primary/10 rounded-full flex items-center justify-center">
						@icon.Calendar(icon.Props{
							Size:  16,
							Class: "text-primary",
						})
					</div>
				default:
					<div class="w-8 h-8 bg-muted rounded-full flex items-center justify-center">
						@icon.Check(icon.Props{
							Size:  16,
							Class: "text-muted-foreground",
						})
					</div>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-start justify-between gap-2">
				<p
					class={
						"text-sm",
						templ.KV("font-medium", unread),
					}
				>{ title }</p>
				if unread {
					<div class="w-2 h-2 bg-primary rounded-full mt-1.5"></div>
				}
			</div>
			<p class="text-sm text-muted-foreground truncate">{ description }</p>
			<p class="text-xs text-muted-foreground mt-1">{ time }</p>
		</div>
	</div>
}

templ Notification002Advanced() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			<div class="relative">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Class:   "gap-2",
				}) {
					@icon.Bell(icon.Props{
						Size: 18,
					})
					Notifications
					@badge.Badge(badge.Props{
						Variant: badge.VariantDefault,
						Class:   "ml-1 h-5 px-1.5 bg-primary text-primary-foreground",
					}) {
						12
					}
				}
			</div>
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-96",
		}) {
			<div class="flex items-center justify-between p-4 pb-2">
				<h4 class="font-semibold">Notifications</h4>
				<div class="flex items-center gap-2">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.Check(icon.Props{
							Size: 16,
						})
					}
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "h-8 w-8",
					}) {
						@icon.Settings(icon.Props{
							Size: 16,
						})
					}
				</div>
			</div>
			<div class="px-4 pb-2">
				<div class="flex gap-2">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "cursor-pointer",
					}) {
						All (12)
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantOutline,
						Class:   "cursor-pointer",
					}) {
						Mentions (3)
					}
					@badge.Badge(badge.Props{
						Variant: badge.VariantOutline,
						Class:   "cursor-pointer",
					}) {
						Comments (5)
					}
				</div>
			</div>
			<div class="max-h-[400px] overflow-y-auto">
				<div class="space-y-1 p-2">
					@Notification002AdvancedItem(
						"/assets/img/avatar-gh-1.png",
						"Emily Davis",
						"mentioned you in",
						"Design System Discussion",
						"@john can you review the color palette changes?",
						"5m ago",
						true,
						"mention",
					)
					@Notification002AdvancedItem(
						"/assets/img/avatar-gh-2.png",
						"Alex Chen",
						"commented on",
						"API Documentation PR",
						"Looks good! Just one small suggestion about the error handling section.",
						"12m ago",
						true,
						"",
					)
					@Notification002AdvancedItem(
						"/assets/img/avatar-gh-3.png",
						"Sarah Miller",
						"assigned you to",
						"Update User Dashboard",
						"Priority: High • Due: Tomorrow",
						"1h ago",
						false,
						"assignment",
					)
				</div>
			</div>
			<div class="p-2 border-t">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Class:   "w-full justify-between text-sm",
				}) {
					<span>View all notifications</span>
					@icon.ArrowRight(icon.Props{
						Size: 16,
					})
				}
			</div>
		}
	}
}

templ Notification002AdvancedItem(avatarUrl, name, action, target, content, time string, unread bool, notifType string) {
	<div
		class={
			"flex gap-3 p-3 rounded-lg transition-colors cursor-pointer",
			templ.KV("bg-muted/50", unread),
			templ.KV("hover:bg-muted/30", !unread),
		}
	>
		<div class="flex-shrink-0">
			@avatar.Avatar(avatar.Props{
				Class: "h-10 w-10",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: avatarUrl,
					Alt: name,
				})
			}
		</div>
		<div class="flex-1 min-w-0 space-y-1">
			<p class="text-sm">
				<span class="font-medium">{ name }</span>
				<span class="text-muted-foreground">{ action } </span>
				<span
					class={
						"font-medium",
						templ.KV("text-primary", notifType == "mention" || notifType == "assignment"),
					}
				>{ target }</span>
			</p>
			<p class="text-sm text-muted-foreground line-clamp-2">{ content }</p>
			<p class="text-xs text-muted-foreground">{ time }</p>
		</div>
		if unread {
			<div class="flex-shrink-0">
				<div class="w-2 h-2 bg-primary rounded-full"></div>
			</div>
		}
	</div>
}

templ Notification002WithTabs() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			@button.Button(button.Props{
				Variant: button.VariantDefault,
				Class:   "bg-primary hover:bg-primary/90",
			}) {
				@icon.Bell(icon.Props{
					Size:  18,
					Class: "mr-2",
				})
				<span>8 new</span>
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-96 max-h-96 h-full justify-between",
		}) {
			<div class="p-4 pb-2">
				<h4 class="font-semibold">Activity</h4>
			</div>
			@tabs.Tabs(tabs.Props{
				Class: "w-full",
			}) {
				@tabs.List(tabs.ListProps{
					Class: "grid w-full grid-cols-3",
				}) {
					@tabs.Trigger(tabs.TriggerProps{
						Value:    "all",
						Class:    "text-xs",
						IsActive: true,
					}) {
						All
					}
					@tabs.Trigger(tabs.TriggerProps{
						Value: "unread",
						Class: "text-xs",
					}) {
						Unread (5)
					}
					@tabs.Trigger(tabs.TriggerProps{
						Value: "archived",
						Class: "text-xs",
					}) {
						Archived
					}
				}
				@tabs.Content(tabs.ContentProps{
					Value:    "all",
					Class:    "max-h-[300px] overflow-y-auto m-0",
					IsActive: true,
				}) {
					<div class="p-2 space-y-1">
						@Notification002TabItem("New follower", "John Doe started following you", "2m")
						@Notification002TabItem("Comment reply", "Sarah replied to your comment", "15m")
						@Notification002TabItem("Mention", "You were mentioned in a post", "1h")
					</div>
				}
				@tabs.Content(tabs.ContentProps{
					Value: "unread",
					Class: "max-h-[300px] overflow-y-auto m-0",
				}) {
					<div class="p-2 space-y-1">
						@Notification002TabItem("New follower", "John Doe started following you", "2m")
						@Notification002TabItem("Comment reply", "Sarah replied to your comment", "15m")
					</div>
				}
				@tabs.Content(tabs.ContentProps{
					Value: "archived",
					Class: "m-0",
				}) {
					<div class="p-8 text-center text-muted-foreground">
						<p class="text-sm">No archived notifications</p>
					</div>
				}
			}
			<div class="p-2 border-t flex gap-2">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeSm,
					Class:   "flex-1",
				}) {
					Mark all read
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeSm,
					Class:   "flex-1",
				}) {
					Settings
				}
			</div>
		}
	}
}

templ Notification002TabItem(title, description, time string) {
	<div class="flex items-start justify-between gap-3 p-2 rounded hover:bg-muted/50 cursor-pointer">
		<div class="space-y-0.5">
			<p class="text-sm font-medium">{ title }</p>
			<p class="text-sm text-muted-foreground">{ description }</p>
		</div>
		<span class="text-xs text-muted-foreground whitespace-nowrap">{ time }</span>
	</div>
}
```

### notification_003.templ

**Path:** `notification/notification_003.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	iconcomp "github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/sheet"
)

templ Notification003() {
	<section class="flex min-h-svh w-full items-center justify-center p-4 md:p-10">
		<div class="w-full max-w-6xl">
			@sheet.Sheet(sheet.Props{
				Side: sheet.SideLeft,
			}) {
				@card.Card(card.Props{Class: "overflow-hidden"}) {
					@Notification003Header()
					<div class="flex h-auto md:h-[600px]">
						<!-- Desktop sidebar -->
						<div class="hidden md:block">
							@Notification003Sidebar()
						</div>
						@Notification003Content()
					</div>
				}
				<!-- Mobile sidebar drawer -->
				@sheet.Content(sheet.ContentProps{
					HideCloseButton: true,
				}) {
					@Notification003SidebarContent()
				}
			}
		</div>
	</section>
}

templ Notification003Header() {
	<div class="border-b px-4 md:px-6 py-3 md:py-4">
		<div class="flex items-center justify-between">
			<div class="flex items-center gap-3">
				<!-- Mobile menu trigger -->
				@sheet.Trigger(sheet.TriggerProps{
					Class: "md:hidden",
				}) {
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@iconcomp.Menu(iconcomp.Props{Size: 20})
					}
				}
				<div class="min-w-0">
					<h1 class="text-lg md:text-2xl font-semibold truncate">Notifications</h1>
					<p class="text-sm text-muted-foreground mt-1 hidden md:block">Manage and review all your notifications</p>
				</div>
			</div>
			<div class="flex items-center gap-1 md:gap-2">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeSm,
					Class:   "hidden sm:flex",
				}) {
					@iconcomp.Check(iconcomp.Props{
						Size:  16,
						Class: "mr-1",
					})
					Mark all read
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeIcon,
					Class:   "sm:hidden",
				}) {
					@iconcomp.Check(iconcomp.Props{
						Size: 16,
					})
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeIcon,
				}) {
					@iconcomp.Settings(iconcomp.Props{
						Size: 16,
					})
				}
			</div>
		</div>
	</div>
}

templ Notification003Sidebar() {
	<div class="w-64 border-r bg-muted/10">
		@Notification003SidebarContent()
	</div>
}

templ Notification003SidebarContent() {
	<div class="p-4 space-y-4">
		<div class="relative">
			@input.Input(input.Props{
				Placeholder: "Search notifications...",
				Class:       "pl-8 h-9",
			})
			<div class="absolute left-2.5 top-2.5">
				@iconcomp.Search(iconcomp.Props{
					Size:  14,
					Class: "text-muted-foreground",
				})
			</div>
		</div>
		<div class="space-y-1">
			@Notification003SidebarItem("All", "inbox", 24, true)
			@Notification003SidebarItem("Unread", "circle-dot", 8, false)
			@Notification003SidebarItem("Mentions", "at-sign", 3, false)
			@Notification003SidebarItem("Comments", "message-square", 5, false)
			@Notification003SidebarItem("Likes", "heart", 12, false)
			@Notification003SidebarItem("System", "bell", 4, false)
		</div>
		<div class="pt-4 border-t">
			<p class="text-xs font-medium text-muted-foreground mb-2">FILTERS</p>
			<div class="space-y-2">
				<div class="flex items-center space-x-2">
					@checkbox.Checkbox(checkbox.Props{
						ID:      "filter-today",
						Checked: true,
					})
					@label.Label(label.Props{
						For:   "filter-today",
						Class: "text-sm cursor-pointer",
					}) {
						Today
					}
				</div>
				<div class="flex items-center space-x-2">
					@checkbox.Checkbox(checkbox.Props{
						ID: "filter-week",
					})
					@label.Label(label.Props{
						For:   "filter-week",
						Class: "text-sm cursor-pointer",
					}) {
						This Week
					}
				</div>
				<div class="flex items-center space-x-2">
					@checkbox.Checkbox(checkbox.Props{
						ID: "filter-month",
					})
					@label.Label(label.Props{
						For:   "filter-month",
						Class: "text-sm cursor-pointer",
					}) {
						This Month
					}
				</div>
			</div>
		</div>
	</div>
}

templ Notification003SidebarItem(label, icon string, count int, active bool) {
	<button
		class={
			"w-full flex items-center justify-between px-3 py-2 rounded-lg text-sm transition-colors",
			templ.KV("bg-background", active),
			templ.KV("hover:bg-muted/50", !active),
		}
	>
		<div class="flex items-center gap-2">
			switch icon {
				case "inbox":
					@iconcomp.Inbox(iconcomp.Props{Size: 16})
				case "circle-dot":
					@iconcomp.CircleDot(iconcomp.Props{Size: 16})
				case "at-sign":
					@iconcomp.AtSign(iconcomp.Props{Size: 16})
				case "message-square":
					@iconcomp.MessageSquare(iconcomp.Props{Size: 16})
				case "heart":
					@iconcomp.Heart(iconcomp.Props{Size: 16})
				default:
					@iconcomp.Bell(iconcomp.Props{Size: 16})
			}
			<span>{ label }</span>
		</div>
		if count > 0 {
			<span
				class={
					"text-xs",
					templ.KV("font-medium", active),
					templ.KV("text-muted-foreground", !active),
				}
			>{ count }</span>
		}
	</button>
}

templ Notification003Content() {
	<div class="flex-1 overflow-y-auto">
		<div class="sticky top-0 bg-background border-b px-4 md:px-6 py-2 md:py-3 flex items-center justify-between">
			<div class="flex items-center gap-4">
				@checkbox.Checkbox(checkbox.Props{
					ID: "select-all",
				})
				@label.Label(label.Props{
					For: "select-all",
				}) {
					Select all
				}
			</div>
			<div class="flex items-center gap-2">
				@dropdown.Dropdown() {
					@dropdown.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
						}) {
							Sort by
							@iconcomp.ChevronDown(iconcomp.Props{
								Size:  14,
								Class: "ml-1",
							})
						}
					}
					@dropdown.Content(dropdown.ContentProps{
						Class: "w-40",
					}) {
						@dropdown.Item() {
							Newest First
						}
						@dropdown.Item() {
							Oldest First
						}
						@dropdown.Item() {
							Most Relevant
						}
					}
				}
			</div>
		</div>
		<div class="divide-y">
			@Notification003GroupHeader("Today")
			@Notification003NotificationItem(
				true,
				"/assets/img/avatar-gh-1.png",
				"Sarah Chen",
				"mentioned you in a comment",
				"Hey @john, what do you think about implementing this feature using Go interfaces instead?",
				"Project: Dashboard Redesign",
				"2 hours ago",
				true,
				"comment",
			)
			@Notification003NotificationItem(
				false,
				"/assets/img/avatar-gh-2.png",
				"Alex Rivera",
				"assigned you to a task",
				"Update API documentation for v2.0 endpoints",
				"Priority: High • Due: Tomorrow",
				"3 hours ago",
				true,
				"task",
			)
			@Notification003NotificationItem(
				false,
				"/assets/img/avatar-gh-3.png",
				"System",
				"Security Alert",
				"New login detected from Chrome on Windows",
				"Location: San Francisco, CA",
				"5 hours ago",
				false,
				"security",
			)
			@Notification003GroupHeader("Yesterday")
			@Notification003NotificationItem(
				false,
				"/assets/img/avatar-gh-1.png",
				"Emily Davis",
				"liked your post",
				"Great insights on the new design system! This will really help our team.",
				"Post: Building Scalable Design Systems",
				"Yesterday at 4:32 PM",
				false,
				"like",
			)
			@Notification003NotificationItem(
				false,
				"/assets/img/avatar-gh-2.png",
				"Team Product",
				"shared a file with you",
				"Q4-roadmap-final.pdf",
				"Size: 2.4 MB",
				"Yesterday at 2:15 PM",
				false,
				"file",
			)
		</div>
	</div>
}

templ Notification003GroupHeader(title string) {
	<div class="px-4 md:px-6 py-2 bg-muted/50">
		<h3 class="text-xs md:text-sm font-medium text-muted-foreground">{ title }</h3>
	</div>
}

templ Notification003NotificationItem(selected bool, avatarUrl, name, action, content, meta, time string, unread bool, notifType string) {
	<div
		class={
			"flex gap-3 md:gap-4 px-4 md:px-6 py-3 md:py-4 hover:bg-muted/20 transition-colors",
			templ.KV("bg-muted/10", unread),
		}
	>
		<div class="flex items-center">
			@checkbox.Checkbox(checkbox.Props{
				Checked: selected,
				Attributes: templ.Attributes{
					"aria-label": "Select notification from " + name,
				},
			})
		</div>
		<div class="flex-shrink-0">
			if avatarUrl != "" {
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8 md:h-10 md:w-10",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarUrl,
						Alt: name,
					})
				}
			} else {
				<div class="w-8 h-8 md:w-10 md:h-10 bg-muted rounded-full flex items-center justify-center">
					switch notifType {
						case "security":
							@iconcomp.Shield(iconcomp.Props{
								Size:  16,
								Class: "text-muted-foreground md:w-5 md:h-5",
							})
						default:
							@iconcomp.Bell(iconcomp.Props{
								Size:  16,
								Class: "text-muted-foreground md:w-5 md:h-5",
							})
					}
				</div>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex flex-col md:flex-row md:items-start md:justify-between gap-2 md:gap-4">
				<div class="space-y-1 min-w-0">
					<div class="flex flex-col md:flex-row md:items-center md:gap-2">
						<p class="text-sm">
							<span class="font-medium">{ name }</span>
							<span class="text-muted-foreground ml-1">{ action }</span>
						</p>
						<span class="text-xs text-muted-foreground md:hidden">{ time }</span>
					</div>
					<p
						class={
							"text-sm line-clamp-2 md:line-clamp-none",
							templ.KV("font-medium", unread),
							templ.KV("text-muted-foreground", !unread),
						}
					>{ content }</p>
					<p class="text-xs text-muted-foreground line-clamp-1 md:line-clamp-none">{ meta }</p>
				</div>
				<div class="flex items-center gap-2 flex-shrink-0">
					<span class="text-xs text-muted-foreground hidden md:inline">{ time }</span>
					@dropdown.Dropdown() {
						@dropdown.Trigger() {
							@button.Button(button.Props{
								Variant: button.VariantGhost,
								Size:    button.SizeIcon,
								Class:   "h-7 w-7 md:h-8 md:w-8",
							}) {
								@iconcomp.EllipsisVertical(iconcomp.Props{
									Size: 14,
								})
							}
						}
						@dropdown.Content(dropdown.ContentProps{
							Class: "w-40",
						}) {
							@dropdown.Item() {
								Mark as read
							}
							@dropdown.Item() {
								Archive
							}
							@dropdown.Item() {
								Delete
							}
						}
					}
				</div>
			</div>
			<div class="flex flex-wrap items-center gap-2 mt-2 md:mt-3">
				switch notifType {
					case "comment":
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							Reply
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							View Thread
						}
					case "task":
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							View Task
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							Mark Complete
						}
					case "file":
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							Download
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "text-xs md:text-sm h-7 md:h-8",
						}) {
							Preview
						}
				}
			</div>
		</div>
	</div>
}
```

### notification_004.templ

**Path:** `notification/notification_004.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	iconcomp "github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Notification004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			@Notification004Timeline()
		</div>
	</section>
}

templ Notification004Timeline() {
	<div class="space-y-4">
		<div class="flex items-center justify-between">
			<h3 class="text-lg font-semibold">Activity Feed</h3>
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeSm,
			}) {
				@iconcomp.Funnel(iconcomp.Props{
					Size:  14,
					Class: "mr-1",
				})
				Filter
			}
		</div>
		<div class="relative">
			<div class="absolute left-6 top-0 bottom-0 w-0.5 bg-border"></div>
			<div class="space-y-6">
				@Notification004TimelineItem(
					"/assets/img/avatar-gh-1.png",
					"Sarah Chen",
					"pushed to",
					"main",
					"2 minutes ago",
					"git",
					true,
					`<div class="bg-muted rounded-lg p-3 mt-2 font-mono text-xs">
						<div>feat: Add user authentication flow</div>
						<div class="text-muted-foreground mt-1">+245 -12 • 8 files changed</div>
					</div>`,
				)
				@Notification004TimelineItem(
					"/assets/img/avatar-gh-2.png",
					"Alex Rivera",
					"commented on",
					"PR #142",
					"15 minutes ago",
					"comment",
					false,
					`<div class="bg-muted rounded-lg p-3 mt-2 text-sm">
						"Great implementation! Just one suggestion about the error handling in the login component..."
					</div>`,
				)
				@Notification004TimelineItem(
					"/assets/img/avatar-gh-3.png",
					"Emily Davis",
					"created",
					"New Issue: Update documentation",
					"1 hour ago",
					"issue",
					false,
					`<div class="flex items-center gap-2 mt-2">
						<span class="inline-flex items-center gap-1 text-xs bg-muted text-muted-foreground px-2 py-1 rounded-full">
							<span class="w-2 h-2 bg-muted-foreground rounded-full"></span>
							Documentation
						</span>
						<span class="inline-flex items-center gap-1 text-xs bg-primary/10 text-primary px-2 py-1 rounded-full">
							Priority: Medium
						</span>
					</div>`,
				)
				@Notification004TimelineItem(
					"/assets/img/avatar-gh-3.png",
					"Deploy Bot",
					"deployed to",
					"production",
					"2 hours ago",
					"deploy",
					false,
					`<div class="bg-primary/5 border border-primary/20 rounded-lg p-3 mt-2 text-sm">
						<div class="flex items-center gap-2 text-primary">
							<svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
							</svg>
							Deployment successful
						</div>
						<div class="text-xs text-primary/80 mt-1">Version 2.4.1 • Build #1234</div>
					</div>`,
				)
				@Notification004TimelineItem(
					"/assets/img/avatar-gh-4.png",
					"Marcus Johnson",
					"merged",
					"PR #141: Refactor auth module",
					"3 hours ago",
					"merge",
					false,
					"",
				)
			</div>
		</div>
		<div class="flex justify-center pt-4">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				Load More
				@iconcomp.ChevronDown(iconcomp.Props{
					Size:  16,
					Class: "ml-1",
				})
			}
		</div>
	</div>
}

templ Notification004TimelineItem(avatarUrl, name, action, target, time, eventType string, highlight bool, extraContent string) {
	<div class="relative flex gap-4">
		<div class="relative z-10">
			if avatarUrl != "" {
				@avatar.Avatar(avatar.Props{
					Class: "h-12 w-12 border-4 border-background",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarUrl,
						Alt: name,
					})
				}
			} else {
				<div class="w-12 h-12 bg-muted rounded-full border-4 border-background flex items-center justify-center">
					switch eventType {
						case "deploy":
							@iconcomp.Rocket(iconcomp.Props{
								Size:  20,
								Class: "text-muted-foreground",
							})
						default:
							@iconcomp.Bot(iconcomp.Props{
								Size:  20,
								Class: "text-muted-foreground",
							})
					}
				</div>
			}
		</div>
		<div
			class={
				"flex-1 pb-6",
				templ.KV("bg-muted/20 -mx-4 px-4 py-3 rounded-lg", highlight),
			}
		>
			<div class="flex items-start justify-between gap-2">
				<div>
					<p class="text-sm">
						<span class="font-medium">{ name }</span>
						<span class="text-muted-foreground">{ action } </span>
						<span class="font-medium">{ target }</span>
					</p>
					<div class="flex items-center gap-2 mt-1">
						<span class="text-xs text-muted-foreground">{ time }</span>
						switch eventType {
							case "git":
								@iconcomp.GitCompare(iconcomp.Props{
									Size:  12,
									Class: "text-muted-foreground",
								})
							case "comment":
								@iconcomp.MessageSquare(iconcomp.Props{
									Size:  12,
									Class: "text-muted-foreground",
								})
							case "issue":
								@iconcomp.CircleDot(iconcomp.Props{
									Size:  12,
									Class: "text-muted-foreground",
								})
							case "merge":
								@iconcomp.GitMerge(iconcomp.Props{
									Size:  12,
									Class: "text-muted-foreground",
								})
						}
					</div>
				</div>
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "h-8 w-8",
				}) {
					@iconcomp.Dot(iconcomp.Props{
						Size: 14,
					})
				}
			</div>
			switch  {
				case extraContent != "":
					@templ.Raw(extraContent)
			}
		</div>
	</div>
}
```

### notification_005.templ

**Path:** `notification/notification_005.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/accordion"
	"github.com/templui/templui-pro/internal/ui/components/alert"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
)

templ Notification005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl space-y-8">
			@Notification005TeamMemberAlert()
			@Notification005ProgressAlert()
			@Notification005ExpandableErrorAlert()
			@Notification005SystemUpdateAlert()
			@Notification005SettingsAlert()
		</div>
	</section>
}

// Alert with Avatar & Badge - Team member notification
templ Notification005TeamMemberAlert() {
	@alert.Alert(alert.Props{
		Class: "relative",
	}) {
		<div class="flex items-start gap-3">
			@avatar.Avatar(avatar.Props{
				Class: "h-10 w-10 flex-shrink-0",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-1.png",
					Alt: "Sarah Chen",
				})
			}
			<div class="flex-1 min-w-0 space-y-1 pr-10 sm:pr-0">
				@alert.Title() {
					<div class="flex flex-wrap items-center gap-x-2 gap-y-1">
						<span>Sarah Chen joined your team</span>
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
						}) {
							Admin
						}
					</div>
				}
				@alert.Description() {
					<p>Sarah has been granted admin access to all repositories and can manage team settings.</p>
				}
			</div>
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
				Class:   "absolute top-2 right-2 h-8 w-8 sm:relative sm:top-0 sm:right-0 flex-shrink-0",
			}) {
				@icon.X(icon.Props{
					Size: 16,
				})
			}
		</div>
	}
}

// Alert with Progress - Download/Upload notification
templ Notification005ProgressAlert() {
	@alert.Alert(alert.Props{
		Class: "relative",
	}) {
		@icon.File(icon.Props{
			Size: 20,
		})
		<div class="space-y-3 pr-16 sm:pr-0">
			@alert.Title() {
				Downloading project files...
			}
			@alert.Description() {
				<div class="space-y-2">
					<p>Downloading 24 files (142 MB total)</p>
					@progress.Progress(progress.Props{
						Value: 68,
					})
					<div class="flex justify-between text-xs text-muted-foreground">
						<span>68% complete</span>
						<span class="text-right">2 min remaining</span>
					</div>
				</div>
			}
		</div>
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeSm,
			Class:   "absolute top-2 right-2 sm:relative sm:top-0 sm:right-0",
		}) {
			Cancel
		}
	}
}

// Alert with Accordion - Expandable error details
templ Notification005ExpandableErrorAlert() {
	@alert.Alert() {
		@icon.CircleAlert(icon.Props{
			Size:  20,
			Class: "text-destructive",
		})
		<div class="w-full">
			@alert.Title() {
				<span class="text-destructive">Build failed with 3 errors</span>
			}
			@alert.Description() {
				<div class="space-y-3">
					<p>The build process encountered errors that need to be resolved.</p>
					@accordion.Accordion(accordion.Props{
						Class: "w-full",
					}) {
						@accordion.Item() {
							@accordion.Trigger() {
								View error details
							}
							@accordion.Content() {
								<div class="space-y-2 text-xs font-mono">
									<div class="p-2 bg-muted rounded border border-border">
										Error: Cannot find package 'templ' at line 42
									</div>
									<div class="p-2 bg-muted rounded border border-border">
										TypeError: undefined is not a function at utils.js:15
									</div>
									<div class="p-2 bg-muted rounded border border-border">
										SyntaxError: Unexpected token { "'}'" } at component.tsx:108
									</div>
								</div>
							}
						}
					}
				</div>
			}
		</div>
	}
}

// Alert with Tags - System update notification
templ Notification005SystemUpdateAlert() {
	@alert.Alert() {
		@icon.Sparkles(icon.Props{
			Size: 20,
		})
		<div class="space-y-3">
			@alert.Title() {
				System maintenance scheduled
			}
			@alert.Description() {
				<div class="space-y-3">
					<p>Planned maintenance will affect the following services:</p>
					<div class="flex flex-wrap gap-2">
						@badge.Badge(badge.Props{
							Variant: badge.VariantOutline,
						}) {
							API Gateway
						}
						@badge.Badge(badge.Props{
							Variant: badge.VariantOutline,
						}) {
							Database
						}
						@badge.Badge(badge.Props{
							Variant: badge.VariantOutline,
						}) {
							CDN
						}
						@badge.Badge(badge.Props{
							Variant: badge.VariantOutline,
						}) {
							Analytics
						}
					</div>
					<div class="flex flex-col sm:flex-row gap-2 pt-2">
						@button.Button(button.Props{
							Size:  button.SizeSm,
							Class: "w-full sm:w-auto",
						}) {
							View Schedule
						}
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
							Class:   "w-full sm:w-auto",
						}) {
							Remind Me Later
						}
					</div>
				</div>
			}
		</div>
	}
}

// Alert with Toggle - Settings notification
templ Notification005SettingsAlert() {
	@alert.Alert() {
		@icon.Shield(icon.Props{
			Size: 20,
		})
		<div class="w-full">
			@alert.Title() {
				Enhanced security available
			}
			@alert.Description() {
				<div class="space-y-3">
					<p>Enable two-factor authentication to add an extra layer of security to your account.</p>
					<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3 pt-2">
						<div class="flex items-center gap-2">
							@switchcomp.Switch(switchcomp.Props{
								ID: "2fa-toggle",
							})
							<label for="2fa-toggle" class="text-sm font-medium">
								Enable 2FA
							</label>
						</div>
						@button.Button(button.Props{
							Variant: button.VariantLink,
							Size:    button.SizeSm,
							Class:   "h-auto p-0 self-start sm:self-auto",
						}) {
							Learn more
							@icon.ExternalLink(icon.Props{
								Size:  14,
								Class: "ml-1",
							})
						}
					</div>
				</div>
			}
		</div>
	}
}
```

### notification_007.templ

**Path:** `notification/notification_007.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Notification007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@Notification007BellVariations()
			@Notification007BadgePositions()
			@Notification007AnimatedBells()
			@Notification007ButtonIntegrations()
		</div>
	</section>
}

templ Notification007BellVariations() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Bell Icon Variations</h3>
		<div class="flex flex-wrap gap-6">
			@Notification007BellWithBadge("3", "default", false)
			@Notification007BellWithBadge("12", "destructive", false)
			@Notification007BellWithBadge("99+", "default", false)
			@Notification007BellWithDot()
			@Notification007BellEmpty()
			@Notification007BellOff()
		</div>
	</div>
}

templ Notification007BellWithBadge(count, variant string, pulse bool) {
	<div class="flex flex-col items-center gap-2">
		<div class="relative">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Bell(icon.Props{
					Size: 20,
				})
			}
			<span
				class={
					"absolute -top-1 -right-1 flex h-5 min-w-5 items-center justify-center rounded-full px-1 text-xs font-medium text-white",
					templ.KV("bg-primary", variant == "default"),
					templ.KV("bg-destructive", variant == "destructive"),
				}
			>
				if pulse {
					<span class="absolute inset-0 rounded-full bg-current animate-ping opacity-75"></span>
				}
				<span class="relative">{ count }</span>
			</span>
		</div>
		<span class="text-xs text-muted-foreground">{ count }</span>
	</div>
}

templ Notification007BellWithDot() {
	<div class="flex flex-col items-center gap-2">
		<div class="relative">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Bell(icon.Props{
					Size: 20,
				})
			}
			<span class="absolute top-0 right-0 w-2 h-2 bg-destructive rounded-full"></span>
		</div>
		<span class="text-xs text-muted-foreground">Dot only</span>
	</div>
}

templ Notification007BellEmpty() {
	<div class="flex flex-col items-center gap-2">
		<div class="relative">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.Bell(icon.Props{
					Size: 20,
				})
			}
		</div>
		<span class="text-xs text-muted-foreground">No badge</span>
	</div>
}

templ Notification007BellOff() {
	<div class="flex flex-col items-center gap-2">
		<div class="relative">
			@button.Button(button.Props{
				Variant: button.VariantGhost,
				Size:    button.SizeIcon,
			}) {
				@icon.BellOff(icon.Props{
					Size:  20,
					Class: "text-muted-foreground",
				})
			}
		</div>
		<span class="text-xs text-muted-foreground">Muted</span>
	</div>
}

templ Notification007BadgePositions() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Badge Positions</h3>
		<div class="grid grid-cols-2 md:grid-cols-4 gap-6">
			@Notification007PositionDemo("Top Right", "-top-1 -right-1")
			@Notification007PositionDemo("Top Left", "-top-1 -left-1")
			@Notification007PositionDemo("Bottom Right", "-bottom-1 -right-1")
			@Notification007PositionDemo("Bottom Left", "-bottom-1 -left-1")
		</div>
	</div>
}

templ Notification007PositionDemo(label, positionClass string) {
	<div class="flex flex-col items-center gap-2">
		<div class="relative p-2">
			<div class="w-12 h-12 bg-muted rounded-lg flex items-center justify-center">
				@icon.Bell(icon.Props{
					Size: 24,
				})
			</div>
			<span class={ "absolute w-3 h-3 bg-destructive rounded-full", positionClass }></span>
		</div>
		<span class="text-xs text-muted-foreground">{ label }</span>
	</div>
}

templ Notification007AnimatedBells() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Animated Notifications</h3>
		<div class="flex flex-wrap gap-8">
			<div class="flex flex-col items-center gap-2">
				<div class="relative">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "group",
					}) {
						@icon.Bell(icon.Props{
							Size:  20,
							Class: "group-hover:animate-wiggle",
						})
					}
					<span class="absolute -top-1 -right-1 flex h-5 min-w-5 items-center justify-center rounded-full bg-destructive px-1 text-xs font-medium text-white">
						<span class="absolute inset-0 rounded-full bg-destructive animate-ping opacity-75"></span>
						<span class="relative">5</span>
					</span>
				</div>
				<span class="text-xs text-muted-foreground">Pulsing badge</span>
			</div>
			<div class="flex flex-col items-center gap-2">
				<div class="relative">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						<div class="animate-wiggle">
							@icon.Bell(icon.Props{
								Size: 20,
							})
						</div>
					}
					<span class="absolute -top-1 -right-1 h-5 min-w-5 flex items-center justify-center rounded-full bg-primary px-1 text-xs font-medium text-white">
						2
					</span>
				</div>
				<span class="text-xs text-muted-foreground">Ringing bell</span>
			</div>
			<div class="flex flex-col items-center gap-2">
				<div class="relative group">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
					}) {
						@icon.Bell(icon.Props{
							Size: 20,
						})
					}
					<span class="absolute -top-1 -right-1 h-5 min-w-5 flex items-center justify-center rounded-full bg-primary px-1 text-xs font-medium text-white animate-bounce">
						!
					</span>
				</div>
				<span class="text-xs text-muted-foreground">Bouncing alert</span>
			</div>
		</div>
		<style>
			@keyframes wiggle {
				0%, 100% { transform: rotate(0deg); }
				25% { transform: rotate(-10deg); }
				75% { transform: rotate(10deg); }
			}
			.animate-wiggle {
				animation: wiggle 0.5s ease-in-out infinite;
			}
		</style>
	</div>
}

templ Notification007ButtonIntegrations() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Button Integrations</h3>
		<div class="flex flex-wrap gap-4">
			<div class="relative">
				@button.Button(button.Props{
					Variant: button.VariantDefault,
				}) {
					@icon.Bell(icon.Props{
						Size:  18,
						Class: "mr-2",
					})
					Notifications
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
						Class:   "ml-2",
					}) {
						8
					}
				}
			</div>
			<div class="relative">
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					@icon.Bell(icon.Props{
						Size:  18,
						Class: "mr-2",
					})
					View All
					<span class="ml-2 w-2 h-2 bg-destructive rounded-full"></span>
				}
			</div>
			<div class="relative inline-flex">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Class:   "relative",
				}) {
					@icon.Bell(icon.Props{
						Size:  18,
						Class: "mr-2",
					})
					Activity
				}
				<span class="absolute top-0 right-0 -mt-1 -mr-1 px-1.5 py-0.5 bg-destructive text-white text-xs font-medium rounded">
					New
				</span>
			</div>
			<div class="flex items-center border rounded-lg">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "rounded-r-none",
				}) {
					@icon.Inbox(icon.Props{
						Size: 18,
					})
				}
				<div class="h-8 w-px bg-border"></div>
				<div class="relative">
					@button.Button(button.Props{
						Variant: button.VariantGhost,
						Size:    button.SizeIcon,
						Class:   "rounded-l-none",
					}) {
						@icon.Bell(icon.Props{
							Size: 18,
						})
					}
					<span class="absolute -top-1 -right-1 w-2 h-2 bg-destructive rounded-full"></span>
				</div>
			</div>
		</div>
	</div>
}
```

### notification_009.templ

**Path:** `notification/notification_009.templ`

```templ
package notification

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	iconcomp "github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Notification009() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-3xl">
			<h3 class="text-lg font-semibold mb-2">Compact Activity Feed</h3>
			@card.Card(card.Props{Class: "overflow-hidden"}) {
				<div class="bg-muted/50 px-4 py-2 flex items-center justify-between">
					<span class="text-sm font-medium">Recent Activity</span>
					<button class="text-xs text-muted-foreground hover:text-foreground">View all</button>
				</div>
				<div class="divide-y">
					@Notification009CompactItem(
						"code",
						"New commit",
						"Sarah pushed to main",
						"Just now",
						true,
						false,
					)
					@Notification009CompactItem(
						"message",
						"Comment",
						"Alex commented on your PR",
						"5m ago",
						true,
						false,
					)
					@Notification009CompactItem(
						"star",
						"Starred",
						"Emily starred your repository",
						"12m ago",
						false,
						false,
					)
					@Notification009CompactItem(
						"user",
						"New follower",
						"Marcus started following you",
						"1h ago",
						false,
						false,
					)
					@Notification009CompactItem(
						"alert",
						"Build failed",
						"CI/CD pipeline failed on main",
						"2h ago",
						false,
						true,
					)
				</div>
			}
		</div>
	</section>
}

templ Notification009CompactItem(iconType, title, description, time string, unread bool, isImportant bool) {
	<div
		class={
			"flex items-center gap-3 px-4 py-3 hover:bg-muted/50 transition-colors",
			templ.KV("bg-muted/50", unread),
		}
	>
		<div class="flex-shrink-0">
			switch iconType {
				case "code":
					<div class="w-8 h-8 bg-muted rounded-full flex items-center justify-center">
						@iconcomp.Code(iconcomp.Props{
							Size:  16,
							Class: "text-muted-foreground",
						})
					</div>
				case "message":
					<div
						class={
							"w-8 h-8 rounded-full flex items-center justify-center",
							templ.KV("bg-primary/10", unread),
							templ.KV("bg-muted", !unread),
						}
					>
						@iconcomp.MessageSquare(iconcomp.Props{
							Size: 16,
							Class: func() string {
								if unread {
									return "text-primary"
								}
								return "text-muted-foreground"
							}(),
						})
					</div>
				case "star":
					<div class="w-8 h-8 bg-muted rounded-full flex items-center justify-center">
						@iconcomp.Star(iconcomp.Props{
							Size:  16,
							Class: "text-muted-foreground",
						})
					</div>
				case "user":
					<div class="w-8 h-8 bg-muted rounded-full flex items-center justify-center">
						@iconcomp.UserPlus(iconcomp.Props{
							Size:  16,
							Class: "text-muted-foreground",
						})
					</div>
				default:
					<div
						class={
							"w-8 h-8 rounded-full flex items-center justify-center",
							templ.KV("bg-destructive/10", isImportant),
							templ.KV("bg-muted", !isImportant),
						}
					>
						@iconcomp.CircleAlert(iconcomp.Props{
							Size: 16,
							Class: func() string {
								if isImportant {
									return "text-destructive"
								}
								return "text-muted-foreground"
							}(),
						})
					</div>
			}
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-start justify-between gap-2">
				<div class="min-w-0">
					<p
						class={
							"text-sm font-medium",
							templ.KV("text-destructive", isImportant),
						}
					>{ title }</p>
					<p class="text-sm text-muted-foreground truncate">{ description }</p>
				</div>
				<div class="flex items-center gap-2">
					<span class="text-xs text-muted-foreground whitespace-nowrap">{ time }</span>
					switch unread {
						case true:
							<span class="w-2 h-2 bg-primary rounded-full"></span>
					}
				</div>
			</div>
		</div>
	</div>
}
```

## Pricing

### pricing_001.templ

**Path:** `pricing/pricing_001.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Pricing001() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-7xl">
			@Pricing001Header()
			@Pricing001Plans()
		</div>
	</section>
}

templ Pricing001Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Simple pricing for everyone
		</h2>
		<p class="text-lg text-muted-foreground">
			Choose an affordable plan that's packed with the best features
		</p>
	</div>
}

templ Pricing001Plans() {
	<div class="grid gap-8 lg:grid-cols-3">
		@Pricing001StarterCard()
		@Pricing001ProfessionalCard()
		@Pricing001EnterpriseCard()
	</div>
}

templ Pricing001StarterCard() {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Starter
					}
					@card.Description() {
						Perfect for getting started
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<span class="text-4xl font-bold">$19</span>
						<span class="text-muted-foreground">/month</span>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Up to 5 team members</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">10GB storage</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Basic support</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Core features</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantOutline,
				}) {
					Get started
				}
			}
		</div>
	}
}

templ Pricing001ProfessionalCard() {
	@card.Card(card.Props{
		Class: "ring-2 ring-border relative flex flex-col h-full shadow-lg",
	}) {
		<div class="absolute -top-3 left-1/2 -translate-x-1/2">
			@badge.Badge() {
				Most Popular
			}
		</div>
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Professional
					}
					@card.Description() {
						Most popular choice
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<span class="text-4xl font-bold">$49</span>
						<span class="text-muted-foreground">/month</span>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Up to 20 team members</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">100GB storage</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Priority support</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Advanced features</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Analytics dashboard</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantDefault,
				}) {
					Get started
				}
			}
		</div>
	}
}

templ Pricing001EnterpriseCard() {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Enterprise
					}
					@card.Description() {
						For larger teams
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<span class="text-4xl font-bold">$99</span>
						<span class="text-muted-foreground">/month</span>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Unlimited team members</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">1TB storage</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">24/7 dedicated support</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">All features included</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Custom integrations</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{
								Size: 16,
							})
							<span class="text-sm">Advanced security</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantOutline,
				}) {
					Get started
				}
			}
		</div>
	}
}
```

### pricing_002.templ

**Path:** `pricing/pricing_002.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	switchcomp "github.com/templui/templui-pro/internal/ui/components/switch"
)

templ Pricing002() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-7xl">
			@Pricing002Header()
			@Pricing002Toggle()
			@Pricing002Plans()
		</div>
	</section>
	@Pricing002Script()
}

templ Pricing002Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Flexible pricing options
		</h2>
		<p class="text-lg text-muted-foreground">
			Save up to 20% with annual billing
		</p>
	</div>
}

templ Pricing002Toggle() {
	<div class="flex items-center justify-center gap-4 mb-16">
		<span class="text-sm font-medium">Monthly</span>
		@switchcomp.Switch(switchcomp.Props{
			ID: "billing-toggle",
		})
		<span class="text-sm font-medium">Annual</span>
		@badge.Badge(badge.Props{
			Variant: badge.VariantSecondary,
		}) {
			Save 20%
		}
	</div>
}

templ Pricing002Plans() {
	<div class="grid gap-8 lg:grid-cols-3">
		@Pricing002BasicCard()
		@Pricing002ProCard()
		@Pricing002TeamCard()
	</div>
}

templ Pricing002BasicCard() {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Basic
					}
					@card.Description() {
						Essential features for individuals
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<div class="monthly-price">
							<span class="text-4xl font-bold">$12</span>
							<span class="text-muted-foreground">/month</span>
						</div>
						<div class="annual-price hidden">
							<span class="text-4xl font-bold">$10</span>
							<span class="text-muted-foreground">/month</span>
							<div class="text-xs text-muted-foreground">Billed annually ($120)</div>
						</div>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">5 projects</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">10GB storage</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Email support</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantOutline,
				}) {
					Start free trial
				}
			}
		</div>
	}
}

templ Pricing002ProCard() {
	@card.Card(card.Props{
		Class: "ring-2 ring-border flex flex-col h-full shadow-lg",
	}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Pro
					}
					@card.Description() {
						Advanced features for professionals
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<div class="monthly-price">
							<span class="text-4xl font-bold">$29</span>
							<span class="text-muted-foreground">/month</span>
						</div>
						<div class="annual-price hidden">
							<span class="text-4xl font-bold">$24</span>
							<span class="text-muted-foreground">/month</span>
							<div class="text-xs text-muted-foreground">Billed annually ($288)</div>
						</div>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Unlimited projects</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">100GB storage</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Priority support</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Advanced analytics</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantDefault,
				}) {
					Start free trial
				}
			}
		</div>
	}
}

templ Pricing002TeamCard() {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Team
					}
					@card.Description() {
						Collaboration tools for teams
					}
				}
				@card.Content(card.ContentProps{Class: "pt-6"}) {
					<div class="text-center mb-6">
						<div class="monthly-price">
							<span class="text-4xl font-bold">$59</span>
							<span class="text-muted-foreground">/month</span>
						</div>
						<div class="annual-price hidden">
							<span class="text-4xl font-bold">$49</span>
							<span class="text-muted-foreground">/month</span>
							<div class="text-xs text-muted-foreground">Billed annually ($588)</div>
						</div>
					</div>
					<ul class="space-y-3">
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Everything in Pro</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Up to 10 team members</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Team collaboration</span>
						</li>
						<li class="flex items-center gap-2">
							@icon.Check(icon.Props{Size: 16})
							<span class="text-sm">Admin dashboard</span>
						</li>
					</ul>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantOutline,
				}) {
					Start free trial
				}
			}
		</div>
	}
}

templ Pricing002Script() {
	<script nonce={ templ.GetNonce(ctx) }> 
		document.addEventListener('DOMContentLoaded', function() {
			const toggle = document.getElementById('billing-toggle');
			const monthlyPrices = document.querySelectorAll('.monthly-price');
			const annualPrices = document.querySelectorAll('.annual-price');
			
			if (toggle) {
				toggle.addEventListener('change', function() {
					if (this.checked) {
						// Show annual prices
						monthlyPrices.forEach(price => price.classList.add('hidden'));
						annualPrices.forEach(price => price.classList.remove('hidden'));
					} else {
						// Show monthly prices
						monthlyPrices.forEach(price => price.classList.remove('hidden'));
						annualPrices.forEach(price => price.classList.add('hidden'));
					}
				});
			}
		});
	</script>
}
```

### pricing_003.templ

**Path:** `pricing/pricing_003.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ Pricing003() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-6xl">
			@Pricing003Header()
			@Pricing003Table()
		</div>
	</section>
}

templ Pricing003Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Compare all features
		</h2>
		<p class="text-lg text-muted-foreground">
			Choose the plan that fits your needs
		</p>
	</div>
}

templ Pricing003Table() {
	<div class="overflow-x-auto">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head(table.HeadProps{Class: "w-1/4"}) {
						Features
					}
					@table.Head(table.HeadProps{Class: "text-center"}) {
						<div class="flex flex-col items-center gap-2 mb-4">
							<span class="font-semibold">Starter</span>
							<div>
								<span class="text-2xl font-bold">$19</span>
								<span class="text-xs text-muted-foreground">/month</span>
							</div>
						</div>
					}
					@table.Head(table.HeadProps{Class: "text-center bg-primary/5"}) {
						<div class="flex flex-col items-center gap-2 mb-4">
							<span class="font-semibold">Professional</span>
							<div>
								<span class="text-2xl font-bold">$49</span>
								<span class="text-xs text-muted-foreground">/month</span>
							</div>
						</div>
					}
					@table.Head(table.HeadProps{Class: "text-center"}) {
						<div class="flex flex-col items-center gap-2 mb-4">
							<span class="font-semibold">Enterprise</span>
							<div>
								<span class="text-2xl font-bold">$99</span>
								<span class="text-xs text-muted-foreground">/month</span>
							</div>
						</div>
					}
				}
			}
			@table.Body() {
				@Pricing003FeatureRow("Team members", "5", "20", "Unlimited")
				@Pricing003FeatureRow("Storage", "10GB", "100GB", "1TB")
				@Pricing003FeatureRow("Projects", "3", "Unlimited", "Unlimited")
				@Pricing003CheckRow("Basic support", true, true, true)
				@Pricing003CheckRow("Priority support", false, true, true)
				@Pricing003CheckRow("24/7 support", false, false, true)
				@Pricing003CheckRow("Analytics", false, true, true)
				@Pricing003CheckRow("API access", false, true, true)
				@Pricing003CheckRow("Custom integrations", false, false, true)
				@Pricing003CheckRow("Advanced security", false, false, true)
				@table.Row() {
					@table.Cell() {
					}
					@table.Cell(table.CellProps{Class: "text-center"}) {
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Class:   "w-full",
						}) {
							Get started
						}
					}
					@table.Cell(table.CellProps{Class: "text-center bg-primary/5"}) {
						@button.Button(button.Props{
							Variant: button.VariantDefault,
							Class:   "w-full",
						}) {
							Get started
						}
					}
					@table.Cell(table.CellProps{Class: "text-center"}) {
						@button.Button(button.Props{
							Variant: button.VariantOutline,
							Class:   "w-full",
						}) {
							Contact sales
						}
					}
				}
			}
		}
	</div>
}

templ Pricing003FeatureRow(feature, starter, pro, enterprise string) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium"}) {
			{ feature }
		}
		@table.Cell(table.CellProps{Class: "text-center"}) {
			{ starter }
		}
		@table.Cell(table.CellProps{Class: "text-center bg-primary/5"}) {
			{ pro }
		}
		@table.Cell(table.CellProps{Class: "text-center"}) {
			{ enterprise }
		}
	}
}

templ Pricing003CheckRow(feature string, starter, pro, enterprise bool) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium"}) {
			{ feature }
		}
		@table.Cell(table.CellProps{Class: "text-center"}) {
			if starter {
				@icon.Check(icon.Props{Size: 16, Class: "text-primary mx-auto"})
			} else {
				@icon.X(icon.Props{Size: 16, Class: "text-muted-foreground mx-auto"})
			}
		}
		@table.Cell(table.CellProps{Class: "text-center bg-primary/5"}) {
			if pro {
				@icon.Check(icon.Props{Size: 16, Class: "text-primary mx-auto"})
			} else {
				@icon.X(icon.Props{Size: 16, Class: "text-muted-foreground mx-auto"})
			}
		}
		@table.Cell(table.CellProps{Class: "text-center"}) {
			if enterprise {
				@icon.Check(icon.Props{Size: 16, Class: "text-primary mx-auto"})
			} else {
				@icon.X(icon.Props{Size: 16, Class: "text-muted-foreground mx-auto"})
			}
		}
	}
}
```

### pricing_004.templ

**Path:** `pricing/pricing_004.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Pricing004() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-6xl">
			@Pricing004Header()
			@Pricing004Plans()
		</div>
	</section>
}

templ Pricing004Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Pay for what you use
		</h2>
		<p class="text-lg text-muted-foreground">
			Transparent usage-based pricing with no hidden fees
		</p>
	</div>
}

templ Pricing004Plans() {
	<div class="grid gap-8 lg:grid-cols-2">
		@Pricing004StarterCard()
		@Pricing004ScaleCard()
	</div>
	<div class="mt-12">
		@Pricing004EnterpriseCard()
	</div>
}

templ Pricing004StarterCard() {
	@card.Card(card.Props{Class: "flex flex-col h-full"}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Starter
					}
					@card.Description() {
						Perfect for small projects and testing
					}
				}
				@card.Content() {
					<div class="space-y-6">
						<div class="text-center">
							<span class="text-4xl font-bold">$0</span>
							<span class="text-muted-foreground">/month</span>
						</div>
						@separator.Separator()
						<div class="space-y-4">
							<div>
								<div class="flex justify-between text-sm mb-2">
									<span>API Calls</span>
									<span class="text-muted-foreground">1,000 / 10,000</span>
								</div>
								@progress.Progress(progress.Props{
									Value: 10,
								})
							</div>
							<div>
								<div class="flex justify-between text-sm mb-2">
									<span>Storage</span>
									<span class="text-muted-foreground">2GB / 5GB</span>
								</div>
								@progress.Progress(progress.Props{
									Value: 40,
								})
							</div>
							<div>
								<div class="flex justify-between text-sm mb-2">
									<span>Users</span>
									<span class="text-muted-foreground">1 / 3</span>
								</div>
								@progress.Progress(progress.Props{
									Value: 33,
								})
							</div>
						</div>
						@separator.Separator()
						<ul class="space-y-2 text-sm">
							<li>• 10,000 API calls/month</li>
							<li>• 5GB storage</li>
							<li>• Up to 3 users</li>
							<li>• Community support</li>
						</ul>
					</div>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantOutline,
				}) {
					Get started free
				}
			}
		</div>
	}
}

templ Pricing004ScaleCard() {
	@card.Card(card.Props{
		Class: "ring-2 ring-primary flex flex-col h-full",
	}) {
		<div class="flex flex-col justify-between h-full">
			<div>
				@card.Header() {
					@card.Title() {
						Scale
					}
					@card.Description() {
						Grow with flexible usage limits
					}
				}
				@card.Content() {
					<div class="space-y-6">
						<div class="text-center">
							<span class="text-4xl font-bold">$29</span>
							<span class="text-muted-foreground">/month</span>
						</div>
						@separator.Separator()
						<div class="space-y-4">
							@card.Card(card.Props{
								Class: "bg-muted/50",
							}) {
								@card.Content(card.ContentProps{
									Class: "p-4",
								}) {
									<div class="text-sm font-medium mb-1">Usage-based pricing</div>
									<div class="text-xs text-muted-foreground">
										Pay only for what you use beyond the base plan
									</div>
								}
							}
							<div class="space-y-3 text-sm">
								<div class="flex justify-between">
									<span>API calls</span>
									<span>$0.001 per call after 100K</span>
								</div>
								<div class="flex justify-between">
									<span>Storage</span>
									<span>$0.10 per GB after 50GB</span>
								</div>
								<div class="flex justify-between">
									<span>Users</span>
									<span>$5 per user after 10</span>
								</div>
							</div>
						</div>
						@separator.Separator()
						<ul class="space-y-2 text-sm">
							<li>• 100,000 API calls included</li>
							<li>• 50GB storage included</li>
							<li>• Up to 10 users included</li>
							<li>• Priority support</li>
							<li>• Advanced analytics</li>
						</ul>
					</div>
				}
			</div>
			@card.Footer(card.FooterProps{Class: "mt-auto"}) {
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantDefault,
				}) {
					Start trial
				}
			}
		</div>
	}
}

templ Pricing004EnterpriseCard() {
	@card.Card(card.Props{
		Class: "bg-muted/50",
	}) {
		@card.Content(card.ContentProps{
			Class: "grid lg:grid-cols-2 gap-8 p-8",
		}) {
			<div>
				<h3 class="text-2xl font-bold mb-2">Enterprise</h3>
				<p class="text-muted-foreground mb-6">
					Custom solutions for large organizations
				</p>
				<ul class="space-y-2 text-sm">
					<li>• Unlimited everything</li>
					<li>• Custom integrations</li>
					<li>• Dedicated support</li>
					<li>• SLA guarantees</li>
					<li>• Advanced security</li>
					<li>• Custom contracts</li>
				</ul>
			</div>
			<div class="flex flex-col justify-center">
				<div class="text-center mb-6">
					<span class="text-3xl font-bold">Custom pricing</span>
					<div class="text-sm text-muted-foreground mt-1">
						Based on your specific needs
					</div>
				</div>
				@button.Button(button.Props{
					FullWidth: true,
					Variant:   button.VariantDefault,
				}) {
					Contact sales
				}
			</div>
		}
	}
}
```

### pricing_005.templ

**Path:** `pricing/pricing_005.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Pricing005() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-md">
			@Pricing005Header()
			@Pricing005PricingCard()
		</div>
	</section>
}

templ Pricing005Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl font-bold tracking-tight mb-4">
			Simple, honest pricing
		</h2>
		<p class="text-muted-foreground">
			One plan that includes everything you need
		</p>
	</div>
}

templ Pricing005PricingCard() {
	@card.Card() {
		@card.Content() {
			<div class="text-center mb-8">
				<h3 class="text-xl font-semibold mb-2">Professional</h3>
				<div class="mb-4">
					<span class="text-5xl font-bold">$39</span>
					<span class="text-muted-foreground">/month</span>
				</div>
				<p class="text-sm text-muted-foreground">
					Billed monthly, cancel anytime
				</p>
			</div>
			@separator.Separator(separator.Props{Class: "my-8"})
			<div class="space-y-4 mb-8">
				<h4 class="font-medium">What's included:</h4>
				<ul class="space-y-3 text-sm">
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>Unlimited projects and team members</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>100GB storage with automatic backups</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>Advanced collaboration tools</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>Priority email and chat support</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>Custom integrations and API access</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>Advanced analytics and reporting</span>
					</li>
					<li class="flex items-start gap-2">
						<span class="text-primary">✓</span>
						<span>SSO and enterprise security features</span>
					</li>
				</ul>
			</div>
			@Pricing005CTAButtons()
			@separator.Separator(separator.Props{Class: "my-8"})
			<div class="text-center">
				<p class="text-xs text-muted-foreground mb-2">
					14-day free trial • No credit card required
				</p>
				<p class="text-xs text-muted-foreground">
					Questions? <a href="#" class="text-primary hover:underline">Contact our sales team</a>
				</p>
			</div>
		}
	}
}

templ Pricing005CTAButtons() {
	<div class="space-y-3">
		@button.Button(button.Props{
			FullWidth: true,
			Variant:   button.VariantDefault,
		}) {
			Start free trial
		}
		@button.Button(button.Props{
			FullWidth: true,
			Variant:   button.VariantOutline,
		}) {
			Schedule a demo
		}
	</div>
}
```

### pricing_006.templ

**Path:** `pricing/pricing_006.templ`

```templ
package pricing

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/radio"
)

templ Pricing006() {
	<section class="py-24 px-4 sm:px-6 lg:px-8">
		<div class="mx-auto max-w-6xl">
			@Pricing006Header()
			@Pricing006Plans()
			@Pricing006CTA()
		</div>
	</section>
}

templ Pricing006Header() {
	<div class="text-center mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl mb-4">
			Choose your plan
		</h2>
		<p class="text-lg text-muted-foreground">
			Select the plan that best fits your needs. You can change anytime.
		</p>
	</div>
}

templ Pricing006Plans() {
	<form class="grid gap-6 lg:grid-cols-3 mb-12">
		@Pricing006StarterPlan()
		@Pricing006ProPlan()
		@Pricing006TeamPlan()
	</form>
}

templ Pricing006StarterPlan() {
	@label.Label(label.Props{
		For:   "plan-starter",
		Class: "block cursor-pointer",
	}) {
		@card.Card(card.Props{
			Class: "min-h-[400px] hover:border-primary/50 has-[:checked]:ring-1 has-[:checked]:ring-primary has-[:checked]:border-primary transition-all",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-6 flex flex-col justify-between h-full",
			}) {
				@radio.Radio(radio.Props{
					ID:    "plan-starter",
					Name:  "plan",
					Value: "starter",
					Class: "hidden",
				})
				<div class="flex flex-col justify-between h-full">
					<!-- Header Section -->
					<div>
						<div class="flex items-center justify-between w-full mb-2">
							<h3 class="text-lg font-semibold">Starter</h3>
							<div class="text-right">
								<div class="text-2xl font-bold">$19</div>
								<div class="text-xs text-muted-foreground">/month</div>
							</div>
						</div>
						<p class="text-sm text-muted-foreground">
							Perfect for individuals and small projects
						</p>
					</div>
					<!-- Features Section -->
					<div class="flex-1 py-4">
						<ul class="space-y-3">
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Up to 5 projects</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>10GB storage</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Basic support</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Standard templates</span>
							</li>
						</ul>
					</div>
					<!-- Footer Section -->
					<div class="text-xs text-muted-foreground text-center pt-4 border-t">
						Great for getting started
					</div>
				</div>
			}
		}
	}
}

templ Pricing006ProPlan() {
	@label.Label(label.Props{
		For:   "plan-pro",
		Class: "block cursor-pointer",
	}) {
		@card.Card(card.Props{
			Class: "min-h-[400px] hover:border-primary/50 has-[:checked]:ring-1 has-[:checked]:ring-primary has-[:checked]:border-primary transition-all",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-6 flex flex-col justify-between h-full",
			}) {
				@radio.Radio(radio.Props{
					ID:      "plan-pro",
					Name:    "plan",
					Value:   "pro",
					Checked: true,
					Class:   "hidden",
				})
				<div class="flex flex-col justify-between h-full">
					<!-- Header Section -->
					<div>
						<div class="flex items-center justify-between w-full mb-2">
							<div class="flex items-center gap-2">
								<h3 class="text-lg font-semibold">Professional</h3>
								@badge.Badge(badge.Props{
									Class: "text-xs px-2 py-0.5",
								}) {
									Popular
								}
							</div>
							<div class="text-right">
								<div class="text-2xl font-bold">$49</div>
								<div class="text-xs text-muted-foreground">/month</div>
							</div>
						</div>
						<p class="text-sm text-muted-foreground">
							Best for growing businesses and teams
						</p>
					</div>
					<!-- Features Section -->
					<div class="flex-1 py-4">
						<ul class="space-y-3">
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Unlimited projects</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>100GB storage</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Priority support</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Premium templates</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Advanced analytics</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>API access</span>
							</li>
						</ul>
					</div>
					<!-- Footer Section -->
					<div class="text-xs text-muted-foreground text-center pt-4 border-t">
						Most popular choice
					</div>
				</div>
			}
		}
	}
}

templ Pricing006TeamPlan() {
	@label.Label(label.Props{
		For:   "plan-team",
		Class: "block cursor-pointer",
	}) {
		@card.Card(card.Props{
			Class: "min-h-[400px] hover:border-primary/50 has-[:checked]:ring-1 has-[:checked]:ring-primary has-[:checked]:border-primary transition-all",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-6 flex flex-col justify-between h-full",
			}) {
				@radio.Radio(radio.Props{
					ID:    "plan-team",
					Name:  "plan",
					Value: "team",
					Class: "hidden",
				})
				<div class="flex flex-col justify-between h-full">
					<!-- Header Section -->
					<div>
						<div class="flex items-center justify-between w-full mb-2">
							<h3 class="text-lg font-semibold">Team</h3>
							<div class="text-right">
								<div class="text-2xl font-bold">$99</div>
								<div class="text-xs text-muted-foreground">/month</div>
							</div>
						</div>
						<p class="text-sm text-muted-foreground">
							For larger teams and organizations
						</p>
					</div>
					<!-- Features Section -->
					<div class="flex-1 py-4">
						<ul class="space-y-3">
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Everything in Professional</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Unlimited team members</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>1TB storage</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>24/7 dedicated support</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Custom integrations</span>
							</li>
							<li class="flex items-center gap-2 text-sm">
								@icon.Check(icon.Props{Size: 16})
								<span>Advanced security</span>
							</li>
						</ul>
					</div>
					<!-- Footer Section -->
					<div class="text-xs text-muted-foreground text-center pt-4 border-t">
						Maximum flexibility and control
					</div>
				</div>
			}
		}
	}
}

templ Pricing006CTA() {
	<div class="text-center">
		@button.Button(button.Props{
			Variant: button.VariantDefault,
			Class:   "px-8",
		}) {
			Continue with selected plan
		}
		<p class="text-xs text-muted-foreground mt-4">
			14-day free trial • No credit card required • Cancel anytime
		</p>
	</div>
}
```

## Profile

### profile_completion_001.templ

**Path:** `profile/profile_completion_001.templ`

```templ
package profile

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"github.com/templui/templui-pro/internal/utils"
)

templ ProfileCompletion001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-3xl mx-auto">
			@ProfileCompletion001Header()
			@ProfileCompletion001Progress()
			@ProfileCompletion001Steps()
			@ProfileCompletion001Benefits()
		</div>
	</div>
}

templ ProfileCompletion001Header() {
	<div class="text-center mb-8">
		<h2 class="text-3xl font-bold mb-2">Complete Your Profile</h2>
		<p class="text-muted-foreground">A complete profile helps you stand out and connect with others</p>
	</div>
}

templ ProfileCompletion001Progress() {
	@card.Card(card.Props{Class: "mb-8"}) {
		@card.Content(card.ContentProps{Class: "p-4 sm:p-6"}) {
			<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4 mb-4">
				<div>
					<h3 class="text-lg font-semibold">Profile Completion</h3>
					<p class="text-sm text-muted-foreground">You're almost there!</p>
				</div>
				<div class="text-center sm:text-right">
					<div class="text-3xl font-bold">75%</div>
					<p class="text-sm text-muted-foreground">Complete</p>
				</div>
			</div>
			@progress.Progress(progress.Props{
				Value: 75,
				Class: "h-3",
			})
			<div class="flex items-center gap-2 mt-4">
				@icon.Zap(icon.Props{Size: 16, Class: "text-muted-foreground"})
				<p class="text-sm">Complete your profile to unlock all features</p>
			</div>
		}
	}
}

templ ProfileCompletion001Steps() {
	<div class="space-y-4 mb-8">
		@ProfileCompletion001Step(
			"Add Profile Picture",
			"Upload a professional photo to help others recognize you",
			true,
			icon.Camera(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Write Your Bio",
			"Tell others about yourself in 2-3 sentences",
			true,
			icon.FileText(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Add Your Location",
			"Help others find professionals in their area",
			true,
			icon.MapPin(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Connect Social Accounts",
			"Link your GitHub, Twitter, and LinkedIn profiles",
			false,
			icon.Share2(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Add Work Experience",
			"Showcase your professional background",
			false,
			icon.Briefcase(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"List Your Skills",
			"Add at least 5 skills to help others understand your expertise",
			false,
			icon.Award(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Verify Email",
			"Confirm your email address for security",
			true,
			icon.Mail(icon.Props{Size: 20}),
		)
		@ProfileCompletion001Step(
			"Enable Two-Factor Authentication",
			"Add an extra layer of security to your account",
			false,
			icon.Shield(icon.Props{Size: 20}),
		)
	</div>
}

templ ProfileCompletion001Step(title, description string, isCompleted bool, iconComponent templ.Component) {
	@card.Card(card.Props{
		Class: utils.If(isCompleted, "border-primary/20 dark:border-primary/30"),
	}) {
		@card.Content(card.ContentProps{Class: "p-4"}) {
			<div class="flex items-start gap-4">
				<div class="flex-shrink-0">
					if isCompleted {
						<div class="w-10 h-10 bg-green-500/10 dark:bg-green-500/20 rounded-full flex items-center justify-center">
							@icon.Check(icon.Props{Size: 20, Class: "text-green-500"})
						</div>
					} else {
						<div class="w-10 h-10 bg-muted rounded-full flex items-center justify-center">
							{ children... }
						</div>
					}
				</div>
				<div class="flex-1 min-w-0">
					<div class="flex flex-wrap items-center gap-2 mb-1">
						<h4 class="font-medium">{ title }</h4>
						if isCompleted {
							@badge.Badge(badge.Props{
								Class: "bg-green-500/10 text-green-500 dark:bg-green-500/20 text-xs px-2 py-1",
							}) {
								Completed
							}
						}
					</div>
					<p class="text-sm text-muted-foreground mb-3">{ description }</p>
					if !isCompleted {
						@button.Button(button.Props{
							Class: "h-8 px-3 text-sm w-full sm:w-auto",
						}) {
							Complete Step
							@icon.ArrowRight(icon.Props{Size: 14, Class: "ml-1"})
						}
					}
				</div>
			</div>
		}
	}
}

templ ProfileCompletion001Benefits() {
	@card.Card(card.Props{
		Class: "bg-gradient-to-r from-muted/50 to-muted dark:from-muted/50 dark:to-muted/80 border-muted",
	}) {
		@card.Header() {
			@card.Title(card.TitleProps{Class: "flex items-center gap-2"}) {
				@icon.Gift(icon.Props{Size: 20, Class: "text-muted-foreground"})
				Benefits of a Complete Profile
			}
		}
		@card.Content(card.ContentProps{Class: "p-4 sm:p-6"}) {
			<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
				@ProfileCompletion001Benefit(
					"Increased Visibility",
					"Appear higher in search results",
					icon.Search(icon.Props{Size: 16}),
				)
				@ProfileCompletion001Benefit(
					"Build Trust",
					"Verified profiles get 3x more engagement",
					icon.ShieldCheck(icon.Props{Size: 16}),
				)
				@ProfileCompletion001Benefit(
					"Unlock Features",
					"Access premium tools and analytics",
					icon.Key(icon.Props{Size: 16}),
				)
				@ProfileCompletion001Benefit(
					"Better Connections",
					"Find and connect with like-minded people",
					icon.Users(icon.Props{Size: 16}),
				)
			</div>
			<div class="mt-6 text-center">
				@button.Button(button.Props{
					Class: "w-full md:w-auto",
				}) {
					@icon.Rocket(icon.Props{Size: 16, Class: "mr-2"})
					Complete Profile Now
				}
			</div>
		}
	}
}

templ ProfileCompletion001Benefit(title, description string, iconComponent templ.Component) {
	<div class="flex gap-3">
		<div class="flex-shrink-0 text-muted-foreground">
			{ children... }
		</div>
		<div>
			<h4 class="font-medium text-sm">{ title }</h4>
			<p class="text-xs text-muted-foreground">{ description }</p>
		</div>
	</div>
}
```

### profile_edit_001.templ

**Path:** `profile/profile_edit_001.templ`

```templ
package profile

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/form"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/textarea"
)

templ ProfileEdit001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-2xl mx-auto">
			@ProfileEdit001Header()
			@ProfileEdit001Form()
		</div>
	</div>
}

templ ProfileEdit001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold mb-2">Edit Profile</h2>
		<p class="text-muted-foreground">Update your personal information and manage your public profile</p>
	</div>
}

templ ProfileEdit001Form() {
	<form class="bg-card p-4 sm:p-6 lg:p-8 rounded-lg border space-y-6">
		@ProfileEdit001AvatarSection()
		@ProfileEdit001PersonalSection()
		@ProfileEdit001ContactSection()
		@ProfileEdit001SocialSection()
		@ProfileEdit001BioSection()
		@ProfileEdit001Actions()
	</form>
}

templ ProfileEdit001AvatarSection() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Profile Picture</h3>
		<div class="flex flex-col sm:flex-row items-center gap-4">
			@avatar.Avatar(avatar.Props{Class: "h-16 w-16"}) {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-5.png",
					Alt: "Profile picture",
				})
				@avatar.Fallback() {
					JD
				}
			}
			<div class="flex flex-col sm:flex-row gap-2 w-full sm:w-auto">
				@button.Button(button.Props{
					Type:    "button",
					Variant: button.VariantOutline,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.Upload(icon.Props{Size: 16})
					<span class="ml-2">Upload New</span>
				}
				@button.Button(button.Props{
					Type:    "button",
					Variant: button.VariantGhost,
					Class:   "w-full sm:w-auto",
				}) {
					Remove
				}
			</div>
		</div>
	</div>
}

templ ProfileEdit001PersonalSection() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Personal Information</h3>
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
			@form.Item() {
				@label.Label(label.Props{For: "account001-firstname"}) {
					First Name
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.User(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-firstname",
						Placeholder: "John",
						Value:       "John",
						Class:       "pl-10",
					})
				</div>
			}
			@form.Item() {
				@label.Label(label.Props{For: "account001-lastname"}) {
					Last Name
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.User(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-lastname",
						Placeholder: "Doe",
						Value:       "Doe",
						Class:       "pl-10",
					})
				</div>
			}
		</div>
		@form.Item() {
			@label.Label(label.Props{For: "account001-username"}) {
				Username
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.AtSign(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@input.Input(input.Props{
					ID:          "account001-username",
					Placeholder: "johndoe",
					Value:       "johndoe",
					Class:       "pl-10",
				})
			</div>
			<p class="text-sm text-muted-foreground mt-1">This is your public display name</p>
		}
		@form.Item() {
			@label.Label(label.Props{For: "account001-company"}) {
				Company
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.Building(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@input.Input(input.Props{
					ID:          "account001-company",
					Placeholder: "Acme Inc.",
					Value:       "Acme Inc.",
					Class:       "pl-10",
				})
			</div>
		}
		@form.Item() {
			@label.Label(label.Props{For: "account001-location"}) {
				Location
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.MapPin(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@selectbox.SelectBox(selectbox.Props{Class: "pl-10"}) {
					@selectbox.Trigger(selectbox.TriggerProps{
						ID: "account001-location",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Select location",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: "ny"}) {
							New York, NY
						}
						@selectbox.Item(selectbox.ItemProps{Value: "sf"}) {
							San Francisco, CA
						}
						@selectbox.Item(selectbox.ItemProps{Value: "la"}) {
							Los Angeles, CA
						}
						@selectbox.Item(selectbox.ItemProps{Value: "chi"}) {
							Chicago, IL
						}
						@selectbox.Item(selectbox.ItemProps{Value: "aus"}) {
							Austin, TX
						}
					}
				}
			</div>
		}
	</div>
}

templ ProfileEdit001ContactSection() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Contact Details</h3>
		@form.Item() {
			@label.Label(label.Props{For: "account001-email"}) {
				Email Address
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.Mail(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@input.Input(input.Props{
					ID:          "account001-email",
					Type:        input.TypeEmail,
					Placeholder: "john@example.com",
					Value:       "john@example.com",
					Class:       "pl-10",
				})
			</div>
			<p class="text-sm text-muted-foreground mt-1">We'll never share your email with anyone else</p>
		}
		@form.Item() {
			@label.Label(label.Props{For: "account001-phone"}) {
				Phone Number
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.Phone(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@input.Input(input.Props{
					ID:          "account001-phone",
					Type:        input.TypeTel,
					Placeholder: "+1 (555) 000-0000",
					Value:       "+1 (555) 123-4567",
					Class:       "pl-10",
				})
			</div>
		}
		@form.Item() {
			@label.Label(label.Props{For: "account001-website"}) {
				Website
			}
			<div class="relative">
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.Globe(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@input.Input(input.Props{
					ID:          "account001-website",
					Placeholder: "https://example.com",
					Value:       "https://johndoe.com",
					Class:       "pl-10",
				})
			</div>
		}
	</div>
}

templ ProfileEdit001SocialSection() {
	<div class="space-y-4">
		<h3 class="text-lg font-semibold">Social Profiles</h3>
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
			@form.Item() {
				@label.Label(label.Props{For: "account001-github"}) {
					GitHub
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.Github(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-github",
						Placeholder: "username",
						Value:       "johndoe",
						Class:       "pl-10",
					})
				</div>
			}
			@form.Item() {
				@label.Label(label.Props{For: "account001-twitter"}) {
					Twitter
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.Twitter(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-twitter",
						Placeholder: "@username",
						Value:       "@johndoe",
						Class:       "pl-10",
					})
				</div>
			}
			@form.Item() {
				@label.Label(label.Props{For: "account001-linkedin"}) {
					LinkedIn
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.Linkedin(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-linkedin",
						Placeholder: "profile-url",
						Value:       "linkedin.com/in/johndoe",
						Class:       "pl-10",
					})
				</div>
			}
			@form.Item() {
				@label.Label(label.Props{For: "account001-instagram"}) {
					Instagram
				}
				<div class="relative">
					<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
						@icon.Instagram(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					@input.Input(input.Props{
						ID:          "account001-instagram",
						Placeholder: "@username",
						Value:       "@johndoe",
						Class:       "pl-10",
					})
				</div>
			}
		</div>
	</div>
}

templ ProfileEdit001BioSection() {
	<div class="space-y-4">
		@form.Item() {
			@label.Label(label.Props{For: "account001-bio"}) {
				Bio
			}
			<div class="relative">
				<div class="absolute top-3 left-0 pl-3 pointer-events-none">
					@icon.FileText(icon.Props{Size: 16, Class: "text-muted-foreground"})
				</div>
				@textarea.Textarea(textarea.Props{
					ID:          "account001-bio",
					Placeholder: "Tell us about yourself...",
					Value:       "Full-stack developer passionate about building great user experiences.",
					Rows:        4,
					Class:       "pl-10",
				})
			</div>
			<p class="text-sm text-muted-foreground">Brief description for your profile. URLs are hyperlinked.</p>
		}
	</div>
}

templ ProfileEdit001Actions() {
	<div class="flex flex-col sm:flex-row gap-3 pt-4">
		@button.Button(button.Props{
			Type:    "button",
			Variant: button.VariantOutline,
			Class:   "w-full sm:w-auto sm:flex-1",
		}) {
			@icon.X(icon.Props{Size: 16})
			<span class="ml-2">Cancel</span>
		}
		@button.Button(button.Props{
			Class: "w-full sm:w-auto sm:flex-1",
		}) {
			@icon.Save(icon.Props{Size: 16})
			<span class="ml-2">Save Changes</span>
		}
	</div>
}
```

### profile_overview_001.templ

**Path:** `profile/profile_overview_001.templ`

```templ
package profile

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ ProfileOverview001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@ProfileOverview001Header()
			@ProfileOverview001Overview()
			@ProfileOverview001Stats()
			@ProfileOverview001RecentActivity()
		</div>
	</div>
}

templ ProfileOverview001Header() {
	<div class="mb-8 flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
		<div class="flex items-center gap-4">
			@avatar.Avatar(avatar.Props{Class: "h-16 w-16"}) {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-9.png",
					Alt: "Profile picture",
				})
				@avatar.Fallback() {
					JD
				}
			}
			<div>
				<h1 class="text-3xl font-bold">John Doe</h1>
				<p class="text-muted-foreground">{ "@johndoe" }</p>
				<div class="flex items-center gap-2 mt-2">
					@badge.Badge(badge.Props{Variant: badge.VariantSecondary}) {
						Pro Member
					}
					@badge.Badge(badge.Props{Variant: badge.VariantOutline}) {
						Verified
					}
				</div>
			</div>
		</div>
		<div class="flex flex-col sm:flex-row gap-3 w-full md:w-auto">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full sm:w-auto",
			}) {
				@icon.Share2(icon.Props{Size: 16})
				<span class="ml-2">Share Profile</span>
			}
			@button.Button(button.Props{
				Class: "w-full sm:w-auto",
			}) {
				@icon.Settings(icon.Props{Size: 16})
				<span class="ml-2">Edit Profile</span>
			}
		</div>
	</div>
}

templ ProfileOverview001Overview() {
	<div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
		@ProfileOverview001InfoCard("Personal Information", icon.User(icon.Props{Size: 20})) {
			@ProfileOverview001InfoItem("Full Name", "John Doe")
			@ProfileOverview001InfoItem("Email", "john@example.com")
			@ProfileOverview001InfoItem("Phone", "+1 (555) 123-4567")
			@ProfileOverview001InfoItem("Location", "San Francisco, CA")
		}
		@ProfileOverview001InfoCard("Professional Details", icon.Briefcase(icon.Props{Size: 20})) {
			@ProfileOverview001InfoItem("Company", "Acme Inc.")
			@ProfileOverview001InfoItem("Position", "Senior Developer")
			@ProfileOverview001InfoItem("Department", "Engineering")
			@ProfileOverview001InfoItem("Employee ID", "#12345")
		}
		@ProfileOverview001InfoCard("Account Details", icon.Shield(icon.Props{Size: 20})) {
			@ProfileOverview001InfoItem("Member Since", "January 2023")
			@ProfileOverview001InfoItem("Account Type", "Professional")
			@ProfileOverview001InfoItem("Status", "Active")
			@ProfileOverview001InfoItem("Last Login", "2 hours ago")
		}
	</div>
}

templ ProfileOverview001InfoCard(title string, iconComponent templ.Component) {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				<div class="flex items-center gap-2">
					@iconComponent
					{ title }
				</div>
			}
		}
		@card.Content() {
			<div class="space-y-3">
				{ children... }
			</div>
		}
	}
}

templ ProfileOverview001InfoItem(label, value string) {
	<div class="flex flex-col sm:flex-row sm:justify-between sm:items-center gap-1">
		<span class="text-sm text-muted-foreground">{ label }</span>
		<span class="text-sm font-medium">{ value }</span>
	</div>
}

templ ProfileOverview001Stats() {
	<div class="grid grid-cols-2 lg:grid-cols-4 gap-4 mb-8">
		@ProfileOverview001StatCard("Projects", "12", "+2 this month", icon.Folder(icon.Props{Size: 20}))
		@ProfileOverview001StatCard("Team Members", "8", "2 pending invites", icon.Users(icon.Props{Size: 20}))
		@ProfileOverview001StatCard("Storage Used", "45.2 GB", "54% of quota", icon.HardDrive(icon.Props{Size: 20}))
		@ProfileOverview001StatCard("API Calls", "1.2M", "This month", icon.Activity(icon.Props{Size: 20}))
	</div>
}

templ ProfileOverview001StatCard(title, value, subtitle string, iconComponent templ.Component) {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4 sm:p-6"}) {
			<div class="flex items-center justify-between mb-2">
				<span class="text-sm text-muted-foreground">{ title }</span>
				<div class="text-muted-foreground">
					@iconComponent
				</div>
			</div>
			<div class="text-2xl font-bold">{ value }</div>
			<p class="text-sm text-muted-foreground mt-1">{ subtitle }</p>
		}
	}
}

templ ProfileOverview001RecentActivity() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Recent Activity
			}
			@card.Description() {
				Your latest actions and updates
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@ProfileOverview001ActivityItem(
					icon.FileText(icon.Props{Size: 16}),
					"Updated profile information",
					"2 hours ago",
				)
				@ProfileOverview001ActivityItem(
					icon.UserPlus(icon.Props{Size: 16}),
					"Invited team member sarah@example.com",
					"5 hours ago",
				)
				@ProfileOverview001ActivityItem(
					icon.Key(icon.Props{Size: 16}),
					"Generated new API key",
					"1 day ago",
				)
				@ProfileOverview001ActivityItem(
					icon.Shield(icon.Props{Size: 16}),
					"Enabled two-factor authentication",
					"3 days ago",
				)
				@ProfileOverview001ActivityItem(
					icon.CreditCard(icon.Props{Size: 16}),
					"Updated billing information",
					"1 week ago",
				)
			</div>
		}
		@card.Footer() {
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				View All Activity
			}
		}
	}
}

templ ProfileOverview001ActivityItem(iconComponent templ.Component, title, time string) {
	<div class="flex items-center gap-3">
		@iconComponent
		<div class="flex-1">
			<p class="text-sm font-medium">{ title }</p>
			<p class="text-xs text-muted-foreground">{ time }</p>
		</div>
	</div>
}
```

### profile_stats_001.templ

**Path:** `profile/profile_stats_001.templ`

```templ
package profile

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/chart"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ ProfileStats001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-6xl mx-auto">
			@ProfileStats001Header()
			@ProfileStats001Overview()
			@ProfileStats001Charts()
			@ProfileStats001Achievements()
		</div>
	</div>
}

templ ProfileStats001Header() {
	<div class="mb-8">
		<h2 class="text-3xl font-bold mb-2">Profile Statistics</h2>
		<p class="text-muted-foreground">Track your progress and performance metrics</p>
	</div>
}

templ ProfileStats001Overview() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 mb-8">
		@ProfileStats001StatCard(
			"Total Views",
			"24.5K",
			"+12% from last month",
			icon.Eye(icon.Props{Size: 20}),
			"text-muted-foreground bg-muted",
		)
		@ProfileStats001StatCard(
			"Engagement Rate",
			"68%",
			"+5% from last month",
			icon.TrendingUp(icon.Props{Size: 20}),
			"text-muted-foreground bg-muted",
		)
		@ProfileStats001StatCard(
			"Followers Growth",
			"+342",
			"This month",
			icon.Users(icon.Props{Size: 20}),
			"text-muted-foreground bg-muted",
		)
		@ProfileStats001StatCard(
			"Content Created",
			"156",
			"All time",
			icon.FileText(icon.Props{Size: 20}),
			"text-muted-foreground bg-muted",
		)
	</div>
}

templ ProfileStats001StatCard(title, value, subtitle string, iconComponent templ.Component, colorClass string) {
	@card.Card() {
		@card.Content(card.ContentProps{Class: "p-4 sm:p-6"}) {
			<div class="flex items-center justify-between mb-4">
				<div class={ "p-2 rounded-lg", colorClass }>
					{ children... }
				</div>
				@icon.EllipsisVertical(icon.Props{Size: 16, Class: "text-muted-foreground"})
			</div>
			<div>
				<h3 class="text-2xl font-bold">{ value }</h3>
				<p class="text-sm text-muted-foreground">{ title }</p>
				<p class="text-xs text-muted-foreground mt-1">{ subtitle }</p>
			</div>
		}
	}
}

templ ProfileStats001Charts() {
	<div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
		@card.Card() {
			@card.Header() {
				@card.Title() {
					Activity Overview
				}
				@card.Description() {
					Your activity over the last 7 days
				}
			}
			@card.Content() {
				@chart.Chart(chart.Props{
					Variant: chart.VariantLine,
					Data: chart.Data{
						Labels: []string{"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"},
						Datasets: []chart.Dataset{{
							Label:           "Activities",
							Data:            []float64{12, 19, 15, 25, 22, 30, 28},
							BorderColor:     "oklch(var(--primary))",
							BackgroundColor: "oklch(var(--primary) / 0.1)",
							Tension:         0.4,
						}},
					},
					Options: chart.Options{
						Responsive: true,
						Legend:     false,
					},
					Class: "h-64",
				})
			}
		}
		@card.Card() {
			@card.Header() {
				@card.Title() {
					Content Distribution
				}
				@card.Description() {
					Breakdown of your content types
				}
			}
			@card.Content() {
				@chart.Chart(chart.Props{
					Variant: chart.VariantDoughnut,
					Data: chart.Data{
						Labels: []string{"Articles", "Projects", "Code Snippets", "Tutorials"},
						Datasets: []chart.Dataset{{
							Data: []float64{45, 30, 15, 10},
							BackgroundColor: []string{
								"oklch(var(--primary))",
								"oklch(var(--primary) / 0.7)",
								"oklch(var(--primary) / 0.5)",
								"oklch(var(--primary) / 0.3)",
							},
						}},
					},
					Options: chart.Options{
						Responsive: true,
						Legend:     true,
					},
					Class: "h-64",
				})
			}
		}
	</div>
}

templ ProfileStats001Achievements() {
	@card.Card() {
		@card.Header() {
			@card.Title() {
				Achievements & Milestones
			}
			@card.Description() {
				Your progress towards various goals
			}
		}
		@card.Content() {
			<div class="space-y-6">
				@ProfileStats001Achievement(
					"Content Creator",
					"Create 100 pieces of content",
					75,
					"75/100",
					true,
				)
				@ProfileStats001Achievement(
					"Community Builder",
					"Reach 1000 followers",
					85,
					"850/1000",
					false,
				)
				@ProfileStats001Achievement(
					"Engagement Master",
					"Maintain 50% engagement rate",
					100,
					"Completed",
					true,
				)
				@ProfileStats001Achievement(
					"Consistency King",
					"Post daily for 30 days",
					60,
					"18/30 days",
					false,
				)
			</div>
		}
	}
}

templ ProfileStats001Achievement(title, description string, progressValue int, progressText string, isCompleted bool) {
	<div class="space-y-2">
		<div class="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
			<div class="flex items-center gap-3">
				if isCompleted {
					<div class="w-10 h-10 bg-primary/10 dark:bg-primary/20 rounded-full flex items-center justify-center">
						@icon.Trophy(icon.Props{Size: 20, Class: "text-primary"})
					</div>
				} else {
					<div class="w-10 h-10 bg-muted rounded-full flex items-center justify-center">
						@icon.Target(icon.Props{Size: 20, Class: "text-muted-foreground"})
					</div>
				}
				<div>
					<h4 class="font-medium flex flex-wrap items-center gap-2">
						{ title }
						if isCompleted {
							@badge.Badge(badge.Props{
								Class: "bg-primary/10 text-primary dark:bg-primary/20 text-xs",
							}) {
								Completed
							}
						}
					</h4>
					<p class="text-sm text-muted-foreground">{ description }</p>
				</div>
			</div>
			<span class="text-sm font-medium text-right">{ progressText }</span>
		</div>
		@progress.Progress(progress.Props{
			Value: progressValue,
			Class: "h-2",
		})
	</div>
}
```

### profile_view_001.templ

**Path:** `profile/profile_view_001.templ`

```templ
package profile

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ ProfileView001() {
	<div class="container mx-auto px-4 py-8">
		<div class="max-w-4xl mx-auto">
			@ProfileView001Header()
			@ProfileView001About()
			@ProfileView001Activity()
		</div>
	</div>
}

templ ProfileView001Header() {
	<div class="relative">
		<div class="bg-gradient-to-r from-muted to-background rounded-t-lg h-20 sm:h-24 md:h-32"></div>
		<div class="absolute left-1/2 -translate-x-1/2 -bottom-12">
			<div class="relative">
				@avatar.Avatar(avatar.Props{
					Class: "border-4 border-background w-20 h-20 sm:w-24 sm:h-24",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: "/assets/img/avatar-gh-1.png",
						Alt: "Profile picture",
					})
				}
				<div class="absolute bottom-1 right-1 bg-green-500 w-4 h-4 sm:w-5 sm:h-5 rounded-full border-2 sm:border-3 border-background"></div>
			</div>
		</div>
	</div>
	<div class="bg-card rounded-b-lg border px-4 md:px-6 pb-4 sm:pb-6 pt-14 sm:pt-16">
		<div class="text-center">
			<div class="flex items-center justify-center gap-2 flex-wrap">
				<h1 class="text-lg sm:text-xl font-semibold">John Doe</h1>
				@badge.Badge(badge.Props{
					Variant: badge.VariantSecondary,
					Class:   "h-5 text-xs",
				}) {
					PRO
				}
				@icon.CircleCheck(icon.Props{Size: 16, Class: "text-muted-foreground"})
			</div>
			<p class="text-sm text-muted-foreground mt-1">{ "@johndoe" } • Senior Developer</p>
			<div class="flex flex-col sm:flex-row items-center justify-center gap-2 sm:gap-3 mt-2 text-sm text-muted-foreground">
				<span class="flex items-center gap-1">
					@icon.MapPin(icon.Props{Size: 14})
					San Francisco
				</span>
				<span class="flex items-center gap-1">
					@icon.Link(icon.Props{Size: 14})
					<a href="#" class="hover:text-foreground transition-colors">johndoe.dev</a>
				</span>
			</div>
			<div class="flex flex-col sm:flex-row justify-center gap-2 mt-4">
				@button.Button(button.Props{
					Variant: button.VariantDefault,
					Size:    button.SizeSm,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.UserPlus(icon.Props{Size: 14})
					<span class="ml-1.5">Follow</span>
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
					Size:    button.SizeSm,
					Class:   "w-full sm:w-auto",
				}) {
					@icon.Mail(icon.Props{Size: 14})
					<span class="ml-1.5">Message</span>
				}
			</div>
		</div>
		<div class="flex items-center justify-center gap-3 sm:gap-6 md:gap-8 mt-4 sm:mt-6 pt-4 sm:pt-6 border-t">
			@ProfileView001Stat("Followers", "2.4K")
			@ProfileView001Stat("Following", "543")
			@ProfileView001Stat("Projects", "42")
			@ProfileView001Stat("Stars", "1.2K")
		</div>
	</div>
}

templ ProfileView001Stat(label, value string) {
	<div>
		<div class="text-base sm:text-lg font-semibold">{ value }</div>
		<div class="text-xs text-muted-foreground">{ label }</div>
	</div>
}

templ ProfileView001About() {
	@card.Card(card.Props{Class: "mt-4 sm:mt-6"}) {
		@card.Header() {
			@card.Title() {
				About
			}
		}
		@card.Content() {
			<p class="text-sm sm:text-base text-muted-foreground mb-4">
				Passionate full-stack developer with 8+ years of experience building scalable web applications. 
				I love working with modern technologies and contributing to open-source projects. Currently focused 
				on cloud-native architectures and developer tooling.
			</p>
			<div class="space-y-3">
				<div class="flex items-start gap-2">
					@icon.Briefcase(icon.Props{Size: 16, Class: "text-muted-foreground flex-shrink-0"})
					<span class="text-sm">Senior Developer at <a href="#" class="font-medium hover:underline">Acme Inc.</a></span>
				</div>
				<div class="flex items-start gap-2">
					@icon.GraduationCap(icon.Props{Size: 16, Class: "text-muted-foreground flex-shrink-0"})
					<span class="text-sm">Computer Science, Stanford University</span>
				</div>
				<div class="flex items-start gap-2">
					@icon.Heart(icon.Props{Size: 16, Class: "text-muted-foreground flex-shrink-0"})
					<span class="text-sm">Go, Templ, HTMX, Kubernetes</span>
				</div>
			</div>
			<div class="flex gap-3 mt-4 pt-4 border-t flex-wrap">
				<a href="#" class="text-muted-foreground hover:text-foreground">
					@icon.Github(icon.Props{Size: 20})
				</a>
				<a href="#" class="text-muted-foreground hover:text-foreground">
					@icon.Twitter(icon.Props{Size: 20})
				</a>
				<a href="#" class="text-muted-foreground hover:text-foreground">
					@icon.Linkedin(icon.Props{Size: 20})
				</a>
				<a href="#" class="text-muted-foreground hover:text-foreground">
					@icon.Globe(icon.Props{Size: 20})
				</a>
			</div>
		}
	}
}

templ ProfileView001Activity() {
	@card.Card(card.Props{Class: "mt-4 sm:mt-6"}) {
		@card.Header() {
			@card.Title() {
				Recent Activity
			}
		}
		@card.Content() {
			<div class="space-y-4">
				@ProfileView001ActivityItem(
					icon.GitBranch(icon.Props{Size: 16}),
					"Pushed to main in templui/core",
					"2 hours ago",
					"feat: add dark mode support for all components",
				)
				@ProfileView001ActivityItem(
					icon.Star(icon.Props{Size: 16}),
					"Starred templui/templui-pro",
					"5 hours ago",
					"",
				)
				@ProfileView001ActivityItem(
					icon.MessageSquare(icon.Props{Size: 16}),
					"Commented on issue #42",
					"1 day ago",
					"Great work on this! Just a small suggestion about the API design...",
				)
				@ProfileView001ActivityItem(
					icon.GitPullRequest(icon.Props{Size: 16}),
					"Opened pull request in gofiber/fiber",
					"3 days ago",
					"fix: improve error handling in middleware",
				)
			</div>
			<div class="mt-4 pt-4 border-t">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Class:   "w-full",
				}) {
					View all activity
					@icon.ArrowRight(icon.Props{Size: 16, Class: "ml-2"})
				}
			</div>
		}
	}
}

templ ProfileView001ActivityItem(iconComponent templ.Component, action, time, detail string) {
	<div class="flex gap-3">
		<div class="flex-shrink-0 w-7 h-7 sm:w-8 sm:h-8 bg-muted rounded-full flex items-center justify-center">
			{ children... }
		</div>
		<div class="flex-1 min-w-0">
			<p class="text-sm">
				<span class="font-medium">{ action }</span>
				<span class="text-muted-foreground sm:ml-2 text-xs block sm:inline">{ time }</span>
			</p>
			if detail != "" {
				<p class="text-sm text-muted-foreground mt-1 line-clamp-2">{ detail }</p>
			}
		</div>
	</div>
}
```

## Search

### search_001.templ

**Path:** `search/search_001.templ`

```templ
package search

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Search001() {
	<section class="w-full max-w-2xl mx-auto p-6">
		@Search001SearchForm()
	</section>
}

templ Search001SearchForm() {
	<form class="flex flex-col sm:flex-row gap-2">
		<div class="flex-1">
			@input.Input(input.Props{
				Type:        input.TypeSearch,
				Name:        "q",
				Placeholder: "Search products, articles, or help topics...",
			})
		</div>
		@button.Button() {
			<span class="flex items-center gap-2">
				@icon.Search(icon.Props{Size: 18})
				<span class="hidden sm:inline">Search</span>
			</span>
		}
	</form>
}
```

### search_002.templ

**Path:** `search/search_002.templ`

```templ
package search

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

templ Search002() {
	<section class="w-full max-w-4xl mx-auto p-6">
		@Search002SearchForm()
	</section>
}

templ Search002SearchForm() {
	<div class="space-y-4">
		<div class="flex flex-col md:flex-row gap-2">
			<div class="flex-1">
				@input.Input(input.Props{
					Type:        input.TypeSearch,
					Name:        "q",
					Placeholder: "What are you looking for?",
				})
			</div>
			<div class="w-full md:w-48">
				@selectbox.SelectBox() {
					@selectbox.Trigger(selectbox.TriggerProps{
						Name: "category",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "All Categories",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: ""}) {
							All Categories
						}
						@selectbox.Item(selectbox.ItemProps{Value: "products"}) {
							Products
						}
						@selectbox.Item(selectbox.ItemProps{Value: "articles"}) {
							Articles
						}
						@selectbox.Item(selectbox.ItemProps{Value: "help"}) {
							Help & Support
						}
						@selectbox.Item(selectbox.ItemProps{Value: "news"}) {
							News
						}
					}
				}
			</div>
			@button.Button() {
				<span class="flex items-center gap-2">
					@icon.Search()
					<span class="hidden md:inline">Search</span>
				</span>
			}
		</div>
		@Search002PopularSearches()
	</div>
}

templ Search002PopularSearches() {
	<div class="flex flex-wrap gap-2 pt-2">
		<span class="text-sm text-muted-foreground">Popular:</span>
		<button name="q" value="documentation" class="text-sm text-primary hover:underline">
			documentation
		</button>
		<button name="q" value="components" class="text-sm text-primary hover:underline">
			components
		</button>
		<button name="q" value="pricing" class="text-sm text-primary hover:underline">
			pricing
		</button>
		<button name="q" value="api" class="text-sm text-primary hover:underline">
			api
		</button>
	</div>
}
```

### search_003.templ

**Path:** `search/search_003.templ`

```templ
package search

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Search003() {
	<section class="w-full max-w-6xl mx-auto p-6">
		<div class="flex flex-col lg:flex-row gap-6">
			@Search003FilterSidebar()
			@Search003SearchMain()
		</div>
	</section>
}

templ Search003FilterSidebar() {
	<aside class="w-full lg:w-64 space-y-6">
		<h3 class="font-semibold text-lg">Filters</h3>
		@Search003CategoryFilter()
		@separator.Separator()
		@Search003PriceFilter()
		@separator.Separator()
		@Search003RatingFilter()
		<div class="flex gap-2">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Size:    button.SizeSm,
				Class:   "flex-1",
				Type:    "button",
			}) {
				Clear Filters
			}
		</div>
	</aside>
}

templ Search003SearchMain() {
	<main class="flex-1">
		<form class="space-y-4">
			<div class="flex gap-2">
				<div class="flex-1">
					@input.Input(input.Props{
						Type:        input.TypeSearch,
						Name:        "q",
						Placeholder: "Search products...",
					})
				</div>
				@button.Button() {
					<span class="flex items-center gap-2">
						@icon.Search()
						Search
					</span>
				}
			</div>
			<div class="flex items-center justify-between text-sm text-muted-foreground">
				<span>Showing results for "wireless headphones"</span>
				<div class="w-48">
					@selectbox.SelectBox() {
						@selectbox.Trigger(selectbox.TriggerProps{
							Name: "sort",
						}) {
							@selectbox.Value(selectbox.ValueProps{
								Placeholder: "Sort by relevance",
							})
						}
						@selectbox.Content() {
							@selectbox.Item(selectbox.ItemProps{Value: "relevance", Selected: true}) {
								Sort by relevance
							}
							@selectbox.Item(selectbox.ItemProps{Value: "price_asc"}) {
								Price: Low to High
							}
							@selectbox.Item(selectbox.ItemProps{Value: "price_desc"}) {
								Price: High to Low
							}
							@selectbox.Item(selectbox.ItemProps{Value: "newest"}) {
								Newest First
							}
							@selectbox.Item(selectbox.ItemProps{Value: "rating"}) {
								Highest Rated
							}
						}
					}
				</div>
			</div>
		</form>
	</main>
}

templ Search003CategoryFilter() {
	<div class="space-y-3">
		<h4 class="font-medium">Category</h4>
		<div class="space-y-2">
			@Search003FilterCheckbox("electronics", "Electronics", "148")
			@Search003FilterCheckbox("accessories", "Accessories", "89")
			@Search003FilterCheckbox("audio", "Audio", "56")
			@Search003FilterCheckbox("computing", "Computing", "234")
		</div>
	</div>
}

templ Search003PriceFilter() {
	<div class="space-y-3">
		<h4 class="font-medium">Price Range</h4>
		<div class="space-y-2">
			@Search003FilterCheckbox("price_0_25", "Under $25", "67")
			@Search003FilterCheckbox("price_25_50", "$25 - $50", "143")
			@Search003FilterCheckbox("price_50_100", "$50 - $100", "234")
			@Search003FilterCheckbox("price_100_plus", "$100+", "89")
		</div>
	</div>
}

templ Search003RatingFilter() {
	<div class="space-y-3">
		<h4 class="font-medium">Customer Rating</h4>
		<div class="space-y-2">
			@Search003FilterCheckbox("rating_4_plus", "4 Stars & Up", "312")
			@Search003FilterCheckbox("rating_3_plus", "3 Stars & Up", "245")
			@Search003FilterCheckbox("rating_2_plus", "2 Stars & Up", "156")
		</div>
	</div>
}

templ Search003FilterCheckbox(value, labelText, count string) {
	<div class="flex items-center space-x-2">
		@checkbox.Checkbox(checkbox.Props{
			Name:  "filters",
			Value: value,
			ID:    value,
		})
		@label.Label(label.Props{
			For:   value,
			Class: "flex-1 text-sm cursor-pointer",
		}) {
			{ labelText }
		}
		<span class="text-xs text-muted-foreground">({ count })</span>
	</div>
}
```

### search_004.templ

**Path:** `search/search_004.templ`

```templ
package search

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
)

templ Search004() {
	<section class="w-full bg-background border-b">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			@Search004Header()
		</div>
	</section>
}

templ Search004Header() {
	<header class="flex items-center justify-between py-4">
		@Search004Logo()
		@Search004SearchBar()
		@Search004Actions()
	</header>
}

templ Search004Logo() {
	<div class="flex items-center">
		<a href="/" class="flex items-center space-x-2">
			<div class="w-8 h-8 bg-primary rounded-md flex items-center justify-center">
				<span class="text-primary-foreground font-bold text-sm">L</span>
			</div>
			<span class="font-semibold text-lg hidden sm:block">Logo</span>
		</a>
	</div>
}

templ Search004SearchBar() {
	<div class="flex-1 max-w-xl mx-4">
		<form class="relative">
			<div class="relative">
				@input.Input(input.Props{
					Type:        input.TypeSearch,
					Name:        "q",
					Placeholder: "Search...",
					Class:       "pl-10 pr-4 h-10",
				})
				<div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
					@icon.Search(icon.Props{
						Size:  16,
						Class: "text-muted-foreground",
					})
				</div>
			</div>
		</form>
	</div>
}

templ Search004Actions() {
	<div class="flex items-center space-x-4">
		@Search004QuickActions()
		@Search004UserMenu()
	</div>
}

templ Search004QuickActions() {
	<div class="hidden md:flex items-center space-x-2">
		<a href="/help" class="text-sm text-muted-foreground hover:text-foreground transition-colors">
			Help
		</a>
		<span class="text-muted-foreground">|</span>
		<a href="/contact" class="text-sm text-muted-foreground hover:text-foreground transition-colors">
			Contact
		</a>
	</div>
}

templ Search004UserMenu() {
	<div class="flex items-center space-x-2">
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeIcon,
		}) {
			@icon.Bell(icon.Props{Size: 18})
		}
		@button.Button(button.Props{
			Variant: button.VariantGhost,
			Size:    button.SizeIcon,
		}) {
			@icon.User(icon.Props{Size: 18})
		}
	</div>
}
```

### search_005.templ

**Path:** `search/search_005.templ`

```templ
package search

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/datepicker"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/selectbox"
)

templ Search005() {
	<section class="w-full max-w-4xl mx-auto p-6">
		@Search005AdvancedSearch()
	</section>
}

templ Search005AdvancedSearch() {
	@card.Card(card.Props{
		Class: "p-6",
	}) {
		@card.Header() {
			<div class="flex items-center gap-2">
				@icon.Search(icon.Props{Size: 20})
				<h2 class="text-xl font-semibold">Advanced Search</h2>
			</div>
			<p class="text-sm text-muted-foreground mt-1">
				Use advanced filters to find exactly what you're looking for
			</p>
		}
		@card.Content() {
			<form class="space-y-6">
				@Search005BasicFields()
				@Search005CategoryFilters()
				@Search005DateRange()
				@Search005ContentFilters()
				@Search005FormActions()
			</form>
		}
	}
}

templ Search005BasicFields() {
	<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
		<div class="space-y-2">
			@label.Label(label.Props{For: "all_words"}) {
				All these words
			}
			@input.Input(input.Props{
				ID:          "all_words",
				Name:        "all_words",
				Type:        input.TypeText,
				Placeholder: "e.g., web development tutorial",
			})
		</div>
		<div class="space-y-2">
			@label.Label(label.Props{For: "exact_phrase"}) {
				This exact phrase
			}
			@input.Input(input.Props{
				ID:          "exact_phrase",
				Name:        "exact_phrase",
				Type:        input.TypeText,
				Placeholder: "e.g., \"templ components\"",
			})
		</div>
		<div class="space-y-2">
			@label.Label(label.Props{For: "any_words"}) {
				Any of these words
			}
			@input.Input(input.Props{
				ID:          "any_words",
				Name:        "any_words",
				Type:        input.TypeText,
				Placeholder: "e.g., go OR templ",
			})
		</div>
		<div class="space-y-2">
			@label.Label(label.Props{For: "exclude_words"}) {
				None of these words
			}
			@input.Input(input.Props{
				ID:          "exclude_words",
				Name:        "exclude_words",
				Type:        input.TypeText,
				Placeholder: "e.g., deprecated legacy",
			})
		</div>
	</div>
}

templ Search005CategoryFilters() {
	<div class="space-y-4">
		<h3 class="font-medium">Search in</h3>
		<div class="grid grid-cols-1 md:grid-cols-3 gap-4">
			<div class="space-y-2">
				@label.Label(label.Props{For: "content_type"}) {
					Content Type
				}
				@selectbox.SelectBox(selectbox.Props{
					ID: "content_type",
				}) {
					@selectbox.Trigger(selectbox.TriggerProps{
						Name: "content_type",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "All types",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: ""}) {
							All types
						}
						@selectbox.Item(selectbox.ItemProps{Value: "articles"}) {
							Articles
						}
						@selectbox.Item(selectbox.ItemProps{Value: "tutorials"}) {
							Tutorials
						}
						@selectbox.Item(selectbox.ItemProps{Value: "documentation"}) {
							Documentation
						}
						@selectbox.Item(selectbox.ItemProps{Value: "videos"}) {
							Videos
						}
					}
				}
			</div>
			<div class="space-y-2">
				@label.Label(label.Props{For: "language"}) {
					Language
				}
				@selectbox.SelectBox(selectbox.Props{
					ID: "language",
				}) {
					@selectbox.Trigger(selectbox.TriggerProps{
						Name: "language",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Any language",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: ""}) {
							Any language
						}
						@selectbox.Item(selectbox.ItemProps{Value: "en"}) {
							English
						}
						@selectbox.Item(selectbox.ItemProps{Value: "de"}) {
							German
						}
						@selectbox.Item(selectbox.ItemProps{Value: "fr"}) {
							French
						}
						@selectbox.Item(selectbox.ItemProps{Value: "es"}) {
							Spanish
						}
					}
				}
			</div>
			<div class="space-y-2">
				@label.Label(label.Props{For: "author"}) {
					Author
				}
				@input.Input(input.Props{
					ID:          "author",
					Name:        "author",
					Type:        input.TypeText,
					Placeholder: "Author name",
				})
			</div>
		</div>
	</div>
}

templ Search005DateRange() {
	<div class="space-y-4">
		<h3 class="font-medium">Date Range</h3>
		<div class="grid grid-cols-1 md:grid-cols-3 gap-4">
			<div class="space-y-2">
				@label.Label(label.Props{For: "date_from"}) {
					From
				}
				@datepicker.DatePicker(datepicker.Props{
					ID:          "date_from",
					Name:        "date_from",
					Placeholder: "Select start date",
				})
			</div>
			<div class="space-y-2">
				@label.Label(label.Props{For: "date_to"}) {
					To
				}
				@datepicker.DatePicker(datepicker.Props{
					ID:          "date_to",
					Name:        "date_to",
					Placeholder: "Select end date",
				})
			</div>
			<div class="space-y-2">
				@label.Label(label.Props{For: "date_preset"}) {
					Quick Select
				}
				@selectbox.SelectBox(selectbox.Props{
					ID: "date_preset",
				}) {
					@selectbox.Trigger(selectbox.TriggerProps{
						Name: "date_preset",
					}) {
						@selectbox.Value(selectbox.ValueProps{
							Placeholder: "Choose period",
						})
					}
					@selectbox.Content() {
						@selectbox.Item(selectbox.ItemProps{Value: ""}) {
							Custom range
						}
						@selectbox.Item(selectbox.ItemProps{Value: "last_week"}) {
							Last week
						}
						@selectbox.Item(selectbox.ItemProps{Value: "last_month"}) {
							Last month
						}
						@selectbox.Item(selectbox.ItemProps{Value: "last_year"}) {
							Last year
						}
					}
				}
			</div>
		</div>
	</div>
}

templ Search005ContentFilters() {
	<div class="space-y-4">
		<h3 class="font-medium">Additional Filters</h3>
		<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
			<div class="space-y-3">
				<h4 class="text-sm font-medium">Content Features</h4>
				<div class="space-y-2">
					@Search005FilterCheckbox("has_images", "Has images")
					@Search005FilterCheckbox("has_code", "Contains code examples")
					@Search005FilterCheckbox("has_downloads", "Has downloadable files")
					@Search005FilterCheckbox("is_free", "Free content only")
				</div>
			</div>
			<div class="space-y-3">
				<h4 class="text-sm font-medium">Difficulty Level</h4>
				<div class="space-y-2">
					@Search005FilterCheckbox("beginner", "Beginner")
					@Search005FilterCheckbox("intermediate", "Intermediate")
					@Search005FilterCheckbox("advanced", "Advanced")
					@Search005FilterCheckbox("expert", "Expert")
				</div>
			</div>
		</div>
	</div>
}

templ Search005FilterCheckbox(value, labelText string) {
	<div class="flex items-center space-x-2">
		@checkbox.Checkbox(checkbox.Props{
			Name:  "filters",
			Value: value,
			ID:    value,
		})
		@label.Label(label.Props{
			For:   value,
			Class: "text-sm cursor-pointer",
		}) {
			{ labelText }
		}
	</div>
}

templ Search005FormActions() {
	<div class="flex flex-col sm:flex-row gap-3 pt-4 border-t">
		@button.Button(button.Props{
			Class: "flex-1 sm:flex-none",
		}) {
			<span class="flex items-center gap-2">
				@icon.Search(icon.Props{Size: 18})
				Search
			</span>
		}
		@button.Button(button.Props{
			Type:    "button",
			Variant: button.VariantOutline,
			Class:   "flex-1 sm:flex-none",
		}) {
			Clear All
		}
		@button.Button(button.Props{
			Type:    "button",
			Variant: button.VariantGhost,
			Class:   "flex-1 sm:flex-none",
		}) {
			Save Search
		}
	</div>
}
```

## Sidebar

### sidebar_001.templ

**Path:** `sidebar/sidebar_001.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/breadcrumb"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar001() {
	@sidebar.Layout() {
		@sidebar.Sidebar() {
			@sidebar.Header() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Href: "#",
						}) {
							@icon.Layers(icon.Props{Class: "size-4"})
							<span class="font-semibold">Acme Inc</span>
						}
					}
				}
			}
			@sidebar.Content() {
				@sidebar.Group() {
					@sidebar.GroupLabel() {
						Main
					}
					@sidebar.Menu() {
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href:     "#",
								IsActive: true,
							}) {
								@icon.LayoutDashboard(icon.Props{Class: "size-4"})
								<span>Dashboard</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.FolderOpen(icon.Props{Class: "size-4"})
								<span>Projects</span>
								@sidebar.MenuBadge() {
									12
								}
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Users(icon.Props{Class: "size-4"})
								<span>Team</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Calendar(icon.Props{Class: "size-4"})
								<span>Calendar</span>
								@sidebar.MenuBadge() {
									3
								}
							}
						}
					}
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@sidebar.GroupLabel() {
						Tools
					}
					@sidebar.Menu() {
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.ChartBar(icon.Props{Class: "size-4"})
								<span>Analytics</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Settings(icon.Props{Class: "size-4"})
								<span>Settings</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.CircleQuestionMark(icon.Props{Class: "size-4"})
								<span>Help</span>
							}
						}
					}
				}
			}
			@sidebar.Footer() {
				@card.Card(card.Props{
					Class: "bg-muted/50",
				}) {
					@card.Content(card.ContentProps{
						Class: "p-3",
					}) {
						<p class="text-sm font-medium mb-1">Upgrade to Pro</p>
						<p class="text-xs text-muted-foreground mb-3">
							Unlock advanced features and analytics.
						</p>
						@button.Button(button.Props{
							FullWidth: true,
						}) {
							Upgrade
						}
					}
				}
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<!-- Navbar -->
				<header class="flex items-center h-14 px-4 border-b border-border bg-background">
					@sidebar.Trigger()
					<!-- Separator -->
					<div class="h-6 w-px bg-border mx-3"></div>
					<!-- Breadcrumbs -->
					@breadcrumb.Breadcrumb() {
						@breadcrumb.List() {
							@breadcrumb.Item() {
								@breadcrumb.Link(breadcrumb.LinkProps{Href: "#"}) {
									Home
								}
							}
							@breadcrumb.Item() {
								@breadcrumb.Separator()
							}
							@breadcrumb.Item() {
								@breadcrumb.Link(breadcrumb.LinkProps{Href: "#"}) {
									Dashboard
								}
							}
							@breadcrumb.Item() {
								@breadcrumb.Separator()
							}
							@breadcrumb.Item() {
								@breadcrumb.Page() {
									Overview
								}
							}
						}
					}
				</header>
				<!-- Main Content -->
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}
```

### sidebar_002.templ

**Path:** `sidebar/sidebar_002.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar002() {
	@sidebar.Layout() {
		@sidebar.Sidebar() {
			@sidebar.Header() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Href: "#",
						}) {
							@icon.Layers(icon.Props{Class: "size-4"})
							<span class="font-semibold">Acme Inc</span>
						}
					}
				}
			}
			@sidebar.Content() {
				@sidebar.Group() {
					@sidebar.Menu() {
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href:     "#",
								IsActive: true,
							}) {
								@icon.LayoutDashboard(icon.Props{Class: "size-4"})
								<span>Overview</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.ChartBar(icon.Props{Class: "size-4"})
								<span>Analytics</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Users(icon.Props{Class: "size-4"})
								<span>Customers</span>
								@sidebar.MenuBadge() {
									1,234
								}
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.ShoppingCart(icon.Props{Class: "size-4"})
								<span>Orders</span>
								@sidebar.MenuBadge() {
									23
								}
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Package(icon.Props{Class: "size-4"})
								<span>Products</span>
								@sidebar.MenuBadge() {
									56
								}
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.CreditCard(icon.Props{Class: "size-4"})
								<span>Billing</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Settings(icon.Props{Class: "size-4"})
								<span>Settings</span>
							}
						}
					}
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@sidebar.GroupLabel() {
						Quick Actions
					}
					@sidebar.Menu() {
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.Plus(icon.Props{Class: "size-4"})
								<span>New Customer</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.FileText(icon.Props{Class: "size-4"})
								<span>Create Invoice</span>
							}
						}
						@sidebar.MenuItem() {
							@sidebar.MenuButton(sidebar.MenuButtonProps{
								Href: "#",
							}) {
								@icon.MessageSquare(icon.Props{Class: "size-4"})
								<span>Support</span>
							}
						}
					}
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@card.Card(card.Props{
						Class: "bg-muted/50",
					}) {
						@card.Content(card.ContentProps{
							Class: "p-3 space-y-2",
						}) {
							<div class="flex items-center justify-between">
								<span class="text-sm font-medium">Storage Used</span>
								<span class="text-sm text-muted-foreground">68%</span>
							</div>
							@progress.Progress(progress.Props{
								Value: 68,
							})
							<p class="text-xs text-muted-foreground">
								6.8 GB of 10 GB used
							</p>
						}
					}
				}
			}
			@sidebar.Footer() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@dropdown.Dropdown() {
							@dropdown.Trigger() {
								@sidebar.MenuButton(sidebar.MenuButtonProps{
									Size: sidebar.MenuButtonSizeLg,
								}) {
									@avatar.Avatar(avatar.Props{Class: "size-8"}) {
										@avatar.Fallback() {
											SJ
										}
									}
									<div class="flex flex-col flex-1 text-left">
										<span class="text-sm font-medium">Sarah Johnson</span>
										<span class="text-xs text-muted-foreground">sarah@acme.com</span>
									</div>
									@icon.ChevronsUpDown(icon.Props{Class: "ml-auto size-4"})
								}
							}
							@dropdown.Content(dropdown.ContentProps{
								Class:     "w-56",
								Placement: dropdown.PlacementTopEnd,
							}) {
								@dropdown.Label() {
									Sarah Johnson
								}
								@dropdown.Separator()
								@dropdown.Item() {
									<span class="flex items-center">
										@icon.User(icon.Props{Size: 16, Class: "mr-2"})
										Profile
									</span>
								}
								@dropdown.Item() {
									<span class="flex items-center">
										@icon.Settings(icon.Props{Size: 16, Class: "mr-2"})
										Settings
									</span>
								}
								@dropdown.Separator()
								@dropdown.Item() {
									<span class="flex items-center">
										@icon.LogOut(icon.Props{Size: 16, Class: "mr-2"})
										Sign out
									</span>
								}
							}
						}
					}
				}
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<div class="flex h-14 items-center gap-4 px-6">
					@sidebar.Trigger()
					<span class="text-sm text-muted-foreground">Admin Dashboard</span>
				</div>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}
```

### sidebar_003.templ

**Path:** `sidebar/sidebar_003.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
	"github.com/templui/templui-pro/internal/ui/components/slider"
)

templ Sidebar003() {
	@sidebar.Layout() {
		@sidebar.Sidebar() {
			@sidebar.Header() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Size: sidebar.MenuButtonSizeLg,
							Href: "#",
						}) {
							@icon.ShoppingBag(icon.Props{Class: "size-5 text-primary"})
							<div class="flex flex-col">
								<span class="text-sm font-bold">Electronics Store</span>
								<span class="text-xs text-muted-foreground">Filter Products</span>
							</div>
						}
					}
				}
				<!-- Search -->
				<div class="relative mt-2">
					@input.Input(input.Props{
						Type:        "search",
						Placeholder: "Search products...",
						Class:       "pl-10",
					})
					<div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
						@icon.Search(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
				</div>
			}
			@sidebar.Content() {
				@sidebar.Group() {
					@Sidebar003CategoryFilter()
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@Sidebar003PriceFilter()
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@Sidebar003BrandFilter()
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@Sidebar003RatingFilter()
				}
				@sidebar.Separator()
				@sidebar.Group() {
					@Sidebar003FeatureFilter()
				}
				@sidebar.Separator()
				@sidebar.Group() {
					<div class="space-y-3">
						@button.Button(button.Props{
							FullWidth: true,
						}) {
							Apply Filters
						}
						@button.Button(button.Props{
							Variant:   button.VariantGhost,
							FullWidth: true,
						}) {
							Clear All
						}
					</div>
				}
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<div class="flex h-14 items-center gap-4 px-6">
					@sidebar.Trigger()
					<span class="text-sm text-muted-foreground">Product Filters</span>
				</div>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}

templ Sidebar003CategoryFilter() {
	<div class="space-y-3">
		<h3 class="text-sm font-semibold">Categories</h3>
		<div class="space-y-2">
			@Sidebar003FilterOption("Electronics", "125", true)
			@Sidebar003FilterOption("Computers", "89", false)
			@Sidebar003FilterOption("Audio", "34", false)
			@Sidebar003FilterOption("Accessories", "67", false)
			@Sidebar003FilterOption("Gaming", "23", false)
		</div>
	</div>
}

templ Sidebar003PriceFilter() {
	<div class="space-y-3">
		<h3 class="text-sm font-semibold">Price Range</h3>
		<div class="flex flex-col items-center gap-4">
			@slider.Slider() {
				@slider.Input(slider.InputProps{
					Min:   0,
					Max:   1000,
					Step:  10,
					Value: 50,
					Name:  "price-min",
				})
			}
			@slider.Slider() {
				@slider.Input(slider.InputProps{
					Min:   0,
					Max:   1000,
					Step:  10,
					Value: 500,
					Name:  "price-max",
				})
			}
		</div>
		<div class="flex items-center justify-between text-sm text-muted-foreground">
			<span>$0</span>
			<span>$1000</span>
		</div>
		<div class="flex items-center space-x-3">
			@input.Input(input.Props{
				Type:        "number",
				Placeholder: "Min",
				Class:       "flex-1",
			})
			<span class="text-muted-foreground">to</span>
			@input.Input(input.Props{
				Type:        "number",
				Placeholder: "Max",
				Class:       "flex-1",
			})
		</div>
	</div>
}

templ Sidebar003BrandFilter() {
	<div class="space-y-3">
		<h3 class="text-sm font-semibold">Brands</h3>
		<div class="space-y-2">
			@Sidebar003FilterOption("Apple", "45", false)
			@Sidebar003FilterOption("Samsung", "38", true)
			@Sidebar003FilterOption("Sony", "29", false)
			@Sidebar003FilterOption("LG", "22", false)
			@Sidebar003FilterOption("Dell", "18", false)
		</div>
	</div>
}

templ Sidebar003RatingFilter() {
	<div class="space-y-3">
		<h3 class="text-sm font-semibold">Customer Rating</h3>
		<div class="space-y-2">
			@Sidebar003RatingOption("★★★★★", "4.5+", false)
			@Sidebar003RatingOption("★★★★☆", "4.0+", true)
			@Sidebar003RatingOption("★★★☆☆", "3.0+", false)
			@Sidebar003RatingOption("★★☆☆☆", "2.0+", false)
		</div>
	</div>
}

templ Sidebar003FeatureFilter() {
	<div class="space-y-3">
		<h3 class="text-sm font-semibold">Features</h3>
		<div class="space-y-2">
			@Sidebar003FilterOption("Free Shipping", "", false)
			@Sidebar003FilterOption("On Sale", "", true)
			@Sidebar003FilterOption("In Stock", "", false)
			@Sidebar003FilterOption("New Arrivals", "", false)
		</div>
	</div>
}

templ Sidebar003FilterOption(id, count string, checked bool) {
	<div class="flex items-center space-x-3">
		@checkbox.Checkbox(checkbox.Props{
			ID:      id,
			Checked: checked,
		})
		@label.Label(label.Props{
			For:   id,
			Class: "flex-1 text-sm flex items-center justify-between",
		}) {
			<span>{ id }</span>
			if count != "" {
				<span class="text-muted-foreground">({ count })</span>
			}
		}
	</div>
}

templ Sidebar003RatingOption(stars, id string, checked bool) {
	<div class="flex items-center space-x-3">
		@checkbox.Checkbox(checkbox.Props{
			ID:      id,
			Checked: checked,
		})
		@label.Label(label.Props{
			For:   id,
			Class: "flex-1 text-sm flex items-center gap-2",
		}) {
			<span class="text-primary">{ stars }</span>
			<span>{ id }</span>
		}
	</div>
}
```

### sidebar_004.templ

**Path:** `sidebar/sidebar_004.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/collapsible"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/input"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar004() {
	@sidebar.Layout() {
		@sidebar.Sidebar() {
			@sidebar.Header() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Href: "#",
						}) {
							@icon.BookOpen(icon.Props{Class: "size-4"})
							<span class="font-semibold">Documentation</span>
							<span class="ml-auto text-xs bg-primary/10 text-primary px-1.5 py-0.5 rounded">v2.0</span>
						}
					}
				}
				<!-- Search -->
				<div class="relative mt-2">
					@input.Input(input.Props{
						Type:        "search",
						Placeholder: "Search docs...",
						Class:       "pl-10 pr-8",
					})
					<div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
						@icon.Search(icon.Props{Size: 16, Class: "text-muted-foreground"})
					</div>
					<div class="absolute inset-y-0 right-0 flex items-center pr-3">
						<kbd class="hidden sm:inline-flex h-5 select-none items-center gap-1 rounded border bg-muted px-1.5 font-mono text-xs font-medium text-muted-foreground">
							⌘K
						</kbd>
					</div>
				</div>
			}
			@sidebar.Content() {
				@sidebar.Group() {
					@Sidebar004NavSection("Getting Started", []Sidebar004NavItem{
						{Label: "Introduction", Active: false, Icon: "BookOpen"},
						{Label: "Installation", Active: true, Icon: "Download"},
						{Label: "Quick Start", Active: false, Icon: "Zap"},
						{Label: "Configuration", Active: false, Icon: "Settings"},
					}, true)
					@Sidebar004NavSection("API Reference", []Sidebar004NavItem{
						{Label: "Authentication", Active: false, Icon: "Key"},
						{Label: "Endpoints", Active: false, Icon: "Globe"},
						{Label: "Webhooks", Active: false, Icon: "Webhook"},
						{Label: "Rate Limiting", Active: false, Icon: "Clock"},
					}, false)
					@Sidebar004NavSection("Guides", []Sidebar004NavItem{
						{Label: "Building Apps", Active: false, Icon: "Code"},
						{Label: "Best Practices", Active: false, Icon: "Star"},
						{Label: "Deployment", Active: false, Icon: "Upload"},
						{Label: "Troubleshooting", Active: false, Icon: "AlertCircle"},
					}, false)
					@Sidebar004NavSection("Examples", []Sidebar004NavItem{
						{Label: "Templ", Active: false, Icon: "Code2"},
						{Label: "HTMX", Active: false, Icon: "Code2"},
						{Label: "Fiber", Active: false, Icon: "Code2"},
						{Label: "Echo", Active: false, Icon: "Code2"},
					}, false)
					@Sidebar004NavSection("Resources", []Sidebar004NavItem{
						{Label: "Migration Guide", Active: false, Icon: "ArrowRight"},
						{Label: "FAQ", Active: false, Icon: "HelpCircle"},
						{Label: "Support", Active: false, Icon: "MessageCircle"},
					}, false)
				}
			}
			@sidebar.Footer() {
				@card.Card(card.Props{
					Class: "bg-muted",
				}) {
					@card.Content(card.ContentProps{
						Class: "space-y-3 p-3",
					}) {
						<div class="flex items-center space-x-2">
							@icon.MessageCircle(icon.Props{Size: 16})
							<span class="text-sm font-medium">Need Help?</span>
						</div>
						<p class="text-xs text-muted-foreground">
							Join our community or contact support for assistance.
						</p>
						<div class="space-y-2">
							@button.Button(button.Props{
								Variant:   button.VariantOutline,
								FullWidth: true,
							}) {
								Community
							}
							@button.Button(button.Props{
								FullWidth: true,
							}) {
								Contact Support
							}
						</div>
					}
				}
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<div class="flex h-14 items-center gap-4 px-6">
					@sidebar.Trigger()
					<span class="text-sm text-muted-foreground">Documentation</span>
				</div>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}

type Sidebar004NavItem struct {
	Label  string
	Active bool
	Icon   string
}

templ Sidebar004NavSection(title string, items []Sidebar004NavItem, expanded bool) {
	@collapsible.Collapsible(collapsible.Props{
		Open:  expanded,
		Class: "group/collapsible w-full",
	}) {
		@collapsible.Trigger() {
			@sidebar.MenuButton() {
				<span class="text-sm font-medium">{ title }</span>
				@icon.ChevronRight(icon.Props{
					Class: "ml-auto size-4 transition-transform group-data-[tui-collapsible-state=open]/collapsible:rotate-90",
				})
			}
		}
		@collapsible.Content() {
			@sidebar.MenuSub() {
				for _, item := range items {
					@sidebar.MenuSubItem() {
						@sidebar.MenuSubButton(sidebar.MenuSubButtonProps{
							Href:     "#",
							IsActive: item.Active,
						}) {
							@Sidebar004NavIcon(item.Icon, item.Active)
							<span>{ item.Label }</span>
						}
					}
				}
			}
		}
	}
}

templ Sidebar004NavIcon(iconName string, active bool) {
	<div class="h-4 w-4">
		switch iconName {
			case "BookOpen":
				@icon.BookOpen(icon.Props{Size: 16})
			case "Download":
				@icon.Download(icon.Props{Size: 16})
			case "Zap":
				@icon.Zap(icon.Props{Size: 16})
			case "Settings":
				@icon.Settings(icon.Props{Size: 16})
			case "Key":
				@icon.Key(icon.Props{Size: 16})
			case "Globe":
				@icon.Globe(icon.Props{Size: 16})
			case "Webhook":
				@icon.Webhook(icon.Props{Size: 16})
			case "Clock":
				@icon.Clock(icon.Props{Size: 16})
			case "Code":
				@icon.Code(icon.Props{Size: 16})
			case "Star":
				@icon.Star(icon.Props{Size: 16})
			case "Upload":
				@icon.Upload(icon.Props{Size: 16})
			case "AlertCircle":
				@icon.CircleAlert(icon.Props{Size: 16})
			case "Code2":
				@icon.Code(icon.Props{Size: 16})
			case "GitCommit":
				@icon.GitBranch(icon.Props{Size: 16})
			case "ArrowRight":
				@icon.ArrowRight(icon.Props{Size: 16})
			case "HelpCircle":
				@icon.CircleQuestionMark(icon.Props{Size: 16})
			case "MessageCircle":
				@icon.MessageCircle(icon.Props{Size: 16})
		}
	</div>
}
```

### sidebar_005.templ

**Path:** `sidebar/sidebar_005.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/calendar"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
	"github.com/templui/templui-pro/internal/utils"
)

templ Sidebar005() {
	@sidebar.Layout() {
		@sidebar.Sidebar(sidebar.Props{
			Variant: sidebar.VariantInset,
		}) {
			@sidebar.Header() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Size: sidebar.MenuButtonSizeLg,
							Href: "#",
						}) {
							<div class="flex items-center gap-2 w-full">
								<div class="size-8 bg-gradient-to-br from-violet-500 to-pink-500 rounded-full flex items-center justify-center">
									@icon.User(icon.Props{Class: "size-4 text-white"})
								</div>
								<div class="flex-1">
									<span class="font-semibold block">Personal Hub</span>
									<span class="text-xs text-muted-foreground">Organize your day</span>
								</div>
							</div>
						}
					}
				}
			}
			@sidebar.Content() {
				@sidebar.Group() {
					@sidebar.GroupLabel() {
						Calendar
					}
					@calendar.Calendar(calendar.Props{
						Class: "w-full bg-muted/50 rounded-lg p-2",
					})
				}
				@sidebar.Separator()
				@Sidebar005CategorySection("Personal", []Sidebar005Task{
					{Label: "Morning routine", Completed: true},
					{Label: "Read for 30 minutes", Completed: false},
					{Label: "Exercise", Completed: true},
					{Label: "Plan weekend trip", Completed: false},
				})
				@sidebar.Separator()
				@Sidebar005CategorySection("Work", []Sidebar005Task{
					{Label: "Team standup meeting", Completed: true},
					{Label: "Review pull requests", Completed: false},
					{Label: "Prepare presentation", Completed: false},
					{Label: "Update project docs", Completed: true},
				})
				@sidebar.Separator()
				@Sidebar005CategorySection("Family", []Sidebar005Task{
					{Label: "Call parents", Completed: false},
					{Label: "Plan dinner with friends", Completed: false},
					{Label: "Kids soccer practice", Completed: true},
					{Label: "Grocery shopping", Completed: false},
				})
			}
			@sidebar.Footer() {
				<div class="text-center">
					<p class="text-xs text-muted-foreground">Stay organized, stay focused</p>
					<div class="flex items-center justify-center space-x-1 mt-2">
						<div class="w-2 h-2 bg-primary rounded-full"></div>
						<span class="text-xs text-muted-foreground">All synced</span>
					</div>
				</div>
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<div class="flex h-14 items-center gap-4 px-6">
					@sidebar.Trigger()
					<span class="text-sm text-muted-foreground">Personal Hub</span>
				</div>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}

type Sidebar005Task struct {
	Label     string
	Completed bool
}

templ Sidebar005CategorySection(title string, tasks []Sidebar005Task) {
	@sidebar.Group() {
		<div class="flex items-center space-x-2 mb-2">
			@Sidebar005CategoryIcon(title)
			<h4 class="text-sm font-medium text-foreground">{ title }</h4>
		</div>
		<div class="space-y-2 ml-6">
			for _, task := range tasks {
				@Sidebar005TaskItem(task)
			}
		</div>
	}
}

templ Sidebar005TaskItem(task Sidebar005Task) {
	<div class="flex items-center space-x-3 group">
		@checkbox.Checkbox(checkbox.Props{
			ID:      task.Label,
			Checked: task.Completed,
			Class:   "data-[state=checked]:bg-primary data-[state=checked]:border-primary",
		})
		@label.Label(label.Props{
			For: task.Label,
			Class: utils.TwMerge(
				"text-sm transition-colors",
				utils.If(task.Completed, "text-muted-foreground line-through"),
				utils.If(!task.Completed, "text-foreground group-hover:text-primary"),
			),
		}) {
			{ task.Label }
		}
	</div>
}

templ Sidebar005CategoryIcon(category string) {
	<div class="h-4 w-4 text-muted-foreground">
		switch category {
			case "Personal":
				@icon.User(icon.Props{Size: 16})
			case "Work":
				@icon.Briefcase(icon.Props{Size: 16})
			case "Family":
				@icon.Heart(icon.Props{Size: 16})
		}
	</div>
}
```

### sidebar_006.templ

**Path:** `sidebar/sidebar_006.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/breadcrumb"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar006() {
	@sidebar.Layout() {
		@sidebar.Sidebar(sidebar.Props{
			Variant: sidebar.VariantFloating,
			Side:    sidebar.SideLeft,
		}) {
			@sidebar.Header() {
				@Sidebar006TeamSwitcher()
				@Sidebar006SearchBar()
			}
			@sidebar.Content() {
				@Sidebar006MainNav()
				@sidebar.Separator()
				@Sidebar006Favorites()
				@sidebar.Separator()
				@Sidebar006Workspaces()
			}
			@sidebar.Footer() {
				@Sidebar006SecondaryNav()
			}
		}
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<header class="flex items-center h-14 px-4 border-b border-border bg-background">
					@sidebar.Trigger()
					<div class="h-6 w-px bg-border mx-3"></div>
					@breadcrumb.Breadcrumb() {
						@breadcrumb.List() {
							@breadcrumb.Item() {
								@breadcrumb.Page() {
									Project Management & Task Tracking
								}
							}
						}
					}
				</header>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
	}
}

templ Sidebar006TeamSwitcher() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{
						Size: sidebar.MenuButtonSizeLg,
					}) {
						<div class="flex items-center gap-2 w-full">
							<div class="flex items-center justify-center size-8 rounded-lg bg-primary text-primary-foreground">
								@icon.Command(icon.Props{Class: "size-4"})
							</div>
							<div class="flex flex-1 flex-col gap-0.5 overflow-hidden">
								<span class="truncate font-semibold">Acme Inc</span>
								<span class="truncate text-xs text-muted-foreground">Enterprise</span>
							</div>
							@icon.ChevronsUpDown(icon.Props{Class: "ml-auto size-4"})
						</div>
					}
				}
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-64",
		}) {
			@dropdown.Label() {
				Teams
			}
			@dropdown.Separator()
			@dropdown.Item() {
				<div class="flex items-center gap-2">
					<div class="flex items-center justify-center size-6 rounded-sm bg-primary text-primary-foreground">
						@icon.Command(icon.Props{Class: "size-3"})
					</div>
					<div class="flex flex-col">
						<span class="text-sm">Acme Inc</span>
						<span class="text-xs text-muted-foreground">Enterprise</span>
					</div>
				</div>
			}
			@dropdown.Item() {
				<div class="flex items-center gap-2">
					<div class="flex items-center justify-center size-6 rounded-sm bg-violet-500 text-white">
						@icon.Waves(icon.Props{Class: "size-3"})
					</div>
					<div class="flex flex-col">
						<span class="text-sm">Acme Corp.</span>
						<span class="text-xs text-muted-foreground">Startup</span>
					</div>
				</div>
			}
			@dropdown.Item() {
				<div class="flex items-center gap-2">
					<div class="flex items-center justify-center size-6 rounded-sm bg-rose-500 text-white">
						@icon.Command(icon.Props{Class: "size-3"})
					</div>
					<div class="flex flex-col">
						<span class="text-sm">Evil Corp.</span>
						<span class="text-xs text-muted-foreground">Free</span>
					</div>
				</div>
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.Plus(icon.Props{Class: "mr-2 size-4"})
				Add team
			}
		}
	}
}

templ Sidebar006SearchBar() {
	@sidebar.Menu() {
		@sidebar.MenuItem() {
			<div class="relative">
				@icon.Search(icon.Props{Class: "absolute left-2 top-1/2 size-4 -translate-y-1/2 text-muted-foreground"})
				<input
					type="search"
					placeholder="Search..."
					class="h-8 w-full rounded-md border border-input bg-background pl-8 pr-3 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
				/>
			</div>
		}
	}
}

templ Sidebar006MainNav() {
	@sidebar.Group() {
		@sidebar.Menu() {
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Search",
				}) {
					@icon.Search(icon.Props{Class: "size-4"})
					<span>Search</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Ask AI",
				}) {
					@icon.Sparkles(icon.Props{Class: "size-4"})
					<span>Ask AI</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:     "#",
					IsActive: true,
					Tooltip:  "Home",
				}) {
					@icon.House(icon.Props{Class: "size-4"})
					<span>Home</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Inbox",
				}) {
					@icon.Inbox(icon.Props{Class: "size-4"})
					<span>Inbox</span>
					@sidebar.MenuBadge() {
						10
					}
				}
			}
		}
	}
}

type Sidebar006Favorite struct {
	Name  string
	URL   string
	Emoji string
}

templ Sidebar006Favorites() {
	{{
		favorites := []Sidebar006Favorite{
			{Name: "Project Management & Task Tracking", URL: "#", Emoji: "📊"},
			{Name: "Family Recipe Collection & Meal Planning", URL: "#", Emoji: "🍳"},
			{Name: "Fitness Tracker & Workout Routines", URL: "#", Emoji: "💪"},
			{Name: "Book Notes & Reading List", URL: "#", Emoji: "📚"},
			{Name: "Sustainable Gardening Tips & Plant Care", URL: "#", Emoji: "🌱"},
		}
	}}
	@sidebar.Group() {
		@sidebar.GroupLabel() {
			Favorites
		}
		@sidebar.Menu() {
			for _, fav := range favorites {
				@sidebar.MenuItem() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{
						Href:    fav.URL,
						Tooltip: fav.Name,
					}) {
						<span>{ fav.Emoji }</span>
						<span class="truncate">{ fav.Name }</span>
					}
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "More",
				}) {
					@icon.Ellipsis(icon.Props{Class: "size-4"})
					<span>More</span>
				}
			}
		}
	}
}

type Sidebar006Workspace struct {
	Name  string
	Emoji string
	Pages []Sidebar006Page
}

type Sidebar006Page struct {
	Name  string
	URL   string
	Emoji string
}

templ Sidebar006Workspaces() {
	{{
		workspaces := []Sidebar006Workspace{
			{
				Name:  "Personal Life Management",
				Emoji: "🏠",
				Pages: []Sidebar006Page{
					{Name: "Daily Journal & Reflection", URL: "#", Emoji: "📔"},
					{Name: "Health & Wellness Tracker", URL: "#", Emoji: "🍏"},
					{Name: "Personal Growth & Learning Goals", URL: "#", Emoji: "🌟"},
				},
			},
			{
				Name:  "Professional Development",
				Emoji: "💼",
				Pages: []Sidebar006Page{
					{Name: "Career Objectives & Milestones", URL: "#", Emoji: "🎯"},
					{Name: "Skill Acquisition & Training Log", URL: "#", Emoji: "🧠"},
					{Name: "Networking Contacts & Events", URL: "#", Emoji: "🤝"},
				},
			},
		}
	}}
	@sidebar.Group() {
		@sidebar.GroupLabel() {
			Workspaces
		}
		for _, workspace := range workspaces {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					<div class="text-xs font-medium text-muted-foreground mb-1 px-2">
						<span>{ workspace.Emoji }</span>
						<span class="ml-1">{ workspace.Name }</span>
					</div>
					@sidebar.MenuSub() {
						for _, page := range workspace.Pages {
							@sidebar.MenuSubItem() {
								@sidebar.MenuSubButton(sidebar.MenuSubButtonProps{
									Href: page.URL,
								}) {
									<span>{ page.Emoji }</span>
									<span class="truncate">{ page.Name }</span>
								}
							}
						}
					}
				}
			}
		}
	}
}

templ Sidebar006SecondaryNav() {
	@sidebar.Menu() {
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:    "#",
				Tooltip: "Support",
			}) {
				@icon.CircleQuestionMark(icon.Props{Class: "size-4"})
				<span>Support</span>
			}
		}
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:    "#",
				Tooltip: "Feedback",
			}) {
				@icon.MessageSquare(icon.Props{Class: "size-4"})
				<span>Feedback</span>
			}
		}
		@sidebar.MenuItem() {
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{
						Tooltip: "User",
					}) {
						@avatar.Avatar(avatar.Props{Class: "size-6"}) {
							@avatar.Fallback() {
								JD
							}
						}
						<span>John Doe</span>
						@icon.ChevronUp(icon.Props{Class: "ml-auto size-4"})
					}
				}
				@dropdown.Content(dropdown.ContentProps{
					Class:     "w-56",
					Placement: dropdown.PlacementTop,
				}) {
					@dropdown.Label() {
						John Doe
					}
					@dropdown.Separator()
					@dropdown.Item() {
						@icon.User(icon.Props{Class: "mr-2 size-4"})
						Account
					}
					@dropdown.Item() {
						@icon.Settings(icon.Props{Class: "mr-2 size-4"})
						Settings
					}
					@dropdown.Separator()
					@dropdown.Item() {
						@icon.LogOut(icon.Props{Class: "mr-2 size-4"})
						Log out
					}
				}
			}
		}
	}
}
```

### sidebar_007.templ

**Path:** `sidebar/sidebar_007.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/calendar"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar007() {
	@sidebar.Layout() {
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<header class="flex items-center h-14 px-4 border-b border-border bg-background">
					@sidebar.Trigger()
				</header>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
		@sidebar.Sidebar(sidebar.Props{
			Side: sidebar.SideRight,
		}) {
			@sidebar.Header() {
				@Sidebar007UserNav()
			}
			@sidebar.Content() {
				@Sidebar007DatePicker()
				@sidebar.Separator()
				@Sidebar007Calendars()
			}
			@sidebar.Footer() {
				@sidebar.Menu() {
					@sidebar.MenuItem() {
						@sidebar.MenuButton(sidebar.MenuButtonProps{
							Href: "#",
						}) {
							@icon.Plus(icon.Props{Class: "size-4"})
							<span>New Calendar</span>
						}
					}
				}
			}
		}
	}
}

templ Sidebar007UserNav() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{
						Size: sidebar.MenuButtonSizeLg,
					}) {
						<div class="flex items-center gap-2 w-full">
							@avatar.Avatar(avatar.Props{Class: "size-8"}) {
								@avatar.Image(avatar.ImageProps{Src: "https://avatars.githubusercontent.com/u/26936893?v=4"})
								@avatar.Fallback() {
									JD
								}
							}
							<div class="flex flex-1 flex-col gap-0.5 overflow-hidden">
								<span class="truncate font-semibold">John Doe</span>
								<span class="truncate text-xs text-muted-foreground">john@example.com</span>
							</div>
							@icon.ChevronsUpDown(icon.Props{Class: "ml-auto size-4"})
						</div>
					}
				}
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-56",
		}) {
			@dropdown.Label() {
				My Account
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.User(icon.Props{Class: "mr-2 size-4"})
				Profile
			}
			@dropdown.Item() {
				@icon.CreditCard(icon.Props{Class: "mr-2 size-4"})
				Billing
			}
			@dropdown.Item() {
				@icon.Settings(icon.Props{Class: "mr-2 size-4"})
				Settings
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.LogOut(icon.Props{Class: "mr-2 size-4"})
				Log out
			}
		}
	}
}

templ Sidebar007DatePicker() {
	@sidebar.Group() {
		@calendar.Calendar()
	}
}

type Sidebar007CalendarGroup struct {
	Name  string
	Items []string
}

templ Sidebar007Calendars() {
	{{
		calendarGroups := []Sidebar007CalendarGroup{
			{
				Name:  "My Calendars",
				Items: []string{"Personal", "Work", "Family"},
			},
			{
				Name:  "Favorites",
				Items: []string{"Holidays", "Birthdays"},
			},
			{
				Name:  "Other",
				Items: []string{"Travel", "Reminders", "Deadlines"},
			},
		}
	}}
	for _, group := range calendarGroups {
		@sidebar.Group() {
			@sidebar.GroupLabel() {
				{ group.Name }
			}
			@sidebar.Menu() {
				for _, item := range group.Items {
					@sidebar.MenuItem() {
						@Sidebar007CalendarItem(item)
					}
				}
			}
		}
	}
}

templ Sidebar007CalendarItem(name string) {
	<div class="flex items-center gap-2 px-2 py-1.5 text-sm hover:bg-sidebar-accent hover:text-sidebar-accent-foreground rounded-md">
		@checkbox.Checkbox(checkbox.Props{
			ID:      "calendar-" + name,
			Checked: name == "Personal" || name == "Work" || name == "Holidays",
		})
		@label.Label(label.Props{
			For:   "calendar-" + name,
			Class: "flex-1",
		}) {
			{ name }
		}
		@Sidebar007CalendarColor(name)
	</div>
}

templ Sidebar007CalendarColor(name string) {
	{{ var colorClass string }}
	switch name {
		case "Personal":
			{{ colorClass = "bg-blue-500" }}
		case "Work":
			{{ colorClass = "bg-green-500" }}
		case "Family":
			{{ colorClass = "bg-purple-500" }}
		case "Holidays":
			{{ colorClass = "bg-red-500" }}
		case "Birthdays":
			{{ colorClass = "bg-pink-500" }}
		case "Travel":
			{{ colorClass = "bg-yellow-500" }}
		case "Reminders":
			{{ colorClass = "bg-orange-500" }}
		case "Deadlines":
			{{ colorClass = "bg-rose-500" }}
		default:
			{{ colorClass = "bg-gray-500" }}
	}
	<div class={ "size-3 rounded-full", colorClass }></div>
}
```

### sidebar_008.templ

**Path:** `sidebar/sidebar_008.templ`

```templ
package sidebar

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/breadcrumb"
	"github.com/templui/templui-pro/internal/ui/components/calendar"
	"github.com/templui/templui-pro/internal/ui/components/checkbox"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/label"
	"github.com/templui/templui-pro/internal/ui/components/sidebar"
)

templ Sidebar008() {
	@sidebar.Layout() {
		// Left Sidebar with normal trigger
		@Sidebar008LeftSidebar()
		// Main Content Area
		@sidebar.Inset() {
			<div class="flex h-full flex-col">
				<header class="bg-background sticky top-0 flex h-14 shrink-0 items-center gap-2">
					<div class="flex flex-1 items-center gap-2 px-3">
						@sidebar.Trigger(sidebar.TriggerProps{Target: "left"})
						<div class="h-4 w-px bg-border mr-2"></div>
						@breadcrumb.Breadcrumb() {
							@breadcrumb.List() {
								@breadcrumb.Item() {
									@breadcrumb.Page() {
										Project Management & Task Tracking
									}
								}
							}
						}
					</div>
				</header>
				<div class="flex-1 overflow-y-auto p-6">
					<!-- Content goes here -->
				</div>
			</div>
		}
		// Right Sidebar without trigger
		@Sidebar008RightSidebar()
	}
}

templ Sidebar008LeftSidebar() {
	@sidebar.Sidebar(sidebar.Props{
		ID:   "left",
		Side: sidebar.SideLeft,
	}) {
		@sidebar.Header() {
			@Sidebar008TeamSwitcher()
			@Sidebar008MainNav()
		}
		@sidebar.Content() {
			@Sidebar008Favorites()
			@Sidebar008Workspaces()
			@Sidebar008SecondaryNav()
		}
	}
}

templ Sidebar008RightSidebar() {
	@sidebar.Sidebar(sidebar.Props{
		Side:  sidebar.SideRight,
		Class: "hidden md:hidden lg:flex",
	}) {
		@sidebar.Header() {
			@Sidebar008UserNav()
		}
		@sidebar.Content() {
			@Sidebar008DatePicker()
			@sidebar.Separator()
			@Sidebar008Calendars()
		}
		@sidebar.Footer() {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					@sidebar.MenuButton() {
						@icon.Plus(icon.Props{Class: "size-4"})
						<span>New Calendar</span>
					}
				}
			}
		}
	}
}

templ Sidebar008TeamSwitcher() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					@sidebar.MenuButton() {
						@icon.Command(icon.Props{Class: "size-4"})
						<span class="font-semibold">Acme Inc</span>
					}
				}
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-48",
		}) {
			@dropdown.Label() {
				Teams
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.Command(icon.Props{Class: "mr-2 size-4"})
				Acme Inc
				<span class="ml-auto text-xs">Enterprise</span>
			}
			@dropdown.Item() {
				@icon.Waves(icon.Props{Class: "mr-2 size-4"})
				Acme Corp.
				<span class="ml-auto text-xs">Startup</span>
			}
			@dropdown.Item() {
				@icon.Command(icon.Props{Class: "mr-2 size-4"})
				Evil Corp.
				<span class="ml-auto text-xs">Free</span>
			}
		}
	}
}

templ Sidebar008MainNav() {
	@sidebar.Menu() {
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:    "#",
				Tooltip: "Search",
			}) {
				@icon.Search(icon.Props{Class: "size-4"})
				<span>Search</span>
			}
		}
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:    "#",
				Tooltip: "Ask AI",
			}) {
				@icon.Sparkles(icon.Props{Class: "size-4"})
				<span>Ask AI</span>
			}
		}
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:     "#",
				IsActive: true,
				Tooltip:  "Home",
			}) {
				@icon.House(icon.Props{Class: "size-4"})
				<span>Home</span>
			}
		}
		@sidebar.MenuItem() {
			@sidebar.MenuButton(sidebar.MenuButtonProps{
				Href:    "#",
				Tooltip: "Inbox",
			}) {
				@icon.Inbox(icon.Props{Class: "size-4"})
				<span>Inbox</span>
				@sidebar.MenuBadge() {
					10
				}
			}
		}
	}
}

templ Sidebar008SecondaryNav() {
	@sidebar.Group() {
		@sidebar.Menu() {
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Calendar",
				}) {
					@icon.Calendar(icon.Props{Class: "size-4"})
					<span>Calendar</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Settings",
				}) {
					@icon.Settings(icon.Props{Class: "size-4"})
					<span>Settings</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Templates",
				}) {
					@icon.Blocks(icon.Props{Class: "size-4"})
					<span>Templates</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Trash",
				}) {
					@icon.Trash2(icon.Props{Class: "size-4"})
					<span>Trash</span>
				}
			}
			@sidebar.MenuItem() {
				@sidebar.MenuButton(sidebar.MenuButtonProps{
					Href:    "#",
					Tooltip: "Help",
				}) {
					@icon.CircleQuestionMark(icon.Props{Class: "size-4"})
					<span>Help</span>
				}
			}
		}
	}
}

type Sidebar008Favorite struct {
	Name  string
	URL   string
	Emoji string
}

templ Sidebar008Favorites() {
	{{
		favorites := []Sidebar008Favorite{
			{Name: "Project Management & Task Tracking", URL: "#", Emoji: "📊"},
			{Name: "Family Recipe Collection & Meal Planning", URL: "#", Emoji: "🍳"},
			{Name: "Fitness Tracker & Workout Routines", URL: "#", Emoji: "💪"},
			{Name: "Book Notes & Reading List", URL: "#", Emoji: "📚"},
			{Name: "Sustainable Gardening Tips & Plant Care", URL: "#", Emoji: "🌱"},
			{Name: "Language Learning Progress & Resources", URL: "#", Emoji: "🗣️"},
			{Name: "Home Renovation Ideas & Budget Tracker", URL: "#", Emoji: "🏠"},
			{Name: "Personal Finance & Investment Portfolio", URL: "#", Emoji: "💰"},
			{Name: "Movie & TV Show Watchlist with Reviews", URL: "#", Emoji: "🎬"},
			{Name: "Daily Habit Tracker & Goal Setting", URL: "#", Emoji: "✅"},
		}
	}}
	@sidebar.Group() {
		@sidebar.GroupLabel() {
			Favorites
		}
		@sidebar.Menu() {
			for _, fav := range favorites {
				@sidebar.MenuItem() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{
						Href:    fav.URL,
						Tooltip: fav.Name,
					}) {
						<span>{ fav.Emoji }</span>
						<span class="truncate">{ fav.Name }</span>
					}
				}
			}
		}
	}
}

type Sidebar008Workspace struct {
	Name  string
	Emoji string
	Pages []Sidebar008Page
}

type Sidebar008Page struct {
	Name  string
	URL   string
	Emoji string
}

templ Sidebar008Workspaces() {
	{{
		workspaces := []Sidebar008Workspace{
			{
				Name:  "Personal Life Management",
				Emoji: "🏠",
				Pages: []Sidebar008Page{
					{Name: "Daily Journal & Reflection", URL: "#", Emoji: "📔"},
					{Name: "Health & Wellness Tracker", URL: "#", Emoji: "🍏"},
					{Name: "Personal Growth & Learning Goals", URL: "#", Emoji: "🌟"},
				},
			},
			{
				Name:  "Professional Development",
				Emoji: "💼",
				Pages: []Sidebar008Page{
					{Name: "Career Objectives & Milestones", URL: "#", Emoji: "🎯"},
					{Name: "Skill Acquisition & Training Log", URL: "#", Emoji: "🧠"},
					{Name: "Networking Contacts & Events", URL: "#", Emoji: "🤝"},
				},
			},
			{
				Name:  "Creative Projects",
				Emoji: "🎨",
				Pages: []Sidebar008Page{
					{Name: "Writing Ideas & Story Outlines", URL: "#", Emoji: "✍️"},
					{Name: "Art & Design Portfolio", URL: "#", Emoji: "🖼️"},
					{Name: "Music Composition & Practice Log", URL: "#", Emoji: "🎵"},
				},
			},
			{
				Name:  "Home Management",
				Emoji: "🏡",
				Pages: []Sidebar008Page{
					{Name: "Household Budget & Expense Tracking", URL: "#", Emoji: "💰"},
					{Name: "Home Maintenance Schedule & Tasks", URL: "#", Emoji: "🔧"},
					{Name: "Family Calendar & Event Planning", URL: "#", Emoji: "📅"},
				},
			},
			{
				Name:  "Travel & Adventure",
				Emoji: "🧳",
				Pages: []Sidebar008Page{
					{Name: "Trip Planning & Itineraries", URL: "#", Emoji: "🗺️"},
					{Name: "Travel Bucket List & Inspiration", URL: "#", Emoji: "🌎"},
					{Name: "Travel Journal & Photo Gallery", URL: "#", Emoji: "📸"},
				},
			},
		}
	}}
	@sidebar.Group() {
		@sidebar.GroupLabel() {
			Workspaces
		}
		for _, workspace := range workspaces {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					<div class="text-xs font-medium text-muted-foreground mb-1 px-2">
						<span>{ workspace.Emoji }</span>
						<span class="ml-1">{ workspace.Name }</span>
					</div>
					@sidebar.MenuSub() {
						for _, page := range workspace.Pages {
							@sidebar.MenuSubItem() {
								@sidebar.MenuSubButton(sidebar.MenuSubButtonProps{
									Href: page.URL,
								}) {
									<span>{ page.Emoji }</span>
									<span class="truncate">{ page.Name }</span>
								}
							}
						}
					}
				}
			}
		}
	}
}

templ Sidebar008UserNav() {
	@dropdown.Dropdown() {
		@dropdown.Trigger() {
			@sidebar.Menu() {
				@sidebar.MenuItem() {
					@sidebar.MenuButton(sidebar.MenuButtonProps{Size: sidebar.MenuButtonSizeLg}) {
						@avatar.Avatar(avatar.Props{Class: "size-8"}) {
							@avatar.Image(avatar.ImageProps{Src: "https://avatars.githubusercontent.com/u/26936893?v=4"})
							@avatar.Fallback() {
								JD
							}
						}
						<span>John Doe</span>
					}
				}
			}
		}
		@dropdown.Content(dropdown.ContentProps{
			Class: "w-56",
		}) {
			@dropdown.Label() {
				My Account
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.User(icon.Props{Class: "mr-2 size-4"})
				Profile
			}
			@dropdown.Item() {
				@icon.Settings(icon.Props{Class: "mr-2 size-4"})
				Settings
			}
			@dropdown.Separator()
			@dropdown.Item() {
				@icon.LogOut(icon.Props{Class: "mr-2 size-4"})
				Log out
			}
		}
	}
}

templ Sidebar008DatePicker() {
	@sidebar.Group() {
		@calendar.Calendar()
	}
}

type Sidebar008CalendarItem struct {
	Name  string
	Color string
}

templ Sidebar008Calendars() {
	{{
		calendars := map[string][]Sidebar008CalendarItem{
			"My Calendars": {
				{Name: "Personal", Color: "bg-blue-500"},
				{Name: "Work", Color: "bg-green-500"},
				{Name: "Family", Color: "bg-purple-500"},
			},
			"Favorites": {
				{Name: "Holidays", Color: "bg-red-500"},
				{Name: "Birthdays", Color: "bg-pink-500"},
			},
			"Other": {
				{Name: "Travel", Color: "bg-yellow-500"},
				{Name: "Reminders", Color: "bg-orange-500"},
				{Name: "Deadlines", Color: "bg-rose-500"},
			},
		}
	}}
	for groupName, items := range calendars {
		@sidebar.Group() {
			@sidebar.GroupLabel() {
				{ groupName }
			}
			@sidebar.Menu() {
				for _, item := range items {
					@sidebar.MenuItem() {
						<div class="flex items-center gap-2 px-2 py-1.5 text-sm hover:bg-sidebar-accent hover:text-sidebar-accent-foreground rounded-md">
							@checkbox.Checkbox(checkbox.Props{
								ID:      "calendar-" + item.Name,
								Checked: item.Name == "Personal" || item.Name == "Work" || item.Name == "Holidays",
							})
							@label.Label(label.Props{
								For:   "calendar-" + item.Name,
								Class: "flex-1",
							}) {
								{ item.Name }
							}
							<div class={ "size-3 rounded-full", item.Color }></div>
						</div>
					}
				}
			}
		}
	}
}
```

## Social

### social_001.templ

**Path:** `social/social_001.templ`

```templ
package social

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Social001() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Social001Header()
			@Social001Links()
			@Social001CTA()
		</div>
	</section>
}

templ Social001Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Connect With Us
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Follow us on social media to stay updated with our latest news, updates, and community highlights.
		</p>
	</div>
}

templ Social001Links() {
	<div class="max-w-4xl mx-auto mb-12">
		<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
			@Social001LinkCard("Twitter", "280K", "Followers")
			@Social001LinkCard("Instagram", "425K", "Followers")
			@Social001LinkCard("Facebook", "1.2M", "Likes")
			@Social001LinkCard("YouTube", "850K", "Subscribers")
			@Social001LinkCard("LinkedIn", "150K", "Followers")
			@Social001LinkCard("GitHub", "95K", "Stars")
		</div>
	</div>
}

templ Social001LinkCard(platform string, count string, label string) {
	<a href="#">
		@card.Card(card.Props{
			Class: "group hover:shadow-lg transition-all hover:scale-105 h-full",
		}) {
			@card.Content() {
				<div class="flex flex-col items-center text-center py-2">
					<div class="w-12 h-12 rounded-lg bg-muted flex items-center justify-center mb-3">
						switch platform {
							case "Twitter":
								@icon.Twitter(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
							case "Instagram":
								@icon.Instagram(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
							case "Facebook":
								@icon.Facebook(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
							case "YouTube":
								@icon.Youtube(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
							case "LinkedIn":
								@icon.Linkedin(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
							case "GitHub":
								@icon.Github(icon.Props{
									Size:  24,
									Class: "text-muted-foreground",
								})
						}
					</div>
					<h3 class="font-semibold text-sm mb-2">{ platform }</h3>
					<div class="space-y-0.5">
						<p class="text-xl font-bold">{ count }</p>
						<p class="text-xs text-muted-foreground">{ label }</p>
					</div>
				</div>
			}
		}
	</a>
}

templ Social001CTA() {
	<div class="max-w-3xl mx-auto">
		@card.Card(card.Props{
			Class: "text-center",
		}) {
			@card.Content() {
				<div class="py-4">
					<h3 class="text-xl font-semibold mb-3">Join Our Community</h3>
					<p class="text-muted-foreground mb-6 max-w-xl mx-auto">
						Be part of a thriving community of developers, designers, and creators. Share ideas, get support, and stay inspired.
					</p>
					<div class="flex flex-col sm:flex-row gap-3 justify-center">
						@button.Button() {
							<span class="flex items-center gap-2">
								@icon.Users(icon.Props{
									Size: 16,
								})
								Join Discord Server
							</span>
						}
						@button.Button(button.Props{
							Variant: button.VariantOutline,
						}) {
							<span class="flex items-center gap-2">
								@icon.Mail(icon.Props{
									Size: 16,
								})
								Subscribe to Newsletter
							</span>
						}
					</div>
				</div>
			}
		}
	</div>
}
```

### social_002.templ

**Path:** `social/social_002.templ`

```templ
package social

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Social002() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Social002Header()
			@Social002Feed()
			@Social002Footer()
		</div>
	</section>
}

templ Social002Header() {
	<div class="max-w-5xl mx-auto mb-8">
		<div class="flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
			<div class="flex items-center gap-4">
				<div class="w-16 h-16 rounded-full bg-muted flex items-center justify-center">
					@icon.Building(icon.Props{
						Size:  24,
						Class: "text-muted-foreground",
					})
				</div>
				<div>
					<h2 class="text-xl font-bold flex items-center gap-2">
						yourcompany
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
						}) {
							<span class="flex items-center gap-1">
								@icon.Check(icon.Props{
									Size: 10,
								})
								Verified
							</span>
						}
					</h2>
					<p class="text-sm text-muted-foreground">Design & Innovation</p>
				</div>
			</div>
			<!-- Stats -->
			<div class="flex items-center gap-6 text-sm">
				<div class="text-center">
					<p class="font-bold text-lg">248</p>
					<p class="text-muted-foreground">Posts</p>
				</div>
				<div class="text-center">
					<p class="font-bold text-lg">425K</p>
					<p class="text-muted-foreground">Followers</p>
				</div>
				<div class="text-center">
					<p class="font-bold text-lg">892</p>
					<p class="text-muted-foreground">Following</p>
				</div>
			</div>
			<!-- Follow Button -->
			<div>
				@button.Button() {
					<span class="flex items-center gap-2">
						@icon.UserPlus(icon.Props{
							Size: 16,
						})
						Follow
					</span>
				}
			</div>
		</div>
	</div>
}

templ Social002Feed() {
	<div class="max-w-5xl mx-auto">
		<div class="grid grid-cols-3 gap-1 md:gap-2">
			for i := 1; i <= 12; i++ {
				@Social002Post(i)
			}
		</div>
	</div>
}

templ Social002Post(index int) {
	@card.Card(card.Props{
		Class: "relative aspect-square group cursor-pointer overflow-hidden hover:shadow-lg transition-all",
	}) {
		<div class="w-full h-full bg-muted flex items-center justify-center">
			<div class="text-muted-foreground/30">
				if index%3 == 0 {
					@icon.Image(icon.Props{
						Size: 32,
					})
				} else if index%3 == 1 {
					@icon.Video(icon.Props{
						Size: 32,
					})
				} else {
					@icon.LayoutGrid(icon.Props{
						Size: 32,
					})
				}
			</div>
		</div>
		<div class="absolute inset-0 bg-black/50 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
			<div class="flex items-center gap-6 text-white">
				<div class="flex items-center gap-2">
					@icon.Heart(icon.Props{
						Size: 20,
					})
					<span class="font-semibold">{ fmt.Sprintf("%d.%dk", (index*17)%99, (index*3)%9) }</span>
				</div>
				<div class="flex items-center gap-2">
					@icon.MessageCircle(icon.Props{
						Size: 20,
					})
					<span class="font-semibold">{ fmt.Sprintf("%d", (index*23)%999) }</span>
				</div>
			</div>
		</div>
		if index%3 == 1 {
			<div class="absolute top-2 right-2">
				@icon.Play(icon.Props{
					Size:  20,
					Class: "text-white drop-shadow-lg",
				})
			</div>
		} else if index%3 == 2 {
			<div class="absolute top-2 right-2">
				@icon.LayoutGrid(icon.Props{
					Size:  20,
					Class: "text-white drop-shadow-lg",
				})
			</div>
		}
	}
}

templ Social002Footer() {
	<div class="max-w-5xl mx-auto mt-8">
		<div class="text-center">
			@button.Button(button.Props{
				Variant: button.VariantOutline,
			}) {
				<span class="flex items-center gap-2">
					Load More
					@icon.ChevronDown(icon.Props{
						Size: 16,
					})
				</span>
			}
		</div>
	</div>
}
```

### social_003.templ

**Path:** `social/social_003.templ`

```templ
package social

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Social003() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Social003Header()
			@Social003Tweets()
		</div>
	</section>
}

templ Social003Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			What People Are Saying
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Real feedback from our community. See why developers and designers love using our products.
		</p>
	</div>
}

templ Social003Tweets() {
	<div class="max-w-6xl mx-auto">
		<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
			@Social003Tweet(
				"Sarah Chen",
				"@sarahchen_dev",
				true,
				"Just integrated @templui - amazing DX! 🚀",
				"12.5K",
				"234",
				"892",
			)
			@Social003Tweet(
				"Mike Rodriguez",
				"@mikecodes",
				false,
				"Perfect for our A/B testing dashboard.",
				"8.2K",
				"145",
				"567",
			)
			@Social003Tweet(
				"Emma Wilson",
				"@emmawilson_ux",
				true,
				"6 months with @templui. Ship speed 10x.",
				"15.8K",
				"389",
				"1.2K",
			)
			@Social003Tweet(
				"Alex Turner",
				"@alexturner",
				false,
				"Not generic. Actually good.",
				"6.7K",
				"98",
				"432",
			)
			@Social003Tweet(
				"Lisa Park",
				"@lisa_designs",
				true,
				"Productivity through the roof with @templui.",
				"9.3K",
				"167",
				"778",
			)
			@Social003Tweet(
				"David Kumar",
				"@davidkumar_dev",
				false,
				"Launched. Client happy. Thanks @templui.",
				"11.2K",
				"298",
				"934",
			)
		</div>
	</div>
}

templ Social003Tweet(name string, handle string, verified bool, content string, likes string, replies string, retweets string) {
	@card.Card(card.Props{
		Class: "group hover:shadow-lg transition-all hover:scale-[1.02] h-full flex flex-col",
	}) {
		@card.Content(card.ContentProps{
			Class: "flex-1 flex flex-col",
		}) {
			<div>
				<div class="flex items-start gap-3 mb-4">
					@avatar.Avatar(avatar.Props{
						Class: "w-12 h-12",
					}) {
						@avatar.Fallback() {
							{ string(name[0]) }
						}
					}
					<div class="flex-1">
						<div class="flex items-center gap-1">
							<span class="font-semibold">{ name }</span>
							if verified {
								@icon.BadgeCheck(icon.Props{
									Size:  16,
									Class: "text-muted-foreground",
								})
							}
						</div>
						<p class="text-sm text-muted-foreground">{ handle }</p>
					</div>
					@icon.Twitter(icon.Props{
						Size:  20,
						Class: "text-muted-foreground",
					})
				</div>
				<div class="mb-4">
					<p class="text-sm leading-relaxed">{ content }</p>
				</div>
				<div class="mb-4">
					<p class="text-xs text-muted-foreground">2:45 PM · Mar 21, 2024</p>
				</div>
			</div>
			<div class="mt-auto">
				@separator.Separator(separator.Props{
					Class: "mb-4",
				})
				<div class="flex items-center gap-6">
					<button class="flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground transition-colors">
						@icon.Heart(icon.Props{
							Size: 16,
						})
						<span>{ likes }</span>
					</button>
					<button class="flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground transition-colors">
						@icon.MessageCircle(icon.Props{
							Size: 16,
						})
						<span>{ replies }</span>
					</button>
					<button class="flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground transition-colors">
						@icon.Repeat(icon.Props{
							Size: 16,
						})
						<span>{ retweets }</span>
					</button>
					<button class="flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground transition-colors ml-auto">
						@icon.Share(icon.Props{
							Size: 16,
						})
					</button>
				</div>
			</div>
		}
	}
}
```

## State

### state_001.templ

**Path:** `state/state_001.templ`

```templ
package state

import "github.com/templui/templui-pro/internal/ui/components/card"

templ State001() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-4xl space-y-8">
			@State001Demo()
		</div>
	</section>
}

templ State001Demo() {
	<div class="space-y-6">
		<div class="text-center space-y-2">
			<h3 class="text-2xl font-semibold">Loading Content</h3>
			<p class="text-muted-foreground">Beautiful skeleton screens with shimmer animation</p>
		</div>
		<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
			@State001SkeletonCard()
			@State001SkeletonCard()
			@State001SkeletonCard()
		</div>
	</div>
}

templ State001SkeletonCard() {
	@card.Card() {
		@card.Content() {
			<div class="space-y-4">
				@State001SkeletonAvatar()
				@State001SkeletonText()
				@State001SkeletonActions()
			</div>
		}
	}
}

templ State001SkeletonAvatar() {
	<div class="flex items-center space-x-4">
		<div class="h-12 w-12 rounded-full bg-muted animate-pulse"></div>
		<div class="space-y-2">
			<div class="h-4 w-32 bg-muted rounded animate-pulse"></div>
			<div class="h-3 w-24 bg-muted rounded animate-pulse"></div>
		</div>
	</div>
}

templ State001SkeletonText() {
	<div class="space-y-2">
		<div class="h-3 bg-muted rounded animate-pulse"></div>
		<div class="h-3 bg-muted rounded animate-pulse"></div>
		<div class="h-3 w-3/4 bg-muted rounded animate-pulse"></div>
	</div>
}

templ State001SkeletonActions() {
	<div class="flex justify-between items-center pt-4">
		<div class="flex space-x-2">
			<div class="h-8 w-16 bg-muted rounded animate-pulse"></div>
			<div class="h-8 w-16 bg-muted rounded animate-pulse"></div>
		</div>
		<div class="h-8 w-20 bg-muted rounded animate-pulse"></div>
	</div>
}
```

### state_002.templ

**Path:** `state/state_002.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State002() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="w-full max-w-2xl">
			@State002Empty()
		</div>
	</section>
}

templ State002Empty() {
	<div class="flex flex-col items-center justify-center text-center space-y-6 py-16">
		@State002Icon()
		@State002Content()
		@State002Actions()
	</div>
}

templ State002Icon() {
	<div class="rounded-full bg-muted p-6">
		@icon.Inbox(icon.Props{
			Size:  48,
			Class: "text-muted-foreground",
		})
	</div>
}

templ State002Content() {
	<div class="space-y-2">
		<h3 class="text-2xl font-semibold tracking-tight">No results found</h3>
		<p class="text-muted-foreground max-w-sm mx-auto">
			We couldn't find any items matching your criteria. Try adjusting your filters or search terms.
		</p>
	</div>
}

templ State002Actions() {
	<div class="flex flex-col sm:flex-row gap-3">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			Clear filters
		}
		@button.Button() {
			Add new item
		}
	</div>
}
```

### state_003.templ

**Path:** `state/state_003.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State003() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-8">
			@State003404()
			@State003Content()
			@State003Actions()
		</div>
	</section>
}

templ State003404() {
	<h1 class="text-[8rem] md:text-[16rem] font-bold leading-none text-muted-foreground/20 select-none">
		404
	</h1>
}

templ State003Content() {
	<div class="space-y-3 -mt-12">
		<h2 class="text-3xl font-semibold tracking-tight">Page not found</h2>
		<p class="text-muted-foreground max-w-md mx-auto">
			Sorry, we couldn't find the page you're looking for. It might have been removed, renamed, or doesn't exist.
		</p>
	</div>
}

templ State003Actions() {
	<div class="flex flex-col sm:flex-row gap-3 justify-center">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<span class="flex items-center gap-2">
				@icon.ArrowLeft(icon.Props{
					Size: 16,
				})
				Go back
			</span>
		}
		@button.Button() {
			<span class="flex items-center gap-2">
				@icon.House(icon.Props{
					Size: 16,
				})
				Go home
			</span>
		}
	</div>
}
```

### state_004.templ

**Path:** `state/state_004.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State004() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-6 max-w-md">
			@State004Icon()
			@State004Content()
			@State004Actions()
		</div>
	</section>
}

templ State004Icon() {
	<div class="relative inline-flex">
		<div class="absolute inset-0 bg-green-500/20 rounded-full"></div>
		<div class="relative rounded-full bg-green-100 dark:bg-green-900/20 p-6">
			@icon.CircleCheck(icon.Props{
				Size:  48,
				Class: "text-green-600 dark:text-green-500",
			})
		</div>
	</div>
}

templ State004Content() {
	<div class="space-y-2">
		<h2 class="text-2xl font-semibold tracking-tight">Success!</h2>
		<p class="text-muted-foreground">
			Your changes have been saved successfully. You can now continue with your work.
		</p>
	</div>
}

templ State004Actions() {
	<div class="flex flex-col sm:flex-row gap-3 justify-center pt-2">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			View changes
		}
		@button.Button() {
			Continue
		}
	</div>
}
```

### state_005.templ

**Path:** `state/state_005.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State005() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-6 max-w-md">
			@State005Icon()
			@State005Content()
			@State005Actions()
		</div>
	</section>
}

templ State005Icon() {
	<div class="relative inline-flex">
		<div class="absolute inset-0 bg-muted-foreground/10 blur-xl rounded-full"></div>
		<div class="relative rounded-full bg-muted p-6">
			@icon.WifiOff(icon.Props{
				Size:  48,
				Class: "text-muted-foreground",
			})
		</div>
	</div>
}

templ State005Content() {
	<div class="space-y-2">
		<h2 class="text-2xl font-semibold tracking-tight">You're offline</h2>
		<p class="text-muted-foreground">
			It looks like you've lost your internet connection. Please check your network settings and try again.
		</p>
	</div>
}

templ State005Actions() {
	<div class="pt-2">
		@button.Button() {
			<span class="flex items-center gap-2">
				@icon.RefreshCw(icon.Props{
					Size: 16,
				})
				Try again
			</span>
		}
		<p class="text-xs text-muted-foreground mt-4">
			Trying to reconnect...
		</p>
	</div>
}
```

### state_006.templ

**Path:** `state/state_006.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State006() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-6 max-w-md">
			@State006Icon()
			@State006Content()
			@State006Actions()
		</div>
	</section>
}

templ State006Icon() {
	<div class="relative inline-flex">
		<div class="absolute inset-0 bg-red-500/10 rounded-full"></div>
		<div class="relative rounded-full bg-red-100 dark:bg-red-900/20 p-6">
			@icon.Lock(icon.Props{
				Size:  48,
				Class: "text-red-600 dark:text-red-500",
			})
		</div>
	</div>
}

templ State006Content() {
	<div class="space-y-2">
		<h2 class="text-2xl font-semibold tracking-tight">Access Denied</h2>
		<p class="text-muted-foreground">
			You don't have permission to access this resource. Please contact your administrator or upgrade your account.
		</p>
	</div>
}

templ State006Actions() {
	<div class="flex flex-col sm:flex-row gap-3 justify-center pt-2">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<span class="flex items-center gap-2">
				@icon.ArrowLeft(icon.Props{
					Size: 16,
				})
				Go back
			</span>
		}
		@button.Button() {
			<span class="flex items-center gap-2">
				@icon.Sparkles(icon.Props{
					Size: 16,
				})
				Upgrade plan
			</span>
		}
	</div>
}
```

### state_007.templ

**Path:** `state/state_007.templ`

```templ
package state

import "github.com/templui/templui-pro/internal/ui/components/icon"

templ State007() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-6 max-w-lg">
			@State007Icon()
			@State007Content()
			@State007Progress()
		</div>
	</section>
}

templ State007Icon() {
	<div class="relative inline-flex">
		<div class="absolute inset-0 bg-yellow-500/10 rounded-full"></div>
		<div class="relative rounded-full bg-yellow-100 dark:bg-yellow-900/20 p-6">
			@icon.Wrench(icon.Props{
				Size:  48,
				Class: "text-yellow-600 dark:text-yellow-500",
			})
		</div>
	</div>
}

templ State007Content() {
	<div class="space-y-3">
		<h2 class="text-2xl font-semibold tracking-tight">Under Maintenance</h2>
		<p class="text-muted-foreground">
			We're performing scheduled maintenance to improve your experience. We'll be back online shortly.
		</p>
		<p class="text-sm text-muted-foreground">
			Expected downtime: <span class="font-medium">2 hours</span>
		</p>
	</div>
}

templ State007Progress() {
	<div class="space-y-2 pt-4 max-w-xs mx-auto">
		<div class="flex justify-between text-xs text-muted-foreground">
			<span>Progress</span>
			<span>65%</span>
		</div>
		<div class="w-full bg-muted rounded-full h-2 overflow-hidden">
			<div class="bg-yellow-600 dark:bg-yellow-500 h-2 rounded-full transition-all duration-300" style="width: 65%"></div>
		</div>
		<p class="text-xs text-muted-foreground pt-2">
			Started at 10:00 AM • Est. completion: 12:00 PM
		</p>
	</div>
}
```

### state_008.templ

**Path:** `state/state_008.templ`

```templ
package state

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ State008() {
	<section class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="text-center space-y-6 max-w-md">
			@State008Icon()
			@State008Content()
			@State008Actions()
		</div>
	</section>
}

templ State008Icon() {
	<div class="relative inline-flex">
		<div class="absolute inset-0 bg-red-500/10 rounded-full"></div>
		<div class="relative rounded-full bg-red-100 dark:bg-red-900/20 p-6">
			@icon.CircleX(icon.Props{
				Size:  48,
				Class: "text-red-600 dark:text-red-500",
			})
		</div>
	</div>
}

templ State008Content() {
	<div class="space-y-2">
		<h2 class="text-2xl font-semibold tracking-tight">Something went wrong</h2>
		<p class="text-muted-foreground">
			We encountered an unexpected error. Please try again or contact support if the problem persists.
		</p>
		<p class="text-xs text-muted-foreground font-mono mt-4">
			Error code: ERR_UNEXPECTED_500
		</p>
	</div>
}

templ State008Actions() {
	<div class="flex flex-col sm:flex-row gap-3 justify-center pt-2">
		@button.Button(button.Props{
			Variant: button.VariantOutline,
		}) {
			<span class="flex items-center gap-2">
				@icon.Mail(icon.Props{
					Size: 16,
				})
				Contact support
			</span>
		}
		@button.Button() {
			<span class="flex items-center gap-2">
				@icon.RefreshCw(icon.Props{
					Size: 16,
				})
				Try again
			</span>
		}
	</div>
}
```

## Stats

### stats_001.templ

**Path:** `stats/stats_001.templ`

```templ
package stats

import (
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Stats001() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">
		@Stats001Card("Total Revenue", "$54,239", "+12.5%", "DollarSign", "text-primary")
		@Stats001Card("Active Users", "8,947", "+8.2%", "Users", "text-primary")
		@Stats001Card("Total Orders", "1,254", "+24.1%", "ShoppingCart", "text-primary")
		@Stats001Card("Conversion Rate", "3.24%", "+0.3%", "TrendingUp", "text-primary")
	</div>
}

templ Stats001Card(title, value, change, iconName, iconColor string) {
	@card.Card(card.Props{
		Class: "relative overflow-hidden",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="flex items-start justify-between">
				<div class="space-y-1">
					<p class="text-sm font-medium text-muted-foreground">{ title }</p>
					<h3 class="text-2xl font-bold">{ value }</h3>
					@badgecomp.Badge(badgecomp.Props{
						Variant: badgecomp.VariantDefault,
						Class:   "bg-primary/10 text-primary",
					}) {
						{ change }
					}
				</div>
				<div class={ "p-2 rounded-lg flex items-center justify-center border" }>
					switch iconName {
						case "DollarSign":
							@icon.DollarSign(icon.Props{Size: 18, Class: iconColor})
						case "Users":
							@icon.Users(icon.Props{Size: 18, Class: iconColor})
						case "ShoppingCart":
							@icon.ShoppingCart(icon.Props{Size: 18, Class: iconColor})
						case "TrendingUp":
							@icon.TrendingUp(icon.Props{Size: 18, Class: iconColor})
					}
				</div>
			</div>
		}
	}
}
```

### stats_002.templ

**Path:** `stats/stats_002.templ`

```templ
package stats

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Stats002() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">
		@Stats002Card("Sarah John", "Frontend Dev", 85, "SJ", "bg-primary/30")
		@Stats002Card("Mike Chen", "Backend Dev", 92, "MC", "bg-primary/30")
		@Stats002Card("Lisa Wang", "Designer", 78, "LW", "bg-primary/30")
		@Stats002Card("Tom Wilson", "DevOps", 96, "TW", "bg-primary/30")
	</div>
}

templ Stats002Card(name, role string, progressValue int, initials, avatarColor string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="flex items-center space-x-4 mb-4">
				@avatar.Avatar(avatar.Props{
					Class: avatarColor,
				}) {
					@avatar.Fallback() {
						{ initials }
					}
				}
				<div class="flex-1">
					<p class="font-medium">{ name }</p>
					<p class="text-sm text-muted-foreground">{ role }</p>
				</div>
				<span class="text-lg font-bold">{ fmt.Sprintf("%d", progressValue) }%</span>
			</div>
			@progress.Progress(progress.Props{
				Value: progressValue,
				Class: "h-3",
			})
		}
	}
}
```

### stats_003.templ

**Path:** `stats/stats_003.templ`

```templ
package stats

import (
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Stats003() {
	<div class="grid grid-cols-1 md:grid-cols-4 gap-6 p-6">
		@Stats003Card("Monthly Revenue", "$127.4K", "+18.5%", icon.DollarSign(icon.Props{Size: 24, Class: "text-primary"}), "border-primary/20")
		@Stats003Card("Active Users", "12.4K", "+15.3%", icon.Users(icon.Props{Size: 24, Class: "text-primary"}), "border-primary/20")
		@Stats003Card("Conversion", "4.8%", "+2.1%", icon.TrendingUp(icon.Props{Size: 24, Class: "text-primary"}), "border-primary/20")
		@Stats003Card("Server Uptime", "99.9%", "+0.1%", icon.Zap(icon.Props{Size: 24, Class: "text-primary"}), "border-primary/20")
	</div>
}

templ Stats003Card(title, value, change string, iconElement templ.Component, borderClass string) {
	@card.Card(card.Props{
		Class: "relative overflow-hidden " + borderClass,
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6 text-center",
		}) {
			<div class="mb-4">
				<div class="mb-3 items-center justify-center flex">
					@iconElement
				</div>
				<h3 class="text-2xl font-bold">{ value }</h3>
				<p class="text-sm text-muted-foreground">{ title }</p>
			</div>
			@badgecomp.Badge(badgecomp.Props{
				Variant: badgecomp.VariantDefault,
			}) {
				{ change }
			}
		}
	}
}
```

### stats_004.templ

**Path:** `stats/stats_004.templ`

```templ
package stats

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Stats004() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 p-6">
		@Stats004Card("Wireless Headphones", "$129.99", 342, icon.Headphones(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
		@Stats004Card("Smart Watch", "$299.99", 287, icon.Watch(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
		@Stats004Card("Laptop Stand", "$79.99", 256, icon.Laptop(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
		@Stats004Card("USB-C Cable", "$19.99", 198, icon.Cable(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
		@Stats004Card("Phone Case", "$24.99", 167, icon.Smartphone(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
		@Stats004Card("Keyboard", "$89.99", 143, icon.Keyboard(icon.Props{Size: 20, Class: "text-primary"}), "bg-primary/10")
	</div>
}

templ Stats004Card(name, price string, sales int, iconElement templ.Component, bgColor string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="flex items-center justify-between">
				<div class="flex items-center space-x-4">
					<div class={ "h-12 w-12 rounded-lg flex items-center justify-center " + bgColor }>
						@iconElement
					</div>
					<div>
						<p class="font-medium text-sm">{ name }</p>
						<p class="text-xs text-muted-foreground">{ fmt.Sprintf("%d", sales) } sold</p>
					</div>
				</div>
				<div class="text-right">
					<p class="font-semibold text-lg">{ price }</p>
					<p class="text-xs text-primary">+12%</p>
				</div>
			</div>
		}
	}
}
```

### stats_005.templ

**Path:** `stats/stats_005.templ`

```templ
package stats

import (
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Stats005() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">
		@Stats005Card("Website Traffic", "12.4K", 73, "Globe", "visitors", "text-primary", "bg-primary/10")
		@Stats005Card("Email Opens", "4.2K", 43, "Mail", "opened", "text-primary", "bg-primary/10")
		@Stats005Card("Social Reach", "8.9K", 85, "Share2", "followers", "text-primary", "bg-primary/10")
		@Stats005Card("Conversions", "850", 12, "TrendingUp", "leads", "text-primary", "bg-primary/10")
	</div>
}

templ Stats005Card(title string, value string, progressValue int, iconName string, subtitle string, iconColor string, iconBg string) {
	@card.Card(card.Props{
		Class: "relative overflow-hidden",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="flex items-start justify-between mb-4">
				<div>
					<div class="flex items-center space-x-2 mb-2">
						<div class={ "h-8 w-8 rounded-lg flex items-center justify-center " + iconBg }>
							switch iconName {
								case "Globe":
									@icon.Globe(icon.Props{Size: 16, Class: iconColor})
								case "Mail":
									@icon.Mail(icon.Props{Size: 16, Class: iconColor})
								case "Share2":
									@icon.Share2(icon.Props{Size: 16, Class: iconColor})
								case "TrendingUp":
									@icon.TrendingUp(icon.Props{Size: 16, Class: iconColor})
							}
						</div>
						<h3 class="font-semibold text-sm">{ title }</h3>
					</div>
					<div class="space-y-1">
						<div class="text-2xl font-bold">{ value }</div>
						<div class="text-sm text-muted-foreground">{ subtitle }</div>
					</div>
				</div>
				@badgecomp.Badge(badgecomp.Props{
					Variant: badgecomp.VariantSecondary,
				}) {
					{ progressValue }%
				}
			</div>
			@progress.Progress(progress.Props{
				Value: progressValue,
			})
		}
	}
}
```

### stats_006.templ

**Path:** `stats/stats_006.templ`

```templ
package stats

import (
	"fmt"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Stats006() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">
		@Stats006Card("Frontend", 87, "border-l-primary/50", "Templ", "12 tasks")
		@Stats006Card("Backend", 64, "border-l-primary/50", "Go", "8 tasks")
		@Stats006Card("Database", 45, "border-l-primary/50", "PostgreSQL", "5 tasks")
		@Stats006Card("DevOps", 78, "border-l-primary/50", "Docker", "3 tasks")
	</div>
}

templ Stats006Card(title string, progressValue int, color, tech, tasks string) {
	@card.Card(card.Props{
		Class: "border border-l-4 " + color,
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6 space-y-4",
		}) {
			<div class="flex items-center justify-between">
				<h4 class="font-semibold text-lg">{ title }</h4>
				<span class="text-lg font-bold">{ fmt.Sprintf("%d", progressValue) }%</span>
			</div>
			@progress.Progress(progress.Props{
				Value: progressValue,
			})
			<div class="flex justify-between text-sm text-muted-foreground">
				<span>{ tech }</span>
				<span>{ tasks }</span>
			</div>
		}
	}
}
```

### stats_007.templ

**Path:** `stats/stats_007.templ`

```templ
package stats

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Stats007() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-3 p-6">
		@Stats007Card("Revenue", "$124.5K", "+12.3%", "positive", icon.TrendingUp(icon.Props{Size: 14, Class: "text-primary"}))
		@Stats007Card("Orders", "1,234", "+5.7%", "positive", icon.ShoppingCart(icon.Props{Size: 14, Class: "text-primary"}))
		@Stats007Card("Customers", "892", "+8.1%", "positive", icon.UserCheck(icon.Props{Size: 14, Class: "text-primary"}))
		@Stats007Card("Conversion", "2.4%", "-0.3%", "negative", icon.Target(icon.Props{Size: 14, Class: "text-primary"}))
	</div>
}

templ Stats007Card(title, value, change, trend string, iconElement templ.Component) {
	@card.Card(card.Props{
		Class: "border-0 bg-muted/30 hover:bg-muted/50 transition-colors duration-200",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-4",
		}) {
			<div class="space-y-2">
				<div class="flex items-center justify-between">
					<span class="text-xs font-medium text-muted-foreground uppercase tracking-wide">{ title }</span>
					@iconElement
				</div>
				<div class="flex items-baseline justify-between">
					<span class="text-xl font-bold text-foreground">{ value }</span>
					if trend == "positive" {
						<span class="text-xs font-medium text-primary bg-primary/10 px-2 py-0.5 rounded-full">{ change }</span>
					} else {
						<span class="text-xs font-medium text-destructive bg-destructive/10 px-2 py-0.5 rounded-full">{ change }</span>
					}
				</div>
			</div>
		}
	}
}
```

### stats_008.templ

**Path:** `stats/stats_008.templ`

```templ
package stats

import (
	"fmt"
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/chart"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Stats008() {
	<div class="grid grid-cols-1 lg:grid-cols-3 gap-6 p-6">
		@Stats008Card("Website Analytics", "Chart", []float64{1200, 1900, 3000, 5000, 2000, 3000, 4500})
		@Stats008Card("Revenue Trends", "Chart", []float64{2800, 3200, 2900, 3600, 4100, 3800, 4200})
		@Stats008Card("User Growth", "Chart", []float64{150, 280, 420, 680, 950, 1200, 1450})
	</div>
}

templ Stats008Card(title, chartType string, data []float64) {
	@card.Card() {
		@card.Header() {
			<div class="flex items-center justify-between">
				<div>
					<h3 class="font-semibold text-lg">{ title }</h3>
					<p class="text-sm text-muted-foreground">Last 7 days</p>
				</div>
				@badgecomp.Badge(badgecomp.Props{
					Variant: badgecomp.VariantSecondary,
					Class:   "bg-primary/10 text-primary",
				}) {
					Live
				}
			</div>
		}
		@card.Content(card.ContentProps{
			Class: "space-y-4",
		}) {
			<div class="grid grid-cols-3 gap-4 text-center">
				<div>
					<div class="text-xl font-bold">{ fmt.Sprintf("%.0f", data[len(data)-1]) }</div>
					<div class="text-xs text-muted-foreground">Current</div>
				</div>
				<div>
					<div class="text-xl font-bold">+15.3%</div>
					<div class="text-xs text-muted-foreground">Growth</div>
				</div>
				<div>
					<div class="text-xl font-bold">{ fmt.Sprintf("%.0f", (data[len(data)-1] + data[len(data)-2]) / 2) }</div>
					<div class="text-xs text-muted-foreground">Average</div>
				</div>
			</div>
			@separator.Separator()
			<div class="h-32">
				@chart.Chart(chart.Props{
					Variant: chart.VariantLine,
					Data: chart.Data{
						Labels: []string{"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"},
						Datasets: []chart.Dataset{
							{
								Label:           title,
								Data:            data,
								BorderColor:     "rgb(59,130,246)",
								BackgroundColor: "rgba(59,130,246,0.1)",
								Fill:            true,
								Tension:         0.4,
							},
						},
					},
					Options: chart.Options{
						Responsive: true,
					},
				})
			</div>
		}
	}
}
```

### stats_009.templ

**Path:** `stats/stats_009.templ`

```templ
package stats

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Stats009() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-6 p-6">
		@Stats009Card("John D.", "$2,450", "john@example.com", "+$450", "JD", "bg-primary/50")
		@Stats009Card("Sarah M.", "$1,890", "sarah@example.com", "+$320", "SM", "bg-primary/50")
		@Stats009Card("Mike L.", "$3,120", "mike@example.com", "+$780", "ML", "bg-primary/50")
		@Stats009Card("Lisa K.", "$1,650", "lisa@example.com", "+$290", "LK", "bg-primary/50")
		@Stats009Card("Tom R.", "$2,980", "tom@example.com", "+$590", "TR", "bg-primary/50")
	</div>
}

templ Stats009Card(name, total, email, thisMonth, initials, avatarColor string) {
	@card.Card(card.Props{
		Class: "hover:shadow-lg transition-shadow duration-200",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6 text-center space-y-4",
		}) {
			@avatar.Avatar(avatar.Props{
				Class: "h-16 w-16 mx-auto " + avatarColor,
			}) {
				@avatar.Fallback(avatar.FallbackProps{
					Class: "text-white text-lg font-semibold",
				}) {
					{ initials }
				}
			}
			<div>
				<h3 class="font-semibold text-lg">{ name }</h3>
				<p class="text-sm text-muted-foreground">{ email }</p>
			</div>
			<div class="space-y-2">
				<div>
					<div class="text-2xl font-bold">{ total }</div>
					<div class="text-xs text-muted-foreground">Total Sales</div>
				</div>
				@badgecomp.Badge(badgecomp.Props{
					Variant: badgecomp.VariantDefault,
					Class:   "bg-primary/10 text-primary",
				}) {
					{ thisMonth } this month
				}
			</div>
			<div class="flex items-center justify-center space-x-2 pt-2">
				@icon.TrendingUp(icon.Props{Size: 16, Class: "text-primary"})
				<span class="text-sm text-primary font-medium">Top Performer</span>
			</div>
		}
	}
}
```

### stats_010.templ

**Path:** `stats/stats_010.templ`

```templ
package stats

import (
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Stats010() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 p-6">
		@Stats010Card("$2.4M", "Annual Revenue")
		@Stats010Card("15.2K", "Happy Customers")
		@Stats010Card("98.7%", "Success Rate")
	</div>
}

templ Stats010Card(bigNumber, subtitle string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "p-8 text-center",
		}) {
			<div class="space-y-4">
				<div class={ "text-6xl md:text-7xl font-black" }>
					{ bigNumber }
				</div>
				<div class={ "text-lg font-medium text-primary/90" }>
					{ subtitle }
				</div>
				@badgecomp.Badge(badgecomp.Props{
					Variant: badgecomp.VariantSecondary,
					Class:   "bg-primary/70 text-primary-foreground",
				}) {
					+23% this year
				}
			</div>
		}
	}
}
```

### stats_011.templ

**Path:** `stats/stats_011.templ`

```templ
package stats

import (
	"fmt"
	badgecomp "github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
)

templ Stats011() {
	<div class="grid grid-cols-1 md:grid-cols-2 gap-8 p-6">
		@Stats011Card("127.4K", "Monthly Active Users", "Globe", 95, "text-primary", "border-primary/20")
		@Stats011Card("$890K", "Quarterly Revenue", "TrendingUp", 87, "text-primary", "border-primary/20")
		@Stats011Card("4.9/5", "Customer Rating", "Star", 98, "text-primary", "border-primary/20")
		@Stats011Card("99.9%", "System Uptime", "Shield", 100, "text-primary", "border-primary/20")
	</div>
}

templ Stats011Card(bigNumber, title, iconName string, progressValue int, iconColor, borderColor string) {
	@card.Card(card.Props{
		Class: "relative overflow-hidden " + borderColor + " border-2 transition-all duration-300",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-8 space-y-6",
		}) {
			<div class="flex items-start justify-between">
				<div class="space-y-2">
					<div class="text-5xl md:text-6xl font-black">
						{ bigNumber }
					</div>
					<div class="text-lg font-semibold">
						{ title }
					</div>
				</div>
				<div class={ "h-16 w-16 rounded-2xl bg-secondary flex items-center justify-center" }>
					switch iconName {
						case "Globe":
							@icon.Globe(icon.Props{Size: 28, Class: iconColor})
						case "TrendingUp":
							@icon.TrendingUp(icon.Props{Size: 28, Class: iconColor})
						case "Star":
							@icon.Star(icon.Props{Size: 28, Class: iconColor})
						case "Shield":
							@icon.Shield(icon.Props{Size: 28, Class: iconColor})
					}
				</div>
			</div>
			<div class="space-y-3">
				<div class="flex items-center justify-between">
					<span class="text-sm font-medium">Progress</span>
					<span class={ "text-sm font-bold " + iconColor }>{ fmt.Sprintf("%d", progressValue) }%</span>
				</div>
				@progress.Progress(progress.Props{
					Value: progressValue,
				})
			</div>
			@badgecomp.Badge(badgecomp.Props{
				Variant: badgecomp.VariantSecondary,
				Class:   "bg-primary/70 text-primary-foreground",
			}) {
				Target achieved
			}
		}
	}
}
```

## Table

### table_001.templ

**Path:** `table/table_001.templ`

```templ
package table

import (
	"github.com/templui/templui-pro/internal/ui/components/pagination"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ Table001() {
	<section class="w-full max-w-6xl mx-auto p-6 md:p-8">
		<div class="space-y-4">
			@Table001Header()
			@Table001Table()
			@Table001Pagination()
		</div>
	</section>
}

templ Table001Header() {
	<div>
		<h2 class="text-2xl font-bold tracking-tight">Team Members</h2>
		<p class="text-muted-foreground">A list of all team members including their name, email, department and status.</p>
	</div>
}

templ Table001Table() {
	<div class="rounded-md border">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						Name 
					}
					@table.Head() {
						Email 
					}
					@table.Head() {
						Department 
					}
					@table.Head() {
						Location 
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Joined 
					}
				}
			}
			@table.Body() {
				@Table001Row("Alex Johnson", "alex.johnson@example.com", "Engineering", "San Francisco", "Jan 2023")
				@Table001Row("Sarah Chen", "sarah.chen@example.com", "Design", "New York", "Mar 2023")
				@Table001Row("Michael Brown", "michael.brown@example.com", "Marketing", "London", "Feb 2023")
				@Table001Row("Emma Wilson", "emma.wilson@example.com", "Sales", "Tokyo", "Apr 2023")
				@Table001Row("James Miller", "james.miller@example.com", "Engineering", "Berlin", "Jan 2023")
				@Table001Row("Lisa Anderson", "lisa.anderson@example.com", "Product", "Sydney", "May 2023")
				@Table001Row("Robert Taylor", "robert.taylor@example.com", "Finance", "Toronto", "Mar 2023")
				@Table001Row("Maria Garcia", "maria.garcia@example.com", "HR", "Madrid", "Feb 2023")
			}
		}
	</div>
}

templ Table001Row(name, email, department, location, joined string) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium"}) {
			{ name }
		}
		@table.Cell() {
			{ email }
		}
		@table.Cell() {
			{ department }
		}
		@table.Cell() {
			{ location }
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			{ joined }
		}
	}
}

templ Table001Pagination() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<div class="text-sm text-muted-foreground text-center sm:text-left">
			Showing 1-8 of 32 entries
		</div>
		@pagination.Pagination() {
			@pagination.Content() {
				@pagination.Item() {
					@pagination.Previous(pagination.PreviousProps{
						Href:     "?page=1",
						Disabled: true,
					})
				}
				@pagination.Item() {
					@pagination.Link(pagination.LinkProps{
						Href:     "?page=1",
						IsActive: true,
					}) {
						1
					}
				}
				@pagination.Item() {
					@pagination.Link(pagination.LinkProps{
						Href: "?page=2",
					}) {
						2
					}
				}
				@pagination.Item(pagination.ItemProps{Class: "hidden sm:block"}) {
					@pagination.Link(pagination.LinkProps{
						Href: "?page=3",
					}) {
						3
					}
				}
				@pagination.Item(pagination.ItemProps{Class: "hidden sm:block"}) {
					@pagination.Link(pagination.LinkProps{
						Href: "?page=4",
					}) {
						4
					}
				}
				@pagination.Item() {
					@pagination.Ellipsis()
				}
				@pagination.Item() {
					@pagination.Next(pagination.NextProps{
						Href: "?page=2",
					})
				}
			}
		}
	</div>
}
```

### table_002.templ

**Path:** `table/table_002.templ`

```templ
package table

import (
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ Table002() {
	<section class="w-full max-w-6xl mx-auto p-6 md:p-8">
		<div class="space-y-4">
			@Table002Header()
			@Table002Table()
		</div>
	</section>
}

templ Table002Header() {
	<div class="flex items-center justify-between">
		<div>
			<h2 class="text-2xl font-bold tracking-tight">Products</h2>
			<p class="text-muted-foreground">Manage your product inventory</p>
		</div>
		@button.Button() {
			@icon.Plus(icon.Props{Size: 16, Class: "mr-2"})
			Add Product
		}
	</div>
}

templ Table002Table() {
	<div class="rounded-md border">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						Product 
					}
					@table.Head() {
						SKU 
					}
					@table.Head() {
						Price 
					}
					@table.Head() {
						Stock 
					}
					@table.Head() {
						Category 
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Actions 
					}
				}
			}
			@table.Body() {
				@Table002Row("Wireless Headphones", "WH-1001", "$89.99", "45", "Electronics")
				@Table002Row("Organic Coffee Beans", "CB-2002", "$24.99", "120", "Food & Beverage")
				@Table002Row("Yoga Mat Premium", "YM-3003", "$34.99", "67", "Sports & Fitness")
				@Table002Row("Smart Watch Pro", "SW-4004", "$299.99", "23", "Electronics")
				@Table002Row("Bamboo Water Bottle", "BW-5005", "$19.99", "89", "Home & Living")
				@Table002Row("LED Desk Lamp", "DL-6006", "$45.99", "56", "Office Supplies")
			}
		}
	</div>
}

templ Table002Row(product, sku, price, stock, category string) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium"}) {
			{ product }
		}
		@table.Cell() {
			{ sku }
		}
		@table.Cell() {
			{ price }
		}
		@table.Cell() {
			{ stock } units 
		}
		@table.Cell() {
			{ category }
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			<div class="flex items-center justify-end gap-2">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeSm,
				}) {
					@icon.Pencil(icon.Props{Size: 16})
				}
				@dropdown.Dropdown() {
					@dropdown.Trigger() {
						@button.Button(button.Props{
							Variant: button.VariantGhost,
							Size:    button.SizeSm,
						}) {
							@icon.EllipsisVertical(icon.Props{Size: 16})
						}
					}
					@dropdown.Content() {
						@dropdown.Item() {
							@icon.Copy(icon.Props{Size: 16, Class: "mr-2"})
							Duplicate
						}
						@dropdown.Item() {
							@icon.Archive(icon.Props{Size: 16, Class: "mr-2"})
							Archive
						}
						@dropdown.Separator()
						@dropdown.Item(dropdown.ItemProps{Class: "text-destructive focus:text-destructive"}) {
							@icon.Trash(icon.Props{Size: 16, Class: "mr-2"})
							Delete
						}
					}
				}
			</div>
		}
	}
}
```

### table_003.templ

**Path:** `table/table_003.templ`

```templ
package table

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/dropdown"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ Table003() {
	<section class="w-full max-w-6xl mx-auto p-6 md:p-8">
		<div class="space-y-4">
			@Table003Header()
			@Table003Table()
		</div>
	</section>
}

templ Table003Header() {
	<div class="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
		<div>
			<h2 class="text-2xl font-bold tracking-tight">Recent Orders</h2>
			<p class="text-muted-foreground">Track and manage your recent orders</p>
		</div>
		<div class="flex items-center gap-2">
			@dropdown.Dropdown() {
				@dropdown.Trigger() {
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Size:    button.SizeSm,
						Class:   "w-full sm:w-auto",
					}) {
						@icon.Funnel(icon.Props{Size: 16, Class: "mr-2"})
						<span class="hidden sm:inline">Filter Status</span>
						<span class="sm:hidden">Filter</span>
						@icon.ChevronDown(icon.Props{Size: 16, Class: "ml-2"})
					}
				}
				@dropdown.Content() {
					@dropdown.Label() {
						Filter by Status 
					}
					@dropdown.Separator()
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=all"}) {
						All Orders
					}
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=delivered"}) {
						Delivered
					}
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=processing"}) {
						Processing
					}
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=shipped"}) {
						Shipped
					}
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=pending"}) {
						Pending
					}
					@dropdown.Item(dropdown.ItemProps{Href: "?filter=cancelled"}) {
						Cancelled
					}
				}
			}
		</div>
	</div>
}

templ Table003Table() {
	<div class="rounded-md border">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						<a href="?sort=id&order=asc" class="inline-flex items-center gap-1 hover:text-foreground">
							<span class="hidden sm:inline">Order ID</span>
							<span class="sm:hidden">ID</span>
							@icon.ArrowUpDown(icon.Props{Size: 14, Class: "text-muted-foreground"})
						</a>
					}
					@table.Head(table.HeadProps{Class: "hidden sm:table-cell"}) {
						Customer 
					}
					@table.Head() {
						Product 
					}
					@table.Head() {
						<a href="?sort=date&order=desc" class="inline-flex items-center gap-1 hover:text-foreground">
							Date
							@icon.ArrowDown(icon.Props{Size: 14})
						</a>
					}
					@table.Head(table.HeadProps{Class: "hidden sm:table-cell"}) {
						<a href="?sort=amount&order=desc" class="inline-flex items-center gap-1 hover:text-foreground">
							Amount
							@icon.ArrowUpDown(icon.Props{Size: 14, Class: "text-muted-foreground"})
						</a>
					}
					@table.Head() {
						Status 
					}
				}
			}
			@table.Body() {
				@Table003Row("ORD-001", "John Smith", "Wireless Headphones", "2024-01-15", "$89.99", "delivered", badge.VariantDefault)
				@Table003Row("ORD-002", "Emily Johnson", "Smart Watch Pro", "2024-01-15", "$299.99", "processing", badge.VariantSecondary)
				@Table003Row("ORD-003", "Michael Chen", "Yoga Mat Premium", "2024-01-14", "$34.99", "shipped", badge.VariantDefault)
				@Table003Row("ORD-004", "Sarah Williams", "Organic Coffee Beans", "2024-01-14", "$24.99", "delivered", badge.VariantDefault)
				@Table003Row("ORD-005", "David Brown", "LED Desk Lamp", "2024-01-13", "$45.99", "cancelled", badge.VariantDestructive)
				@Table003Row("ORD-006", "Lisa Anderson", "Bamboo Water Bottle", "2024-01-13", "$19.99", "pending", badge.VariantOutline)
				@Table003Row("ORD-007", "Robert Taylor", "Wireless Keyboard", "2024-01-12", "$65.99", "processing", badge.VariantSecondary)
				@Table003Row("ORD-008", "Jennifer Davis", "Fitness Tracker", "2024-01-12", "$129.99", "shipped", badge.VariantDefault)
			}
		}
	</div>
}

templ Table003Row(orderID, customer, product, date, amount, status string, variant badge.Variant) {
	@table.Row() {
		@table.Cell(table.CellProps{Class: "font-medium"}) {
			{ orderID }
		}
		@table.Cell(table.CellProps{Class: "hidden sm:table-cell"}) {
			{ customer }
		}
		@table.Cell() {
			<div>
				<div>{ product }</div>
				<div class="text-sm text-muted-foreground sm:hidden">{ customer }</div>
			</div>
		}
		@table.Cell() {
			{ date }
		}
		@table.Cell(table.CellProps{Class: "hidden sm:table-cell"}) {
			{ amount }
		}
		@table.Cell() {
			<div class="flex items-center gap-2">
				@Table003StatusBadge(status, variant)
				<span class="text-sm font-medium sm:hidden">{ amount }</span>
			</div>
		}
	}
}

templ Table003StatusBadge(status string, variant badge.Variant) {
	@badge.Badge(badge.Props{Variant: variant}) {
		if status == "delivered" {
			Delivered
		} else if status == "processing" {
			Processing
		} else if status == "shipped" {
			Shipped
		} else if status == "cancelled" {
			Cancelled
		} else if status == "pending" {
			Pending
		}
	}
}
```

### table_004.templ

**Path:** `table/table_004.templ`

```templ
package table

import "github.com/templui/templui-pro/internal/ui/components/table"

templ Table004() {
	<section class="w-full max-w-4xl mx-auto p-6 md:p-8">
		<div class="space-y-6">
			@Table004Header()
			@Table004Table()
		</div>
	</section>
}

templ Table004Header() {
	<div class="space-y-2">
		<div class="flex items-start justify-between">
			<div>
				<h2 class="text-2xl font-bold tracking-tight">Invoice #INV-0042</h2>
				<p class="text-sm text-muted-foreground">Issued on January 15, 2024</p>
			</div>
			<div class="text-right">
				<p class="text-sm font-medium">Bill to:</p>
				<p class="text-sm text-muted-foreground">Acme Corporation</p>
				<p class="text-sm text-muted-foreground">123 Business Ave</p>
				<p class="text-sm text-muted-foreground">New York, NY 10001</p>
			</div>
		</div>
	</div>
}

templ Table004Table() {
	<div class="rounded-md border">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						Description 
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Quantity 
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Rate 
					}
					@table.Head(table.HeadProps{Class: "text-right"}) {
						Amount 
					}
				}
			}
			@table.Body() {
				@Table004Row("Website Design Services", "1", "$2,500.00", "$2,500.00")
				@Table004Row("Logo Design Package", "1", "$800.00", "$800.00")
				@Table004Row("Monthly Maintenance (3 months)", "3", "$150.00", "$450.00")
				@Table004Row("Stock Photography License", "10", "$25.00", "$250.00")
				@Table004Row("Domain Registration (2 years)", "2", "$15.00", "$30.00")
			}
			@table.Footer() {
				@Table004FooterRow("Subtotal", "$4,030.00", false)
				@Table004FooterRow("Tax (8.5%)", "$342.55", false)
				@Table004FooterRow("Total", "$4,372.55", true)
			}
		}
	</div>
}

templ Table004Row(description, quantity, rate, amount string) {
	@table.Row() {
		@table.Cell() {
			{ description }
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			{ quantity }
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			{ rate }
		}
		@table.Cell(table.CellProps{Class: "text-right font-medium"}) {
			{ amount }
		}
	}
}

templ Table004FooterRow(label, amount string, isTotal bool) {
	@table.Row() {
		@table.Cell(table.CellProps{Attributes: templ.Attributes{"colspan": "3"}}) {
			if isTotal {
				<span class="font-bold">{ label }</span>
			} else {
				{ label }
			}
		}
		@table.Cell(table.CellProps{Class: "text-right"}) {
			if isTotal {
				<span class="font-bold text-lg">{ amount }</span>
			} else {
				{ amount }
			}
		}
	}
}
```

### table_005.templ

**Path:** `table/table_005.templ`

```templ
package table

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/table"
)

templ Table005() {
	<section class="w-full max-w-6xl mx-auto p-6 md:p-8">
		<div class="space-y-4">
			@Table005Header()
			@Table005Table()
		</div>
	</section>
}

templ Table005Header() {
	<div>
		<h2 class="text-2xl font-bold tracking-tight">Team Directory</h2>
		<p class="text-muted-foreground">Browse and manage team member information</p>
	</div>
}

templ Table005Table() {
	<div class="rounded-md border">
		@table.Table() {
			@table.Header() {
				@table.Row() {
					@table.Head() {
						Member 
					}
					@table.Head(table.HeadProps{Class: "hidden sm:table-cell"}) {
						Role 
					}
					@table.Head(table.HeadProps{Class: "hidden md:table-cell"}) {
						Department 
					}
					@table.Head() {
						Status 
					}
					@table.Head(table.HeadProps{Class: "hidden lg:table-cell"}) {
						Email 
					}
				}
			}
			@table.Body() {
				@Table005RowWithAvatar("Alex Rivers", "/assets/img/avatar-gh-1.png", "Senior Developer", "Engineering", "active", "alex.rivers@example.com")
				@Table005Row("Jordan Blake", "JB", "Product Manager", "Product", "active", "jordan.blake@example.com")
				@Table005RowWithAvatar("Casey Morgan", "/assets/img/avatar-gh-3.png", "UX Designer", "Design", "active", "casey.morgan@example.com")
				@Table005RowWithAvatar("Drew Parker", "/assets/img/avatar-gh-4.png", "Marketing Lead", "Marketing", "away", "drew.parker@example.com")
				@Table005Row("Riley Quinn", "RQ", "DevOps Engineer", "Engineering", "active", "riley.quinn@example.com")
				@Table005RowWithAvatar("Avery Chen", "/assets/img/avatar-gh-6.png", "Data Analyst", "Analytics", "offline", "avery.chen@example.com")
				@Table005Row("Morgan Lee", "ML", "Customer Success", "Support", "active", "morgan.lee@example.com")
				@Table005RowWithAvatar("Taylor Kim", "/assets/img/avatar-gh-8.png", "Sales Manager", "Sales", "active", "taylor.kim@example.com")
			}
		}
	</div>
}

templ Table005Row(name, initials, role, department, status, email string) {
	@table.Row() {
		@table.Cell() {
			<div class="flex items-center gap-3">
				@avatar.Avatar() {
					@avatar.Fallback() {
						{ initials }
					}
				}
				<div>
					<div class="font-medium">{ name }</div>
					<div class="text-sm text-muted-foreground">{ "@" + getUsername(email) }</div>
					<div class="text-sm text-muted-foreground sm:hidden">{ role }</div>
				</div>
			</div>
		}
		@table.Cell(table.CellProps{Class: "hidden sm:table-cell"}) {
			{ role }
		}
		@table.Cell(table.CellProps{Class: "hidden md:table-cell"}) {
			{ department }
		}
		@table.Cell() {
			@Table005StatusBadge(status)
		}
		@table.Cell(table.CellProps{Class: "text-muted-foreground hidden lg:table-cell"}) {
			{ email }
		}
	}
}

templ Table005StatusBadge(status string) {
	if status == "active" {
		<div class="flex items-center gap-2">
			<span class="h-2 w-2 rounded-full bg-green-500"></span>
			<span class="text-sm">Active</span>
		</div>
	} else if status == "away" {
		<div class="flex items-center gap-2">
			<span class="h-2 w-2 rounded-full bg-yellow-500"></span>
			<span class="text-sm">Away</span>
		</div>
	} else {
		<div class="flex items-center gap-2">
			<span class="h-2 w-2 rounded-full bg-gray-500"></span>
			<span class="text-sm">Offline</span>
		</div>
	}
}

templ Table005RowWithAvatar(name, avatarSrc, role, department, status, email string) {
	@table.Row() {
		@table.Cell() {
			<div class="flex items-center gap-3">
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
						Alt: name,
					})
					@avatar.Fallback() {
						{ name[:1] }
					}
				}
				<div>
					<div class="font-medium">{ name }</div>
					<div class="text-sm text-muted-foreground">{ "@" + getUsername(email) }</div>
					<div class="text-sm text-muted-foreground sm:hidden">{ role }</div>
				</div>
			</div>
		}
		@table.Cell(table.CellProps{Class: "hidden sm:table-cell"}) {
			{ role }
		}
		@table.Cell(table.CellProps{Class: "hidden md:table-cell"}) {
			{ department }
		}
		@table.Cell() {
			@Table005StatusBadge(status)
		}
		@table.Cell(table.CellProps{Class: "text-muted-foreground hidden lg:table-cell"}) {
			{ email }
		}
	}
}

func getUsername(email string) string {
	// Simple function to extract username from email
	if idx := len(email); idx > 0 {
		for i, c := range email {
			if c == '@' {
				return email[:i]
			}
		}
	}
	return email
}
```

## Team

### team_001.templ

**Path:** `team/team_001.templ`

```templ
package team

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Team001() {
	<section class="py-24 bg-background">
		<div class="container mx-auto px-4">
			@Team001Header()
			@Team001TeamGrid()
		</div>
	</section>
}

templ Team001Header() {
	<div class="text-center mb-16">
		@badge.Badge() {
			Our Team
		}
		<h2 class="text-4xl md:text-5xl font-bold mb-6 mt-4">
			Meet the people behind the magic
		</h2>
		<p class="text-xl text-muted-foreground max-w-2xl mx-auto">
			Our diverse team brings together expertise from design, development, and business to create exceptional digital experiences.
		</p>
	</div>
}

templ Team001TeamGrid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
		@Team001TeamMember(
			"/assets/img/avatar-gh-1.png",
			"Sarah Johnson",
			"CEO & Founder",
			"Leading the vision and strategy for our platform. Former VP at TechCorp with 15+ years experience.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-2.png",
			"Michael Chen",
			"CTO",
			"Architecting scalable solutions. Previously lead engineer at major tech companies.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-3.png",
			"Emily Rodriguez",
			"Head of Design",
			"Creating beautiful and intuitive user experiences. Award-winning designer from top agencies.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-4.png",
			"David Kim",
			"Lead Developer",
			"Building robust applications. Full-stack expert with passion for clean code.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-5.png",
			"Jessica Park",
			"Product Manager",
			"Driving product strategy and user research. MBA from Stanford with product experience.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-6.png",
			"Alex Thompson",
			"Marketing Director",
			"Growing our community and brand. Digital marketing expert with proven track record.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-7.png",
			"Maria Garcia",
			"Customer Success",
			"Ensuring customer satisfaction and success. Former consultant with deep industry knowledge.",
		)
		@Team001TeamMember(
			"/assets/img/avatar-gh-1.png",
			"James Wilson",
			"Operations Manager",
			"Streamlining processes and operations. Operations expert from fast-growing startups.",
		)
	</div>
}

templ Team001TeamMember(imageSrc, name, role, description string) {
	@card.Card(card.Props{
		Class: "text-center hover:shadow-lg transition-shadow",
	}) {
		@card.Content() {
			<div class="mb-4">
				@avatar.Avatar(avatar.Props{
					Class: "w-24 h-24 mx-auto",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: imageSrc,
						Alt: name,
					})
				}
			</div>
			<h3 class="text-xl font-semibold mb-2">{ name }</h3>
			<p class="text-primary font-medium mb-3">{ role }</p>
			<p class="text-muted-foreground text-sm">{ description }</p>
		}
	}
}
```

### team_002.templ

**Path:** `team/team_002.templ`

```templ
package team

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Team002() {
	<section class="py-24 bg-muted/30">
		<div class="container mx-auto px-4">
			@Team002Header()
			@Team002LeadershipGrid()
		</div>
	</section>
}

templ Team002Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl md:text-5xl font-bold mb-6">
			Leadership Team
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Meet the visionary leaders driving innovation and growth at our company. With decades of combined experience, they guide our mission to transform digital experiences.
		</p>
	</div>
}

templ Team002LeadershipGrid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
		@Team002LeaderCard(
			"/assets/img/avatar-gh-1.png",
			"Sarah Johnson",
			"Chief Executive Officer",
			"Sarah brings 15+ years of leadership experience from Fortune 500 companies. She's passionate about building products that make a real difference in people's lives.",
			"@sarahjohnson",
			"sarah@company.com",
		)
		@Team002LeaderCard(
			"/assets/img/avatar-gh-2.png",
			"Michael Chen",
			"Chief Technology Officer",
			"Michael is a technology visionary with expertise in scalable architecture and AI. He previously led engineering teams at major tech companies.",
			"@michaelchen",
			"michael@company.com",
		)
		@Team002LeaderCard(
			"/assets/img/avatar-gh-3.png",
			"Emily Rodriguez",
			"Chief Design Officer",
			"Emily is an award-winning designer who believes that great design is invisible. She leads our design thinking and user experience strategy.",
			"@emilyrodriguez",
			"emily@company.com",
		)
		@Team002LeaderCard(
			"/assets/img/avatar-gh-4.png",
			"David Kim",
			"Chief Product Officer",
			"David combines deep technical knowledge with business acumen. He's responsible for our product strategy and roadmap execution.",
			"@davidkim",
			"david@company.com",
		)
		@Team002LeaderCard(
			"/assets/img/avatar-gh-5.png",
			"Jessica Park",
			"Chief Marketing Officer",
			"Jessica is a growth marketing expert who has scaled multiple startups. She leads our brand strategy and community building efforts.",
			"@jessicapark",
			"jessica@company.com",
		)
		@Team002LeaderCard(
			"/assets/img/avatar-gh-6.png",
			"Alex Thompson",
			"Chief Operations Officer",
			"Alex ensures our operations run smoothly as we scale. With an MBA from Wharton, he brings operational excellence to everything we do.",
			"@alexthompson",
			"alex@company.com",
		)
	</div>
}

templ Team002LeaderCard(imageSrc, name, role, bio, twitter, email string) {
	@card.Card(card.Props{
		Class: "shadow-lg hover:shadow-xl transition-shadow",
	}) {
		@card.Content() {
			<div class="flex items-start gap-4 mb-6">
				@avatar.Avatar(avatar.Props{
					Class: "w-16 h-16",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: imageSrc,
						Alt: name,
					})
				}
				<div class="flex-1">
					<h3 class="text-xl font-semibold mb-1">{ name }</h3>
					<p class="text-primary font-medium text-sm">{ role }</p>
				</div>
			</div>
			<p class="text-muted-foreground mb-6 leading-relaxed">{ bio }</p>
			<div class="flex items-center gap-4">
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "p-2",
				}) {
					@icon.Twitter(icon.Props{Size: 16})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "p-2",
				}) {
					@icon.Mail(icon.Props{Size: 16})
				}
				@button.Button(button.Props{
					Variant: button.VariantGhost,
					Size:    button.SizeIcon,
					Class:   "p-2",
				}) {
					@icon.Linkedin(icon.Props{Size: 16})
				}
			</div>
		}
	}
}
```

### team_003.templ

**Path:** `team/team_003.templ`

```templ
package team

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Team003() {
	<section class="py-24 bg-background">
		<div class="container mx-auto px-4">
			@Team003Header()
			@Team003TeamShowcase()
		</div>
	</section>
}

templ Team003Header() {
	<div class="text-center mb-16">
		@badge.Badge() {
			Team Showcase
		}
		<h2 class="text-4xl md:text-5xl font-bold mb-6 mt-4">
			The minds behind innovation
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Get to know the talented individuals who make our vision a reality. Each member brings unique skills and perspectives to our collaborative environment.
		</p>
	</div>
}

templ Team003TeamShowcase() {
	<div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
		@Team003MainProfile()
		@Team003TeamStats()
	</div>
	<div class="mt-16">
		@Team003TeamList()
	</div>
}

templ Team003MainProfile() {
	<div class="text-center lg:text-left">
		<div class="mb-8">
			@avatar.Avatar(avatar.Props{
				Class: "w-32 h-32 mx-auto lg:mx-0",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: "/assets/img/avatar-gh-1.png",
					Alt: "Sarah Johnson",
				})
			}
		</div>
		<h3 class="text-3xl font-bold mb-2">Sarah Johnson</h3>
		<p class="text-primary font-medium text-lg mb-4">CEO & Founder</p>
		<p class="text-muted-foreground mb-6 leading-relaxed">
			"Our team is our greatest asset. Every day, I'm inspired by the creativity, dedication, and passion that each member brings to their work. Together, we're not just building products – we're shaping the future of digital experiences."
		</p>
		<div class="grid grid-cols-3 gap-4 text-center">
			@Team003Stat("15+", "Years Experience")
			@Team003Stat("50+", "Team Members")
			@Team003Stat("100+", "Projects Delivered")
		</div>
	</div>
}

templ Team003TeamStats() {
	<div class="space-y-8">
		<div>
			<h4 class="text-2xl font-semibold mb-6">Our Values</h4>
			<div class="space-y-4">
				@Team003Value("Innovation First", "We constantly push boundaries and explore new possibilities to deliver cutting-edge solutions.")
				@Team003Value("Collaboration", "Great ideas come from diverse perspectives working together towards a common goal.")
				@Team003Value("Quality Focus", "We believe in doing things right the first time and never compromising on excellence.")
				@Team003Value("Customer Success", "Every decision we make is guided by how it will impact and benefit our customers.")
			</div>
		</div>
	</div>
}

templ Team003Stat(number, label string) {
	@card.Card(card.Props{
		Class: "bg-muted/50 text-center flex flex-col items-center justify-center",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-4",
		}) {
			<div class="text-2xl font-bold text-primary">{ number }</div>
			<div class="text-sm text-muted-foreground">{ label }</div>
		}
	}
}

templ Team003Value(title, description string) {
	<div class="border-l-4 border-primary pl-4">
		<h5 class="font-semibold mb-1">{ title }</h5>
		<p class="text-muted-foreground text-sm">{ description }</p>
	</div>
}

templ Team003TeamList() {
	<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-6">
		@Team003TeamMemberMini("/assets/img/avatar-gh-2.png", "Michael Chen", "CTO")
		@Team003TeamMemberMini("/assets/img/avatar-gh-3.png", "Emily Rodriguez", "Head of Design")
		@Team003TeamMemberMini("/assets/img/avatar-gh-4.png", "David Kim", "Lead Developer")
		@Team003TeamMemberMini("/assets/img/avatar-gh-5.png", "Jessica Park", "Product Manager")
		@Team003TeamMemberMini("/assets/img/avatar-gh-6.png", "Alex Thompson", "Marketing Director")
		@Team003TeamMemberMini("/assets/img/avatar-gh-7.png", "Maria Garcia", "Customer Success")
	</div>
}

templ Team003TeamMemberMini(imageSrc, name, role string) {
	<div class="text-center group">
		<div class="mb-3">
			@avatar.Avatar(avatar.Props{
				Class: "w-16 h-16 mx-auto group-hover:scale-105 transition-transform",
			}) {
				@avatar.Image(avatar.ImageProps{
					Src: imageSrc,
					Alt: name,
				})
			}
		</div>
		<h4 class="font-medium text-sm mb-1">{ name }</h4>
		<p class="text-xs text-muted-foreground">{ role }</p>
	</div>
}
```

### team_004.templ

**Path:** `team/team_004.templ`

```templ
package team

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Team004() {
	<section class="py-24 bg-gradient-to-b from-muted/50 to-background">
		<div class="container mx-auto px-4">
			@Team004Header()
			@Team004DepartmentCards()
		</div>
	</section>
}

templ Team004Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl md:text-5xl font-bold mb-6">
			Departments & Teams
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Our cross-functional teams work together seamlessly to deliver exceptional results. Each department brings specialized expertise while maintaining strong collaboration.
		</p>
	</div>
}

templ Team004DepartmentCards() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
		@Team004DepartmentCard(
			"Engineering",
			"Building robust and scalable solutions",
			"12",
			[]Team004_Member{
				{"/assets/img/avatar-gh-2.png", "Michael Chen", "CTO"},
				{"/assets/img/avatar-gh-4.png", "David Kim", "Lead Developer"},
				{"/assets/img/avatar-gh-1.png", "Sarah Wilson", "Backend Engineer"},
			},
		)
		@Team004DepartmentCard(
			"Design",
			"Creating beautiful and intuitive experiences",
			"8",
			[]Team004_Member{
				{"/assets/img/avatar-gh-3.png", "Emily Rodriguez", "Head of Design"},
				{"/assets/img/avatar-gh-5.png", "Jessica Park", "UX Designer"},
				{"/assets/img/avatar-gh-7.png", "Maria Garcia", "UI Designer"},
			},
		)
		@Team004DepartmentCard(
			"Product",
			"Driving product strategy and innovation",
			"6",
			[]Team004_Member{
				{"/assets/img/avatar-gh-6.png", "Alex Thompson", "Product Director"},
				{"/assets/img/avatar-gh-1.png", "Anna Lee", "Product Manager"},
				{"/assets/img/avatar-gh-2.png", "James Wilson", "Product Analyst"},
			},
		)
		@Team004DepartmentCard(
			"Marketing",
			"Growing our brand and community",
			"5",
			[]Team004_Member{
				{"/assets/img/avatar-gh-4.png", "Mark Johnson", "Marketing Director"},
				{"/assets/img/avatar-gh-6.png", "Lisa Chen", "Content Manager"},
				{"/assets/img/avatar-gh-3.png", "Tom Rodriguez", "Social Media"},
			},
		)
		@Team004DepartmentCard(
			"Sales",
			"Building relationships and driving growth",
			"7",
			[]Team004_Member{
				{"/assets/img/avatar-gh-5.png", "Jennifer Park", "Sales Director"},
				{"/assets/img/avatar-gh-7.png", "Robert Kim", "Account Executive"},
				{"/assets/img/avatar-gh-1.png", "Susan Davis", "Sales Development"},
			},
		)
		@Team004DepartmentCard(
			"Operations",
			"Ensuring seamless business operations",
			"4",
			[]Team004_Member{
				{"/assets/img/avatar-gh-2.png", "Kevin Lee", "Operations Director"},
				{"/assets/img/avatar-gh-4.png", "Nancy Wilson", "HR Manager"},
				{"/assets/img/avatar-gh-6.png", "Paul Thompson", "Finance Manager"},
			},
		)
	</div>
}

type Team004_Member struct {
	Avatar string
	Name   string
	Role   string
}

templ Team004DepartmentCard(department, description, memberCount string, members []Team004_Member) {
	@card.Card(card.Props{
		Class: "hover:shadow-lg transition-shadow",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="mb-4">
				@badge.Badge() {
					{ memberCount } members
				}
			</div>
			<h3 class="text-2xl font-bold mb-2">{ department }</h3>
			<p class="text-muted-foreground mb-6">{ description }</p>
			<div class="space-y-3 mb-6">
				for _, member := range members {
					<div class="flex items-center gap-3">
						@avatar.Avatar(avatar.Props{
							Class: "w-8 h-8",
						}) {
							@avatar.Image(avatar.ImageProps{
								Src: member.Avatar,
								Alt: member.Name,
							})
						}
						<div>
							<p class="font-medium text-sm">{ member.Name }</p>
							<p class="text-xs text-muted-foreground">{ member.Role }</p>
						</div>
					</div>
				}
			</div>
			@button.Button(button.Props{
				Variant: button.VariantOutline,
				Class:   "w-full",
			}) {
				<span class="flex items-center justify-center gap-2">
					View Team
					@icon.ArrowRight(icon.Props{Size: 16})
				</span>
			}
		}
	}
}
```

### team_005.templ

**Path:** `team/team_005.templ`

```templ
package team

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/button"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/utils"
)

templ Team005() {
	<section class="py-24 bg-background">
		<div class="container mx-auto px-4">
			@Team005Header()
			@Team005TeamGrid()
			@Team005JoinUs()
		</div>
	</section>
}

templ Team005Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl md:text-5xl font-bold mb-6">
			We're hiring!
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Join our growing team of talented individuals who are passionate about building the future. We offer competitive compensation, flexible work arrangements, and amazing growth opportunities.
		</p>
	</div>
}

templ Team005TeamGrid() {
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-16 items-stretch">
		@Team005TeamMember("/assets/img/avatar-gh-1.png", "Sarah Johnson", "CEO & Founder", true)
		@Team005TeamMember("/assets/img/avatar-gh-2.png", "Michael Chen", "CTO", true)
		@Team005TeamMember("/assets/img/avatar-gh-3.png", "Emily Rodriguez", "Head of Design", true)
		@Team005TeamMember("/assets/img/placeholder.svg", "You?", "Frontend Developer", false)
		@Team005TeamMember("/assets/img/avatar-gh-4.png", "David Kim", "Lead Developer", true)
		@Team005TeamMember("/assets/img/avatar-gh-5.png", "Jessica Park", "Product Manager", true)
		@Team005TeamMember("/assets/img/avatar-gh-6.png", "Alex Thompson", "Marketing Director", true)
		@Team005TeamMember("/assets/img/placeholder.svg", "You?", "UX Designer", false)
	</div>
}

templ Team005TeamMember(imageSrc, name, role string, isExisting bool) {
	@card.Card(card.Props{
		Class: utils.TwMerge(
			"flex items-center justify-center text-center transition-all hover:scale-105 h-full",
			utils.If(isExisting, "bg-primary/5"),
			utils.If(!isExisting, "bg-primary/10 hover:bg-primary/20"),
		),
	}) {
		@card.Content(card.ContentProps{
			Class: "p-4",
		}) {
			<div class="mb-4">
				if isExisting {
					@avatar.Avatar(avatar.Props{
						Class: "w-20 h-20 mx-auto",
					}) {
						@avatar.Image(avatar.ImageProps{
							Src: imageSrc,
							Alt: name,
						})
					}
				} else {
					<div class="w-20 h-20 mx-auto bg-primary/10 rounded-full flex items-center justify-center">
						@icon.Plus(icon.Props{
							Size:  32,
							Class: "text-primary",
						})
					</div>
				}
			</div>
			<h3
				class={
					"text-lg font-semibold mb-2",
					templ.KV("text-foreground", isExisting),
					templ.KV("text-primary", !isExisting),
				}
			>
				{ name }
			</h3>
			<p
				class={
					"text-sm",
					templ.KV("text-muted-foreground", isExisting),
					templ.KV("text-primary/80", !isExisting),
				}
			>
				{ role }
			</p>
			if !isExisting {
				<div class="mt-4">
					@button.Button(button.Props{
						Variant: button.VariantOutline,
						Size:    button.SizeIcon,
						Class:   "text-primary border-primary/30 hover:bg-primary hover:text-primary-foreground",
					}) {
						@icon.ArrowRight(icon.Props{Size: 16})
					}
				</div>
			}
		}
	}
}

templ Team005JoinUs() {
	@card.Card(card.Props{
		Class: "bg-primary/5 max-w-4xl mx-auto text-center",
	}) {
		@card.Content() {
			<h3 class="text-3xl font-bold mb-4">Ready to join our team?</h3>
			<p class="text-muted-foreground text-lg mb-8">
				We're always looking for talented people who share our passion for innovation and excellence. Check out our open positions and become part of our growing family.
			</p>
			<div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
				@Team005Benefit("Remote-First", "Work from anywhere in the world with flexible hours")
				@Team005Benefit("Great Benefits", "Health insurance, unlimited PTO, and professional development")
				@Team005Benefit("Growth Opportunities", "Learn from experts and advance your career with us")
			</div>
			<div class="flex flex-col sm:flex-row gap-4 justify-center">
				@button.Button() {
					<span class="flex items-center gap-2">
						View Open Positions
						@icon.ExternalLink(icon.Props{Size: 16})
					</span>
				}
				@button.Button(button.Props{
					Variant: button.VariantOutline,
				}) {
					<span class="flex items-center gap-2">
						Learn More About Us
						@icon.ArrowRight(icon.Props{Size: 16})
					</span>
				}
			</div>
		}
	}
}

templ Team005Benefit(title, description string) {
	<div class="text-center">
		<h4 class="font-semibold mb-2">{ title }</h4>
		<p class="text-sm text-muted-foreground">{ description }</p>
	</div>
}
```

## Testimonial

### testimonial_001.templ

**Path:** `testimonial/testimonial_001.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/rating"
)

templ Testimonial001() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="max-w-7xl py-16 lg:py-24">
			@Testimonial001Header()
			@Testimonial001Grid()
		</div>
	</div>
}

templ Testimonial001Header() {
	<div class="text-center max-w-3xl mx-auto mb-16">
		<h2 class="text-3xl font-bold tracking-tight sm:text-4xl">
			Trusted by thousands of developers
		</h2>
		<p class="mt-4 text-xl text-muted-foreground">
			See what our customers have to say about our components and platform.
		</p>
	</div>
}

templ Testimonial001Grid() {
	<div class="grid gap-8 lg:grid-cols-3 sm:grid-cols-2">
		@Testimonial001Card(3.0, "These components have saved me countless hours of work. The API is intuitive and the documentation is excellent. Highly recommended!", "Sarah Johnson", "Lead Developer, TechCorp", "/assets/img/avatar-gh-1.png", "SJ")
		@Testimonial001Card(5.0, "The attention to detail in these components is impressive. Everything from accessibility to performance has been thoroughly considered.", "David Chen", "Frontend Architect, StartupX", "/assets/img/avatar-gh-4.png", "DC")
		@Testimonial001Card(4.0, "Our team has been able to ship features faster than ever before thanks to this component library. The customization options are fantastic.", "Michelle Rodriguez", "CTO, BuildFast", "", "MR")
	</div>
}

templ Testimonial001Card(ratingValue float64, content, name, role, avatarSrc, initials string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "h-full flex flex-col justify-between gap-6 p-6",
		}) {
			<div class="space-y-4">
				@rating.Rating(rating.Props{
					Value:    ratingValue,
					ReadOnly: true,
				}) {
					@rating.Group() {
						for i := 1; i <= 5; i++ {
							@rating.Item(rating.ItemProps{
								Value: i,
							})
						}
					}
				}
				<p class="text-muted-foreground leading-relaxed">
					{ content }
				</p>
			</div>
			@Testimonial001Author(name, role, avatarSrc, initials)
		}
	}
}

templ Testimonial001Author(name, role, avatarSrc, initials string) {
	<div class="flex gap-3 items-center">
		@avatar.Avatar() {
			@avatar.Image(avatar.ImageProps{
				Src: avatarSrc,
				Alt: name,
			})
			@avatar.Fallback() {
				{ initials }
			}
		}
		<div>
			<div class="font-semibold">{ name }</div>
			<div class="text-sm text-muted-foreground">{ role }</div>
		</div>
	</div>
}
```

### testimonial_002.templ

**Path:** `testimonial/testimonial_002.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Testimonial002() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Testimonial002Header()
			@Testimonial002HeroTestimonial()
			@Testimonial002SideTestimonials()
		</div>
	</div>
}

templ Testimonial002Header() {
	<div class="text-center mb-12">
		@badge.Badge(badge.Props{
			Class: "mb-4",
		}) {
			@icon.Heart(icon.Props{Size: 14})
			Customer Love
		}
		<h2 class="text-4xl font-bold mb-4">
			What our customers say
		</h2>
		<p class="text-xl text-muted-foreground max-w-2xl mx-auto">
			Join thousands of satisfied customers who trust our platform
		</p>
	</div>
}

templ Testimonial002HeroTestimonial() {
	<div class="mb-16">
		@card.Card(card.Props{
			Class: "bg-card/80 backdrop-blur-sm border-2 border-primary/20",
		}) {
			@card.Content(card.ContentProps{
				Class: "p-12 text-center",
			}) {
				<div class="mb-8">
					@icon.Quote(icon.Props{Size: 48, Class: "mx-auto mb-6"})
					<blockquote class="text-2xl font-medium leading-relaxed mb-8">
						"This platform has completely transformed how we build and deploy applications. The developer experience is unmatched, and our team productivity has increased by 300%."
					</blockquote>
				</div>
				<div class="flex items-center justify-center gap-4">
					@avatar.Avatar(avatar.Props{
						Class: "h-16 w-16",
					}) {
						@avatar.Image(avatar.ImageProps{
							Src: "/assets/img/avatar-gh-1.png",
						})
					}
					<div class="text-left">
						<div class="font-semibold text-lg">Alex Chen</div>
						<div class="text-muted-foreground">CTO, TechFlow Inc.</div>
						<div class="flex items-center gap-1 mt-1">
							for i := 0; i < 5; i++ {
								@icon.Star(icon.Props{Size: 16, Class: "text-yellow-500 fill-yellow-500"})
							}
						</div>
					</div>
				</div>
			}
		}
	</div>
}

templ Testimonial002SideTestimonials() {
	<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
		@Testimonial002SmallCard("Game changer for our startup!", "Emma Wilson", "Founder, StartupLab", "/assets/img/avatar-gh-2.png")
		@Testimonial002SmallCard("Best investment we've made this year.", "Michael Brown", "Lead Dev, CodeBase", "/assets/img/avatar-gh-3.png")
		@Testimonial002SmallCard("Incredible support and documentation.", "Sarah Davis", "PM, WebCorp", "/assets/img/avatar-gh-5.png")
	</div>
}

templ Testimonial002SmallCard(quote, name, title, avatarSrc string) {
	@card.Card() {
		@card.Content(card.ContentProps{
			Class: "p-6",
		}) {
			<div class="flex items-center gap-1 mb-4">
				for i := 0; i < 5; i++ {
					@icon.Star(icon.Props{Size: 14, Class: "text-yellow-500 fill-yellow-500"})
				}
			</div>
			<p class="text-sm text-muted-foreground mb-4 italic">
				"{ quote }"
			</p>
			<div class="flex items-center gap-3">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div>
					<div class="font-medium text-sm">{ name }</div>
					<div class="text-xs text-muted-foreground">{ title }</div>
				</div>
			</div>
		}
	}
}
```

### testimonial_003.templ

**Path:** `testimonial/testimonial_003.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/separator"
)

templ Testimonial003() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl w-full">
			@Testimonial003Header()
			@Testimonial003Content()
		</div>
	</div>
}

templ Testimonial003Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl font-bold mb-6">
			Trusted by Industry Leaders
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			From startups to Fortune 500 companies, developers worldwide choose our platform
		</p>
	</div>
}

templ Testimonial003Content() {
	<div class="space-y-16">
		@Testimonial003CompanyLogos()
		@Testimonial003ScrollingTestimonials()
		@Testimonial003Stats()
	</div>
}

templ Testimonial003CompanyLogos() {
	<div class="text-center">
		<p class="text-sm text-muted-foreground mb-8">Trusted by companies like</p>
		<div class="flex items-center justify-center gap-8 md:gap-12 flex-wrap opacity-60">
			<div class="font-bold text-2xl">TechCorp</div>
			<div class="font-bold text-2xl">StartupX</div>
			<div class="font-bold text-2xl">BuildFast</div>
			<div class="font-bold text-2xl">DevFlow</div>
			<div class="font-bold text-2xl">CodeBase</div>
		</div>
	</div>
}

templ Testimonial003ScrollingTestimonials() {
	<div class="overflow-auto">
		<div class="flex gap-6">
			@Testimonial003TestimonialCard("The best developer experience I've ever had. Everything just works!", "Jennifer Kim", "Senior Developer", "/assets/img/avatar-gh-1.png")
			@Testimonial003TestimonialCard("Our deployment time went from hours to minutes. Incredible!", "Marcus Johnson", "DevOps Engineer", "/assets/img/avatar-gh-2.png")
			@Testimonial003TestimonialCard("Clean, intuitive, and powerful. Exactly what we needed.", "Lisa Zhang", "Tech Lead", "/assets/img/avatar-gh-3.png")
			@Testimonial003TestimonialCard("Customer support is outstanding. They really care.", "David Miller", "CTO", "/assets/img/avatar-gh-4.png")
			@Testimonial003TestimonialCard("Saved us thousands in development costs already.", "Rachel Green", "Product Manager", "/assets/img/avatar-gh-5.png")
		</div>
	</div>
}

templ Testimonial003TestimonialCard(quote, name, title, avatarSrc string) {
	@card.Card(card.Props{
		Class: "min-w-80 bg-gradient-to-br from-bg to-muted/30",
	}) {
		@card.Content() {
			<div class="flex items-start gap-3 mb-4">
				@icon.Quote(icon.Props{Size: 20, Class: "mt-1"})
				<p class="text-sm leading-relaxed italic">
					{ quote }
				</p>
			</div>
			@separator.Separator(separator.Props{Class: "my-4"})
			<div class="flex items-center gap-3">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div>
					<div class="font-medium text-sm">{ name }</div>
					<div class="text-xs text-muted-foreground">{ title }</div>
				</div>
			</div>
		}
	}
}

templ Testimonial003Stats() {
	<div class="grid gap-8 md:grid-cols-3 text-center">
		<div>
			<div class="text-4xl font-bold mb-2">50K+</div>
			<div class="text-muted-foreground">Happy Developers</div>
		</div>
		<div>
			<div class="text-4xl font-bold mb-2">98%</div>
			<div class="text-muted-foreground">Satisfaction Rate</div>
		</div>
		<div>
			<div class="text-4xl font-bold mb-2">24/7</div>
			<div class="text-muted-foreground">Support Available</div>
		</div>
	</div>
}
```

### testimonial_004.templ

**Path:** `testimonial/testimonial_004.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/aspectratio"
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/rating"
)

templ Testimonial004() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 bg-muted/20">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Testimonial004Header()
			@Testimonial004VideoTestimonials()
		</div>
	</div>
}

templ Testimonial004Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl font-bold mb-6">
			Real Stories, Real Results
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Hear directly from our customers about their success stories
		</p>
	</div>
}

templ Testimonial004VideoTestimonials() {
	<div class="grid gap-8 lg:grid-cols-2">
		@Testimonial004VideoCard("How we scaled from 10 to 1000 users", "Jessica Parker", "CEO, GrowthCo", "/assets/img/avatar-gh-1.png", 4.2, "Startup Success", "/assets/img/placeholder.svg")
		@Testimonial004VideoCard("Reducing deployment time by 90%", "Tom Wilson", "Lead DevOps", "/assets/img/avatar-gh-2.png", 5.0, "Technical Excellence", "/assets/img/placeholder.svg")
		@Testimonial004VideoCard("Building better UIs faster", "Maria Garcia", "Design Lead", "/assets/img/avatar-gh-3.png", 4.3, "Design Innovation", "/assets/img/placeholder.svg")
		@Testimonial004VideoCard("Enterprise security made simple", "Robert Chen", "CISO", "/assets/img/avatar-gh-6.png", 3.2, "Security Focus", "/assets/img/placeholder.svg")
	</div>
}

templ Testimonial004VideoCard(title, name, position, avatarSrc string, ratingValue float64, category string, imgSrc string) {
	@card.Card(card.Props{
		Class: "group hover:shadow-xl transition-all duration-300 overflow-hidden",
	}) {
		@aspectratio.AspectRatio(aspectratio.Props{
			Ratio: aspectratio.RatioVideo,
		}) {
			<img
				src={ imgSrc }
				alt="Card image"
				class="h-full w-full object-cover"
			/>
		}
		@card.Content() {
			@rating.Rating(rating.Props{
				Value:     ratingValue,
				ReadOnly:  true,
				Precision: 0.1,
				Class:     "mb-4",
			}) {
				@rating.Group() {
					for i := 1; i <= 5; i++ {
						@rating.Item(rating.ItemProps{
							Value: i,
							Style: rating.StyleStar,
						})
					}
				}
			}
			<h3 class="text-lg font-semibold mb-3 group-hover:text-primary transition-colors">
				{ title }
			</h3>
			<div class="flex items-center gap-3">
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div>
					<div class="font-medium">{ name }</div>
					<div class="text-sm text-muted-foreground">{ position }</div>
				</div>
			</div>
		}
	}
}
```

### testimonial_005.templ

**Path:** `testimonial/testimonial_005.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Testimonial005() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-7xl w-full">
			@Testimonial005Header()
			@Testimonial005WallOfLove()
		</div>
	</div>
}

templ Testimonial005Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl font-bold mb-6">
			Wall of Love
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Quick thoughts from our amazing community
		</p>
	</div>
}

templ Testimonial005WallOfLove() {
	<div class="grid gap-4 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
		@Testimonial005Tweet("Just shipped our MVP in 2 weeks using this platform. Mind blown! 🤯", "Alex", "@alexdev", "/assets/img/avatar-gh-1.png")
		@Testimonial005Tweet("Best documentation I've ever seen. Crystal clear examples.", "Sarah", "@sarahcodes", "/assets/img/avatar-gh-2.png")
		@Testimonial005Tweet("The component library is pure gold. Saved me hours!", "Mike", "@mikebuild", "/assets/img/avatar-gh-3.png")
		@Testimonial005Tweet("Customer support replied in 5 minutes. Incredible! ⚡", "Emma", "@emmatech", "/assets/img/avatar-gh-4.png")
		@Testimonial005Tweet("Finally, a platform that just works out of the box.", "David", "@davidops", "/assets/img/avatar-gh-5.png")
		@Testimonial005Tweet("Our team productivity increased 3x since we started using this.", "Lisa", "@lisapm", "/assets/img/avatar-gh-6.png")
		@Testimonial005Tweet("Clean code, great performance, amazing DX. What more could you want?", "Tom", "@tomfull", "/assets/img/avatar-gh-7.png")
		@Testimonial005Tweet("Migrated our entire stack in one weekend. Seamless! 🚀", "Rachel", "@rachdev", "/assets/img/avatar-gh-1.png")
		@Testimonial005Tweet("The type safety is incredible. No more runtime errors!", "James", "@jamesgo", "/assets/img/avatar-gh-2.png")
		@Testimonial005Tweet("Zero config deployment. It really just works!", "Anna", "@annacloud", "/assets/img/avatar-gh-3.png")
		@Testimonial005Tweet("Best investment for our startup this year. Hands down.", "Chris", "@chrisstart", "/assets/img/avatar-gh-4.png")
		@Testimonial005Tweet("The community is so helpful and welcoming. Love it! ❤️", "Maya", "@mayaui", "/assets/img/avatar-gh-5.png")
	</div>
}

templ Testimonial005Tweet(content, name, handle, avatarSrc string) {
	@card.Card() {
		@card.Content() {
			<div class="flex items-start gap-3 mb-3">
				@avatar.Avatar(avatar.Props{
					Class: "h-8 w-8",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div class="flex-1 min-w-0">
					<div class="flex items-center gap-2">
						<span class="font-medium text-sm truncate">{ name }</span>
						@badge.Badge(badge.Props{
							Variant: badge.VariantSecondary,
							Class:   "text-xs px-1.5 py-0.5",
						}) {
							@icon.Check(icon.Props{Size: 10})
						}
					</div>
					<div class="text-xs text-muted-foreground">{ handle }</div>
				</div>
				@icon.Twitter(icon.Props{Size: 16, Class: "text-muted-foreground"})
			</div>
			<p class="text-sm leading-relaxed">
				{ content }
			</p>
			<div class="flex items-center gap-4 mt-3 text-muted-foreground">
				<div class="flex items-center gap-1 text-xs">
					@icon.Heart(icon.Props{Size: 12})
					<span>{ "24" }</span>
				</div>
				<div class="flex items-center gap-1 text-xs">
					@icon.MessageCircle(icon.Props{Size: 12})
					<span>{ "5" }</span>
				</div>
				<div class="flex items-center gap-1 text-xs">
					@icon.Repeat(icon.Props{Size: 12})
					<span>{ "8" }</span>
				</div>
			</div>
		}
	}
}
```

### testimonial_006.templ

**Path:** `testimonial/testimonial_006.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/progress"
	"strconv"
)

templ Testimonial006() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10 bg-gradient-to-b from-background to-muted/50">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Testimonial006Header()
			@Testimonial006CaseStudies()
		</div>
	</div>
}

templ Testimonial006Header() {
	<div class="text-center mb-16">
		@badge.Badge(badge.Props{
			Variant: badge.VariantDefault,
			Class:   "mb-4",
		}) {
			@icon.TrendingUp(icon.Props{Size: 14})
			Case Studies
		}
		<h2 class="text-4xl font-bold mb-6">
			Proven Results & Impact
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Real metrics from companies that transformed their development process
		</p>
	</div>
}

templ Testimonial006CaseStudies() {
	<div class="grid gap-8 lg:grid-cols-2">
		@Testimonial006CaseStudy(
			"TechFlow Inc.",
			"Reduced deployment time from 4 hours to 15 minutes",
			"Jennifer Chen",
			"VP of Engineering",
			"/assets/img/avatar-gh-1.png",
			[]Testimonial006_Metric{
				{Label: "Bug Reduction", Before: 15, After: 3, Unit: "%", Value: 80},
				{Label: "Deployment Speed", Before: 240, After: 15, Unit: "min", Value: 100},
				{Label: "Developer Productivity", Before: 100, After: 280, Unit: "%", Value: 89},
			},
		)
		@Testimonial006CaseStudy(
			"StartupLab",
			"Scaled from 1K to 100K users without infrastructure changes",
			"Marcus Rodriguez",
			"CTO",
			"/assets/img/avatar-gh-2.png",
			[]Testimonial006_Metric{
				{Label: "User Scale", Before: 1000, After: 100000, Unit: "users", Value: 100},
				{Label: "Infrastructure Cost", Before: 100, After: 120, Unit: "%", Value: 87},
				{Label: "Response Time", Before: 2.5, After: 0.8, Unit: "s", Value: 90},
			},
		)
	</div>
}

type Testimonial006_Metric struct {
	Label  string
	Before float64
	After  float64
	Unit   string
	Value  int // This is used for the progress bar value
}

templ Testimonial006CaseStudy(company, headline, name, title, avatarSrc string, metrics []Testimonial006_Metric) {
	@card.Card(card.Props{
		Class: "overflow-hidden border-primary/20",
	}) {
		@card.Content(card.ContentProps{
			Class: "p-8",
		}) {
			<div class="flex items-center gap-3 mb-6">
				@avatar.Avatar(avatar.Props{
					Class: "h-16 w-16",
				}) {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div>
					<div class="font-semibold text-lg">{ name }</div>
					<div class="text-muted-foreground">{ title }</div>
					<div class="font-medium">{ company }</div>
				</div>
			</div>
			<blockquote class="text-lg font-medium mb-8 italic border-l-4 border-primary pl-4">
				"{ headline }"
			</blockquote>
			<div class="space-y-6">
				<h4 class="font-semibold text-sm uppercase tracking-wide text-muted-foreground">Key Metrics</h4>
				for _, metric := range metrics {
					@Testimonial006MetricRow(metric.Label, metric.Before, metric.After, metric.Unit, metric.Value)
				}
			</div>
		}
	}
}

templ Testimonial006MetricRow(label string, before, after float64, unit string, value int) {
	<div class="space-y-2">
		<div class="flex items-center justify-between text-sm">
			<span class="font-medium">{ label }</span>
			<div class="flex items-center gap-3">
				<span class="text-muted-foreground">{ strconv.FormatFloat(before, 'f', -1, 64) }{ unit }</span>
				@icon.ArrowRight(icon.Props{Size: 14, Class: "text-muted-foreground"})
				<span class="font-medium">{ strconv.FormatFloat(after, 'f', -1, 64) }{ unit }</span>
			</div>
		</div>
		@progress.Progress(progress.Props{
			Value: value,
			// Max:   100,
		})
	</div>
}
```

### testimonial_007.templ

**Path:** `testimonial/testimonial_007.templ`

```templ
package testimonial

import (
	"github.com/templui/templui-pro/internal/ui/components/avatar"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/carousel"
	"github.com/templui/templui-pro/internal/ui/components/icon"
	"github.com/templui/templui-pro/internal/ui/components/rating"
)

templ Testimonial007() {
	<div class="flex min-h-svh w-full items-center justify-center p-6 md:p-10">
		<div class="py-16 lg:py-24 max-w-6xl w-full">
			@Testimonial007Header()
			@Testimonial007CarouselSection()
		</div>
	</div>
}

templ Testimonial007Header() {
	<div class="text-center mb-16">
		<h2 class="text-4xl font-bold mb-6">
			Stories from Our Community
		</h2>
		<p class="text-xl text-muted-foreground max-w-3xl mx-auto">
			Discover how developers worldwide are building amazing things with our platform
		</p>
	</div>
}

templ Testimonial007CarouselSection() {
	@carousel.Carousel(carousel.Props{
		Class: "max-w-4xl mx-auto pb-12",
	}) {
		@carousel.Content() {
			@carousel.Item() {
				@Testimonial007Slide(
					"This platform has completely transformed our development workflow. We're shipping features 3x faster than before and our team loves the developer experience.",
					"Alex Thompson",
					"Engineering Director",
					"TechFlow Inc.",
					"/assets/img/avatar-gh-1.png",
					5.0,
				)
			}
			@carousel.Item() {
				@Testimonial007Slide(
					"The component library is incredible. Everything is so well thought out and the documentation is fantastic. It's saved us months of development time.",
					"Sarah Chen",
					"Lead Frontend Developer",
					"BuildFast Startup",
					"/assets/img/avatar-gh-2.png",
					5.0,
				)
			}
			@carousel.Item() {
				@Testimonial007Slide(
					"Best investment we've made for our development stack. The performance is outstanding and the customization options are endless.",
					"Michael Rodriguez",
					"CTO",
					"InnovateNow",
					"/assets/img/avatar-gh-3.png",
					4.9,
				)
			}
			@carousel.Item() {
				@Testimonial007Slide(
					"As a solo developer, this platform has been a game-changer. I can build professional-grade applications in a fraction of the time.",
					"Emma Davis",
					"Full Stack Developer",
					"Freelancer",
					"/assets/img/avatar-gh-4.png",
					5.0,
				)
			}
			@carousel.Item() {
				@Testimonial007Slide(
					"The attention to detail in accessibility and performance is remarkable. Our users have noticed the difference immediately.",
					"David Kim",
					"Product Manager",
					"UserFirst Co.",
					"/assets/img/avatar-gh-5.png",
					4.8,
				)
			}
		}
		@carousel.Previous()
		@carousel.Next()
		@carousel.Indicators(carousel.IndicatorsProps{
			Count: 5,
		})
	}
}

templ Testimonial007Slide(quote, name, title, company, avatarSrc string, ratingValue float64) {
	@card.Card(card.Props{
		Class: "w-full bg-gradient-to-br from-primary/5 to-secondary/5 border-0 shadow-lg",
	}) {
		@card.Content(card.ContentProps{
			Class: "h-full flex flex-col justify-between p-8 md:p-12",
		}) {
			<div class="flex-1 flex flex-col justify-center">
				@icon.Quote(icon.Props{Size: 32, Class: "text-primary mb-6"})
				<blockquote class="text-lg md:text-xl lg:text-2xl font-medium leading-relaxed text-center mb-8">
					"{ quote }"
				</blockquote>
			</div>
			<div class="flex flex-col items-center space-y-4">
				@avatar.Avatar() {
					@avatar.Image(avatar.ImageProps{
						Src: avatarSrc,
					})
				}
				<div class="text-center md:text-left">
					<div class="font-semibold text-lg">{ name }</div>
					<div class="text-muted-foreground">{ title }</div>
					<div class="text-sm font-medium text-primary">{ company }</div>
				</div>
				@rating.Rating(rating.Props{
					Value:     ratingValue,
					ReadOnly:  true,
					Precision: 0.1,
					Class:     "text-primary",
				}) {
					@rating.Group() {
						for i := 1; i <= 5; i++ {
							@rating.Item(rating.ItemProps{
								Value: i,
								Style: rating.StyleStar,
							})
						}
					}
				}
			</div>
		}
	}
}
```

## Timeline

### timeline_001.templ

**Path:** `timeline/timeline_001.templ`

```templ
package timeline

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
)

templ Timeline001() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Timeline001Header()
			@Timeline001Content()
		</div>
	</section>
}

templ Timeline001Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Our Journey
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Follow our path from inception to innovation, marking every significant milestone along the way.
		</p>
	</div>
}

templ Timeline001Content() {
	<div class="relative max-w-4xl mx-auto">
		<!-- Vertical Line -->
		<div class="absolute left-8 md:left-1/2 top-0 bottom-0 w-px bg-border -translate-x-1/2"></div>
		<!-- Timeline Items -->
		<div class="space-y-12">
			@Timeline001Item("2024", "Series A Funding", "Secured $10M in Series A funding to accelerate product development and market expansion.", true)
			@Timeline001Item("2023", "Product Launch", "Successfully launched our flagship product with overwhelming positive response from early adopters.", false)
			@Timeline001Item("2022", "Team Expansion", "Grew from 5 to 25 talented individuals, building a world-class engineering and design team.", true)
			@Timeline001Item("2021", "Company Founded", "Started with a simple idea and a passion to solve real-world problems through innovative technology.", false)
		</div>
	</div>
}

templ Timeline001Item(year string, title string, description string, isLeft bool) {
	<div class="relative flex items-center">
		if isLeft {
			<!-- Left Side Item (Desktop) -->
			<div class="hidden md:flex md:w-1/2 md:justify-end md:pr-8">
				<div class="max-w-md">
					@Timeline001ItemContent(year, title, description, true)
				</div>
			</div>
			<!-- Center Dot -->
			<div class="absolute left-8 md:left-1/2 w-4 h-4 bg-primary rounded-full -translate-x-1/2 z-10">
				<div class="w-4 h-4 bg-primary rounded-full animate-ping absolute"></div>
			</div>
			<!-- Right Side Spacer (Desktop) -->
			<div class="hidden md:block md:w-1/2"></div>
		} else {
			<!-- Left Side Spacer (Desktop) -->
			<div class="hidden md:block md:w-1/2"></div>
			<!-- Center Dot -->
			<div class="absolute left-8 md:left-1/2 w-4 h-4 bg-primary rounded-full -translate-x-1/2 z-10">
				<div class="w-4 h-4 bg-primary rounded-full animate-ping absolute"></div>
			</div>
			<!-- Right Side Item (Desktop) -->
			<div class="hidden md:flex md:w-1/2 md:pl-8">
				<div class="max-w-md">
					@Timeline001ItemContent(year, title, description, false)
				</div>
			</div>
		}
		<!-- Mobile Layout -->
		<div class="md:hidden flex w-full pl-16">
			@Timeline001ItemContent(year, title, description, false)
		</div>
	</div>
}

templ Timeline001ItemContent(year string, title string, description string, alignRight bool) {
	if alignRight {
		@card.Card(card.Props{
			Class: "text-right",
		}) {
			@card.Content() {
				<div class="inline-flex mb-3 ml-auto">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
					}) {
						{ year }
					}
				</div>
				<h3 class="text-xl font-semibold mb-2">{ title }</h3>
				<p class="text-muted-foreground text-sm">{ description }</p>
			}
		}
	} else {
		@card.Card() {
			@card.Content() {
				<div class="inline-flex mb-3">
					@badge.Badge(badge.Props{
						Variant: badge.VariantSecondary,
					}) {
						{ year }
					}
				</div>
				<h3 class="text-xl font-semibold mb-2">{ title }</h3>
				<p class="text-muted-foreground text-sm">{ description }</p>
			}
		}
	}
}
```

### timeline_002.templ

**Path:** `timeline/timeline_002.templ`

```templ
package timeline

import (
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Timeline002() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Timeline002Header()
			@Timeline002Timeline()
		</div>
	</section>
}

templ Timeline002Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Company Timeline
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Our journey from inception to innovation.
		</p>
	</div>
}

templ Timeline002Timeline() {
	<div class="relative max-w-full">
		<div class="flex items-center justify-end mb-4 text-xs text-muted-foreground md:hidden">
			<span class="flex items-center gap-1">
				Scroll to explore
				@icon.MoveHorizontal(icon.Props{
					Size: 14,
				})
			</span>
		</div>
		<div class="overflow-x-auto scrollbar-thin scrollbar-thumb-muted-foreground/20 scrollbar-track-transparent pb-8">
			<div class="relative inline-flex items-start min-w-max px-8">
				<div class="absolute top-12 left-4 right-4 h-0.5 bg-border"></div>
				<div class="flex gap-6">
					@Timeline002Item(
						"2021",
						"Q1",
						"Company Founded",
						"Started with a vision to revolutionize the industry.",
						false,
					)
					@Timeline002Item(
						"2021",
						"Q4",
						"Team Formation",
						"Assembled core team of engineers and designers.",
						false,
					)
					@Timeline002Item(
						"2022",
						"Q2",
						"Beta Release",
						"Launched private beta with 500 early access users.",
						false,
					)
					@Timeline002Item(
						"2022",
						"Q4",
						"Series A Funding",
						"Secured $15M in Series A funding from top-tier investors.",
						false,
					)
					@Timeline002Item(
						"2023",
						"Q2",
						"Product Launch",
						"Released our flagship product to market with immediate success.",
						false,
					)
					@Timeline002Item(
						"2023",
						"Q4",
						"1 Million Users",
						"Celebrated reaching 1 million active users worldwide.",
						true,
					)
					@Timeline002Item(
						"2024",
						"Q1",
						"Series B Funding",
						"Raised $50M to accelerate product development and market expansion.",
						true,
					)
					@Timeline002Item(
						"2024",
						"Q3",
						"Global Expansion",
						"Launched operations in 15 new countries across Europe and Asia.",
						true,
					)
				</div>
			</div>
		</div>
	</div>
}

templ Timeline002Item(year string, quarter string, title string, description string, isHighlight bool) {
	<div class="relative flex flex-col items-center text-center w-56 flex-shrink-0">
		<div class="mb-6">
			<div class="text-sm font-medium">{ year }</div>
			<div class="text-xs text-muted-foreground">{ quarter }</div>
		</div>
		<div class="relative">
			if isHighlight {
				<div class="w-4 h-4 rounded-full border-2 border-primary bg-primary">
					<div class="absolute inset-0 w-4 h-4 rounded-full bg-primary animate-ping"></div>
				</div>
			} else {
				<div class="w-4 h-4 rounded-full border-2 border-muted-foreground bg-background"></div>
			}
		</div>
		<div class="mt-6 w-full">
			if isHighlight {
				@card.Card(card.Props{
					Class: "border-primary/30 bg-primary/5",
				}) {
					@card.Content(card.ContentProps{
						Class: "p-3",
					}) {
						<h3 class="font-semibold mb-1 text-sm">{ title }</h3>
						<p class="text-xs text-muted-foreground line-clamp-2">{ description }</p>
					}
				}
			} else {
				@card.Card() {
					@card.Content(card.ContentProps{
						Class: "p-3",
					}) {
						<h3 class="font-semibold mb-1 text-sm">{ title }</h3>
						<p class="text-xs text-muted-foreground line-clamp-2">{ description }</p>
					}
				}
			}
		</div>
	</div>
}
```

### timeline_003.templ

**Path:** `timeline/timeline_003.templ`

```templ
package timeline

import (
	"github.com/templui/templui-pro/internal/ui/components/badge"
	"github.com/templui/templui-pro/internal/ui/components/card"
	"github.com/templui/templui-pro/internal/ui/components/icon"
)

templ Timeline003() {
	<section class="w-full py-12 md:py-16 lg:py-20">
		<div class="container mx-auto px-4 md:px-6">
			@Timeline003Header()
			@Timeline003Milestones()
		</div>
	</section>
}

templ Timeline003Header() {
	<div class="text-center mb-12">
		<h2 class="text-3xl md:text-4xl font-bold tracking-tight mb-4">
			Project Milestones
		</h2>
		<p class="text-muted-foreground text-lg max-w-2xl mx-auto">
			Track our progress as we work towards delivering exceptional results for your project.
		</p>
	</div>
}

templ Timeline003Milestones() {
	<div class="max-w-5xl mx-auto">
		<div class="grid gap-6 md:gap-8">
			@Timeline003Milestone(
				"Planning & Research",
				"Define project scope, requirements, and create detailed roadmap",
				"completed",
				icon.File,
				"Jan 15, 2024",
				"100%",
			)
			@Timeline003Milestone(
				"Design & Prototyping",
				"Create wireframes, mockups, and interactive prototypes",
				"completed",
				icon.Palette,
				"Feb 28, 2024",
				"100%",
			)
			@Timeline003Milestone(
				"Development Phase",
				"Build core features and implement functionality",
				"in-progress",
				icon.Code,
				"In Progress",
				"65%",
			)
			@Timeline003Milestone(
				"Testing & QA",
				"Comprehensive testing and quality assurance",
				"upcoming",
				icon.Shield,
				"Planned",
				"0%",
			)
			@Timeline003Milestone(
				"Deployment & Launch",
				"Deploy to production and official launch",
				"upcoming",
				icon.Rocket,
				"Q2 2024",
				"0%",
			)
		</div>
	</div>
}

templ Timeline003Milestone(title string, description string, status string, iconFunc func(...icon.Props) templ.Component, date string, progress string) {
	<div class="relative flex gap-4 md:gap-6">
		<!-- Icon Column -->
		<div class="flex flex-col items-center">
			if status == "completed" {
				<div class="w-12 h-12 md:w-14 md:h-14 rounded-full flex items-center justify-center relative z-10 bg-primary text-primary-foreground">
					@iconFunc(icon.Props{
						Size: 20,
					})
				</div>
			} else if status == "in-progress" {
				<div class="w-12 h-12 md:w-14 md:h-14 rounded-full flex items-center justify-center relative z-10 bg-primary/20 text-primary animate-pulse">
					@iconFunc(icon.Props{
						Size: 20,
					})
				</div>
			} else {
				<div class="w-12 h-12 md:w-14 md:h-14 rounded-full flex items-center justify-center relative z-10 bg-muted text-muted-foreground">
					@iconFunc(icon.Props{
						Size: 20,
					})
				</div>
			}
			<!-- Connecting Line -->
			<div class="flex-1 w-px bg-border mt-2"></div>
		</div>
		<!-- Content -->
		<div class="flex-1 pb-8">
			@card.Card() {
				@card.Content() {
					<div class="flex flex-col md:flex-row md:items-start md:justify-between gap-3 mb-3">
						<div class="flex-1">
							<h3 class="text-base md:text-lg font-semibold mb-1">{ title }</h3>
							<p class="text-xs md:text-sm text-muted-foreground">{ description }</p>
						</div>
						<div class="flex-shrink-0">
							@Timeline003Status(status)
						</div>
					</div>
					<div class="flex flex-col md:flex-row md:items-center md:justify-between gap-3 mt-4">
						<div class="flex items-center gap-2 text-xs md:text-sm text-muted-foreground">
							@icon.Calendar(icon.Props{
								Size: 14,
							})
							<span>{ date }</span>
						</div>
						<div class="flex flex-col md:flex-row md:items-center gap-2 w-full md:w-auto">
							<span class="text-xs md:text-sm font-medium">{ progress }</span>
							@Timeline003Progress(progress, status)
						</div>
					</div>
				}
			}
		</div>
	</div>
}

templ Timeline003Status(status string) {
	switch status {
		case "completed":
			@badge.Badge(badge.Props{
				Variant: badge.VariantDefault,
			}) {
				<span class="flex items-center gap-1">
					@icon.Check(icon.Props{
						Size: 12,
					})
					Completed
				</span>
			}
		case "in-progress":
			@badge.Badge(badge.Props{
				Variant: badge.VariantSecondary,
			}) {
				<span class="flex items-center gap-1">
					@icon.Clock(icon.Props{
						Size: 12,
					})
					In Progress
				</span>
			}
		case "upcoming":
			@badge.Badge(badge.Props{
				Variant: badge.VariantOutline,
			}) {
				<span class="flex items-center gap-1">
					@icon.Calendar(icon.Props{
						Size: 12,
					})
					Upcoming
				</span>
			}
	}
}

templ Timeline003Progress(progress string, status string) {
	<div class="w-full md:w-24 h-2 bg-muted rounded-full overflow-hidden">
		if status == "completed" {
			<div class="h-full transition-all bg-primary" style={ "width: " + progress }></div>
		} else if status == "in-progress" {
			<div class="h-full transition-all bg-primary/60" style={ "width: " + progress }></div>
		} else {
			<div class="h-full transition-all bg-muted-foreground/20" style={ "width: " + progress }></div>
		}
	</div>
}
```

